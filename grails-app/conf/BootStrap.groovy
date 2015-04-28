class BootStrap {

    def grailsNavigation
    def crmAccountService
    def crmSecurityService
    def crmContentService
    def crmContentImportService

    def init = { servletContext ->

        // Add some items to the main horizontal menu
        grailsNavigation.registerNavigation({
            main {
                crmFolder controller: 'crmFolder', action: 'list', title: 'crmContent.index.label', order: 20
            }
        });

        def admin = crmSecurityService.createUser([username: "admin", password: "admin",
                email: "firstname.lastname@email.com", name: "Site Admin", enabled: true])

        crmSecurityService.addPermissionAlias("permission.all", ["*:*"])

        crmSecurityService.runAs(admin.username) {
            def account = crmAccountService.createAccount([status: "active"], [:])
            def tenant = crmSecurityService.createTenant(account, "Website")
            crmSecurityService.runAs(admin.username, tenant.id) {
                crmSecurityService.addPermissionToUser("permission.all")

                def root = crmContentService.createFolder(null, "website", "Web site content", "", "")
                crmContentService.createFolder(root, "images", "Web site images", "", "")
                crmContentService.createFolder(root, "pages", "Web pages", "", "")

                crmContentImportService.importFiles("templates/crm", "admin")
            }
        }
    }

    def destroy = {
    }
}
