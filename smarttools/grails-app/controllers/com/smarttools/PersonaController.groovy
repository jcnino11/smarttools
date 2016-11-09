package com.smarttools



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PersonaController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Persona.list(params), model:[personaInstanceCount: Persona.count()]
	}

	def show(Persona personaInstance) {
		respond personaInstance
	}

	def create() {
		respond new Persona(params)
	}

	@Transactional
	def save(Persona personaInstance) {
		if (personaInstance == null) {
			notFound()
			return
		}

		if (personaInstance.hasErrors()) {
			respond personaInstance.errors, view:'create'
			return
		}
		
		if (!personaInstance.password.equals(params.repassword)){
			personaInstance.errors.rejectValue(
				'password',
				'password.repassword.nomatch')
			respond personaInstance.errors, view:'create'
			return
		}

		personaInstance.save flush:true
		
		new UsuarioRol(personaInstance, Rol.findByAuthority('ROLE_ADMIN')).save(flush:true)

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'persona.label', default: 'Persona'), personaInstance.id])
				redirect personaInstance
			}
			'*' { respond personaInstance, [status: CREATED] }
		}
	}

	def edit(Persona personaInstance) {
		respond personaInstance
	}

	@Transactional
	def update(Persona personaInstance) {
		if (personaInstance == null) {
			notFound()
			return
		}

		if (personaInstance.hasErrors()) {
			respond personaInstance.errors, view:'edit'
			return
		}

		personaInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Persona.label', default: 'Persona'), personaInstance.id])
				redirect personaInstance
			}
			'*'{ respond personaInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Persona personaInstance) {

		if (personaInstance == null) {
			notFound()
			return
		}

		personaInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Persona.label', default: 'Persona'), personaInstance.id])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'persona.label', default: 'Persona'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
