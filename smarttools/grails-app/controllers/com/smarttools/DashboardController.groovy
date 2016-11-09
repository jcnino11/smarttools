package com.smarttools

import java.util.List
import java.util.ArrayList
import java.util.Map
import java.util.LinkedHashMap

class DashboardController {

	def redisService
	def springSecurityService
	def userCache

	def index() {		
//		redisService.foo = "bar"
//		assert "bar" == redisService.foo
//		
//		redisService.sadd("months", "february")
//		assert true == redisService.sismember("months", "february")

		def personas = Persona.list()
		def concursos = Concurso.list()
		def videos = Video.list(sort: "fechaCreacion")

		def dashboardInstance = new DashboardDto()
		dashboardInstance.usuariosCreados = personas.size()
		dashboardInstance.concursosCreados = concursos.size()
		dashboardInstance.videosSubidos = videos.size()
		dashboardInstance.videosPorFecha = new LinkedHashMap<Date,Integer>()
		dashboardInstance.videosPorConcurso = new LinkedHashMap<String,Integer>()
		def cantidad
		def fechaDia
		for (Video video:videos){
			fechaDia = FechaUtil.truncarFecha(video.fechaCreacion)
			cantidad = dashboardInstance.videosPorFecha.get(fechaDia)
			if (cantidad){
				dashboardInstance.videosPorFecha.put(fechaDia, cantidad+1)
			}else{
				dashboardInstance.videosPorFecha.put(fechaDia, 1)
			}

			cantidad = dashboardInstance.videosPorConcurso.get(video.concurso.nombre)
			if (cantidad){
				cantidad ++
			}else{
				dashboardInstance.videosPorConcurso.put(video.concurso.nombre, 1)
			}
		}

		dashboardInstance.perfilesTop = new ArrayList<Persona>()
		for(Persona persona: personas){
			dashboardInstance.perfilesTop.add(persona)
			if(dashboardInstance.perfilesTop.size() == 10){
				break
			}
		}

		dashboardInstance.infoConcursos = new ArrayList<Concurso>()
		for(Concurso concurso: concursos){
			dashboardInstance.infoConcursos.add(concurso)
			if(dashboardInstance.infoConcursos.size() == 10){
				break
			}
		}

		render(view: "index", model:[dashboardInstance:dashboardInstance])
	}
}
