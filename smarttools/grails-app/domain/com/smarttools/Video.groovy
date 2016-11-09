package com.smarttools

import groovy.transform.ToString

@ToString(includeNames=false, includePackage=false)
class Video {
	
	private static final Date NULL_DATE = new Date(0)

	static belongsTo = [concurso:Concurso]
	
	Persona cliente
	Date fechaCreacion = NULL_DATE
	String estado = 'En proceso'
	String archivoOriginal
	String archivoConvertido
	String mensajeProducto

    static constraints = {
		cliente nullable: false
		estado blank: false, inList: ['En proceso','Convertido']
		archivoOriginal nullable:true
		archivoConvertido nullable:true
		mensajeProducto blank:false
    }
	
	def beforeInsert() {
		if (fechaCreacion == NULL_DATE) {
		   fechaCreacion = new Date()
		}
	 }
}
