<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.crm.content.cms.layout ?: 'main'}"/>
</head>

<body>

<crm:render template="${(grailsApplication.config.crm.content.cms.path ?: 'pages') + (uri ?: 'index.html')}"
            extensions="${grailsApplication.config.crm.content.cms.extensions}">

    <div class="hero-unit">
        <h1>Oops!</h1>

        <h2>We cannot find the page.</h2>

        <h3>The site is under construction, please don't be mad. We'll fix it soon.</h3>

        <p>&raquo; <a
                href="mailto:info@mycompany.com?subject=Page%20${uri.encodeAsIsoURL()}%20not%20found">Report missing link</a>
        </p>
    </div>
    <% response.setStatus(404) %>
</crm:render>

</body>
</html>