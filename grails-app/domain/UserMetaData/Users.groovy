package UserMetaData

class Users {
    String name
    String email
    String password
    Date createdOn
    String apiAccessToken
    String userLogs
    String userPref
    static constraints = {
        apiAccessToken nullable: true, maxSize: 255, unique: true
        name(nullable: true)
        email(nullable: true)
        password(nullable: true)
        createdOn(nullable: true)
        apiAccessToken(nullable: true)    
        userLogs(nullable: true) 
        userPref(nullable: true) 
    }
}
