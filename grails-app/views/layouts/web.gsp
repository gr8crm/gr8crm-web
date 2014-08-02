<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title><g:layoutTitle
            default="GR8 CRM - Web Site Demo"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
          content="GR8 CRM - Web Site Demo"/>
    <meta name="author" content="Technipelago AB"/>
    <meta name="copyright" content="(c) Copyright 2014 Technipelago AB, All rights reserved"/>
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">

    <r:require modules="application, crm"/>

    <r:script>

        $(document).ajaxError(function(e, xhr, settings, exception) {
            if (xhr.status == 403) {
                window.location.href = "${createLink(mapping: 'home', absolute: true)}";
            } else if (xhr.status == 404) {
                alert('Requested URL not found.');
            } else if (xhr.status == 500) {
                alert('Error.\nInternal server error.');
            } else if (errStatus == 'parsererror') {
                alert('Error.\nParsing JSON Request failed.');
            } else if (errStatus == 'timeout') {
                alert('Request timed out.\nPlease try later');
            } else {
                alert('Unknown Error.');
            }
        });
    </r:script>
    <r:layoutResources/>
    <g:layoutHead/>
    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
          <script src="${resource(plugin: 'crm-ui-bootstrap', dir: 'js', file: 'html5.js')}"></script>
    <![endif]-->
</head>

<body class="${controllerName ?: 'home'}-body">

<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <div class="nav-collapse collapse">
                <g:render template="/menu"/>
            </div>
        </div>
    </div>
</div>


<div class="container controller-${controllerName ?: 'home'} action-${actionName ?: 'index'}" id="content-wrapper"
     role="main">
    <g:layoutBody/>
</div>

<div id="footer-wrapper">
    <g:render template="/footer"/>
</div>

<div id="spinner" class="spinner" style="display:none;"><g:img dir="images" file="spinner.gif"
                                                               alt="${message(code: 'spinner.alt', default: 'Loading&hellip;')}"/></div>

<r:layoutResources/>
<g:render template="/google_analytics"/>

</body>
</html>
