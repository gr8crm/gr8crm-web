grails.servlet.version = "3.0"
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

// uncomment (and adjust settings) to fork the JVM to isolate classpaths
//grails.project.fork = [
//   run: [maxMemory:1024, minMemory:64, debug:false, maxPerm:256]
//]

grails.project.dependency.resolution = {
    inherits("global")
    log "warn"
    checksums true
    legacyResolve false

    repositories {
        inherits true
        grailsCentral()
        mavenRepo "http://repo.grails.org/grails/repo/"
        mavenCentral()
    }

    dependencies {
    }

    plugins {
        build ":tomcat:$grailsVersion"
        runtime ":hibernate:$grailsVersion"

        compile ":jquery:1.10.2"
        compile ":resources:1.2.7"
        compile ":twitter-bootstrap:2.3.2"
        compile ":less-resources:1.3.3.2"

        compile ':cache:1.1.1'

        compile ":crm-security-shiro:2.0.0"
        compile ":crm-i18n:2.0.0"
        compile ":crm-content:2.0.2"
        compile ":crm-content-ui:2.0.1"
    }
}
