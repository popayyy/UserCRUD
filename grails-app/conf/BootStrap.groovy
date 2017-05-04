import crud.User
import crud.Role
import crud.UserRole

class BootStrap {

    def init = { servletContext ->

        println "make initialization"
        // first initialization
        User roman = new User(name: 'Roman', login: 'popayyy', password: '12345').save(flush: true)
        User admin = new User(name: 'admin', login: 'admin', password: '12345').save(flush: true)
        User guest = new User(name: 'Guest', login: 'guest', password: '12345').save(flush: true)

        println "User.list: ${User.count()}"

        Role adminRole = new Role(name: 'ADMIN_ROLE', description: "It's main role in project").save(flush: true)
        Role guestRole = new Role(name: 'GUEST_ROLE', description: "It's guest role").save(flush: true)

        println "Role.list: ${Role.count()}"

        new UserRole(user: roman, role: adminRole).save(flush: true)
        new UserRole(user: admin, role: adminRole).save(flush: true)
        new UserRole(user: guest, role: guestRole).save(flush: true)

        println "UserRole.list: ${UserRole.count()}"
    }
    def destroy = {
    }
}
