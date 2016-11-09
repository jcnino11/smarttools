package com.smarttools

import java.util.Date
import groovy.transform.ToString

@ToString(includes='nombre',includeNames=false, includePackage=false)
class Concurso {

	static hasMany = [videos:Video]

	Persona administrador
	String nombre
	byte[] banner
	String url
	Date fechaInicio
	Date fechaFin
	String descripcionPremio

    static constraints = {
		administrador nullable: false
		nombre blank: false
		banner maxSize: 1024 * 1024 * 2
		url blank: false, unique: true
		fechaInicio nulable: false
		fechaFin nullable: false, validator: { val, obj -> return obj.fechaInicio.before(val)}
		descripcionPremio size:0..400
    }
}
