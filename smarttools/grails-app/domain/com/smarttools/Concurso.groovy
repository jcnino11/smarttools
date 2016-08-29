package com.smarttools

import java.util.Date
import groovy.transform.ToString

@ToString(includes='nombre',includeNames=false, includePackage=false)
class Concurso {

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
		url blank: false, unique: true, url: true
		fechaInicio nulable: false, min: new Date()
		fechaFin nullable: false, validator: {return fechaInicio.before(fechaFin)}
		descripcionPremio size:0..400
    }
}
