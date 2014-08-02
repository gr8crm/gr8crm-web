modules = {
    'bootstrap-responsive-less' {
        dependsOn 'bootstrap'
        resource id:'bootstrap-responsive-less', url:[plugin: 'twitter-bootstrap', dir: 'less', file: 'responsive.less'], attrs:[rel: "stylesheet/less", type:'css', order:150], disposition: 'head'
    }
    application {
        dependsOn 'bootstrap-responsive-less'
        resource url:[dir: 'less', file: 'application.less'], attrs:[rel: "stylesheet/less", type:'css', order:10], disposition: 'head'
        resource url:'js/application.js'
    }
}