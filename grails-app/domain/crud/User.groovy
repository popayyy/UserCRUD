package crud

class User {

    String name
    String login
    String password

//    static hasMany = [roles: Role]

    static constraints = {
        name blank: false
        login blank: false
        password blank: false
    }
}
