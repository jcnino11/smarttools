import com.smarttools.Constantes;
import com.smarttools.EnumParametro;
import com.smarttools.Parametro
import com.smarttools.Requestmap
import com.smarttools.Rol
import com.smarttools.ArchivoUtil

class BootStrap {

    def init = { servletContext ->
		javax.servlet.http.HttpServletRequest.metaClass.getSiteUrl = {
			return (delegate.scheme + "://" + delegate.serverName + ":" + delegate.serverPort + delegate.getContextPath())
		}
		
		for (param in Parametro.list()){
			param.delete()
		}
		
		if (!Requestmap.findByConfigAttribute('IS_AUTHENTICATED_ANONYMOUSLY')){
			new Requestmap(configAttribute:'IS_AUTHENTICATED_ANONYMOUSLY', url:'/**').save()
		}
		
		if (!Requestmap.findByUrl('/concurso/create')){
			new Requestmap(configAttribute:'ROLE_ADMIN',url:'/concurso/create').save()
			new Requestmap(configAttribute:'ROLE_ADMIN',url:'/concurso/edit').save()
		}
		
		if(!Rol.findByAuthority('ROLE_ADMIN')){
			new Rol('ROLE_ADMIN').save();
		}
		
		if(!Parametro.findByCodigo(EnumParametro.RUTA_ORIGINALES)){
			new Parametro(codigo:EnumParametro.RUTA_ORIGINALES, valor: ArchivoUtil.RUTA_CARGUES_IN).save()
		}
		
		if(!Parametro.findByCodigo(EnumParametro.RUTA_PROCESADOS)){
			new Parametro(codigo:EnumParametro.RUTA_PROCESADOS, valor: ArchivoUtil.RUTA_CARGUES_OUT).save()
		}
		
		if(!Parametro.findByCodigo(EnumParametro.URL_BASE_CLOUD_FRONT)){
			new Parametro(codigo:EnumParametro.URL_BASE_CLOUD_FRONT, valor: Constantes.URL_BASE_CLOUD_FRONT).save()
		}
		
		def cargueIn = new File(Parametro.findByCodigo(EnumParametro.RUTA_ORIGINALES).valor)
		def cargueOut = new File(Parametro.findByCodigo(EnumParametro.RUTA_PROCESADOS).valor)
		if(!cargueIn.exists()){
			cargueIn.mkdirs()
			cargueOut.mkdirs()
		}
    }
	
    def destroy = {
    }
}
