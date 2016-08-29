package com.smarttools



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ConcursoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Concurso.list(params), model:[concursoInstanceCount: Concurso.count()]
    }

    def show(Concurso concursoInstance) {
        respond concursoInstance
    }

    def create() {
        respond new Concurso(params)
    }

    @Transactional
    def save(Concurso concursoInstance) {
        if (concursoInstance == null) {
            notFound()
            return
        }

        if (concursoInstance.hasErrors()) {
            respond concursoInstance.errors, view:'create'
            return
        }

        concursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'concurso.label', default: 'Concurso'), concursoInstance.id])
                redirect concursoInstance
            }
            '*' { respond concursoInstance, [status: CREATED] }
        }
    }

    def edit(Concurso concursoInstance) {
        respond concursoInstance
    }

    @Transactional
    def update(Concurso concursoInstance) {
        if (concursoInstance == null) {
            notFound()
            return
        }

        if (concursoInstance.hasErrors()) {
            respond concursoInstance.errors, view:'edit'
            return
        }

        concursoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Concurso.label', default: 'Concurso'), concursoInstance.id])
                redirect concursoInstance
            }
            '*'{ respond concursoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Concurso concursoInstance) {

        if (concursoInstance == null) {
            notFound()
            return
        }

        concursoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Concurso.label', default: 'Concurso'), concursoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'concurso.label', default: 'Concurso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
