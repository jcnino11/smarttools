package com.smarttools

import groovy.transform.ToString

@ToString(includeNames=false, includePackage=false)
class Persona extends Usuario{

	static hasMany = [concursos:Concurso, videos:Video]

	String nombres
	String apellidos

    static constraints = {
		nombres blank: false
		apellidos blank: false
    }
}
