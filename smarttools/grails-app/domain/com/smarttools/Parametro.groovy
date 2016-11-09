package com.smarttools

class Parametro {

	EnumParametro codigo
	String valor
	
    static constraints = {
		codigo nullable: false, blank:false
		valor nullable: false, blank:false
    }
}
