package crud

class Role {

    String name
    String description

//    static belongsTo = [user: User]

    static constraints = {
        name blank: false
        description blank: false
    }
}
