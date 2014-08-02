class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index.html")
        "404"(controller: "crmPageNotFound", action: "index")
        "500"(view: '/error')
    }
}
