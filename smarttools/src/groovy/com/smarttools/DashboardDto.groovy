package com.smarttools

import java.util.List
import java.util.Map
import groovy.transform.ToString

@ToString(includeNames=false, includePackage=false)
class DashboardDto {

	Integer usuariosCreados
	Integer concursosCreados
	Integer videosSubidos
	Map<Date,Integer> videosPorFecha
	List<Persona> perfilesTop
	Map<String,Integer> videosPorConcurso
	List<Concurso> infoConcursos
}
