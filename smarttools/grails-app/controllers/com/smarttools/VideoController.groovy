package com.smarttools

import static org.springframework.http.HttpStatus.*

import java.nio.file.Path;
import java.nio.file.Paths;
import grails.transaction.Transactional
import com.amazonaws.services.s3.model.*
import com.amazonaws.services.sqs.model.SendMessageRequest
import com.amazonaws.*

import org.springframework.web.multipart.commons.CommonsMultipartFile

@Transactional(readOnly = true)
class VideoController {
	
	def grailsApplication
	def springSecurityService
	def amazonWebService
	String queueUrl = "https://sqs.us-east-1.amazonaws.com/266824757963/convert"

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		if (!springSecurityService.isLoggedIn()) {
			respond Video.findAllByEstado('Convertido',params), model:[videoInstanceCount: Video.count()]
		}else{
			respond Video.listOrderByFechaCreacion(params), model:[videoInstanceCount: Video.count()]
		}
    }

    def show(Video videoInstance) {
	
        respond videoInstance
    }

    def create() {
        respond new Video(params)
    }

    @Transactional
    def save(Video videoInstance) {
		def CommonsMultipartFile file = params.archivoOriginalF
		def fileName = file.originalFilename
		
		println fileName
		
//		def temDir = Parametro.findByCodigo(EnumParametro.RUTA_ORIGINALES).valor + FechaUtil.obtenerTimestamp() + fileName.substring(fileName.lastIndexOf("."))
		def temDir = Parametro.findByCodigo(EnumParametro.RUTA_ORIGINALES).valor + fileName 
		videoInstance.archivoOriginal = temDir
		
		
		
//		Path p = Paths.get(videoInstance.archivoOriginal);
//		String fileName = p.getFileName().toString()
//		videoInstance.archivoOriginal = temDir.concat(fileName)
		
		def archivo = new File(videoInstance.archivoOriginal)
		file.transferTo(archivo)
		archivo.createNewFile()
		
		println "Archivo path " + archivo.absolutePath
		
		def rutaS3 = 'videos/'.concat(archivo.getName())
		amazonWebService.s3.putObject(new PutObjectRequest('smarttoolsuniandes', rutaS3, new File(archivo.absolutePath)).withCannedAcl(CannedAccessControlList.PublicRead))
		amazonWebService.sqs.sendMessage(new SendMessageRequest(queueUrl, rutaS3))
		videoInstance.setArchivoOriginal(rutaS3)
		archivo.delete();
		
        if (videoInstance == null) {
            notFound()
            return
        }
		
		def persona = Persona.findByUsername(videoInstance.cliente.username)
		
		if(persona){
			persona.nombres = videoInstance.cliente.nombres
			persona.apellidos = videoInstance.cliente.apellidos
			videoInstance.cliente = persona
			videoInstance.cliente.save()
			
			if (!UsuarioRol.exists(videoInstance.cliente.id, 2)){
				UsuarioRol.create(videoInstance.cliente , Rol.get(2))
			}
		}else{
			videoInstance.cliente = new Persona(params.cliente)
			println 'videoInstance:' << videoInstance.cliente
			videoInstance.cliente.password = '1234567890'
			videoInstance.cliente.save()
			UsuarioRol.create(videoInstance.cliente , Rol.get(2))
		}
		
		println videoInstance.archivoOriginal

        if (videoInstance.hasErrors()) {
            respond videoInstance.errors, view:'create'
            return
        }
		
        videoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'video.create.message')
                redirect action:'create'
            }
            '*' { respond videoInstance, [status: CREATED] }
        }
    }

    def edit(Video videoInstance) {
        respond videoInstance
    }

    @Transactional
    def update(Video videoInstance) {
        if (videoInstance == null) {
            notFound()
            return
        }

        if (videoInstance.hasErrors()) {
            respond videoInstance.errors, view:'edit'
            return
        }

        videoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Video.label', default: 'Video'), videoInstance.id])
                redirect videoInstance
            }
            '*'{ respond videoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Video videoInstance) {

        if (videoInstance == null) {
            notFound()
            return
        }

        videoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Video.label', default: 'Video'), videoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'video.label', default: 'Video'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}