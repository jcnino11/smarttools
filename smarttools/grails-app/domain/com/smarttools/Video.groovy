package com.smarttools

import groovy.transform.ToString

@ToString(includes='mensajeProducto',includeNames=false, includePackage=false)
class Video {

	Persona cliente
	Date fechaCreacion
	String estado
	byte[] archivoOriginal
	byte[] archivoConvertido
	String mensajeProducto

    static constraints = {
		cliente nullable: false
		fechaCreacion min: new Date()
		estado blank: false, inList: ['En proceso','Convertido']
		archivoOriginal maxSize: 1024 * 1024 * 20
		archivoConvertido maxSize: 1024 * 1024 * 20
		mensajeProducto blank:false,  size:0..400
    }
}
