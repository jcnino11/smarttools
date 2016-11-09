class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:'dashboard')
        "403"(view:'/error_403')
        "404"(view:'/error_404')
        "500"(view:'/error_500')
		"/login/$action?"(controller: "login")
	}
}
