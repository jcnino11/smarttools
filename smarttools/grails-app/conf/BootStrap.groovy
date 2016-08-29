import com.smarttools.Requestmap

class BootStrap {

    def init = { servletContext ->
		new Requestmap(url: '/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save()
    }
	
    def destroy = {
    }
}
