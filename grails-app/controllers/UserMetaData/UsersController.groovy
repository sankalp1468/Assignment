package UserMetaData

import grails.converters.JSON
import org.json.simple.JSONObject
import groovy.json.JsonSlurper

import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.dao.DataIntegrityViolationException

class UsersController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def show(Long id) {
        def usersInstance = Users.get(id)
        if (!usersInstance) {
            print "User doen't exist"
        }

        [usersInstance: usersInstance]
    }

    def edit(Long id) {
        def usersInstance = Users.get(id)
        if (!usersInstance) {
            print "User doen't exist"
        }
        [usersInstance: usersInstance]
    }

    def update(Long id, Long version) {
        def usersInstance = Users.get(id)
        if (!usersInstance) {
            print "User doen't exist"
        }
    }

    def delete(Long id) {
        def usersInstance = Users.get(id)
    }
    
    def saveUser(){
        Users usrObj = new Users();
        usrObj.email = params.userName;
        usrObj.password = params.password;
        usrObj.createdOn = new Date()
        def apiAccessToken = UUID.randomUUID().toString()+new Date().getTime()
        def tokenAfterOpr = apiAccessToken.split("-").join()
        usrObj.apiAccessToken = tokenAfterOpr
        if(usrObj.save(flush:true,failOnError: true)){
            print("user details saved");
            return true
        }else{
            valUser.errors.allErrors.each{
                return false;
            }
        }
    }
    
    def loginUser(){
        print params
        def usersInstance = Users.findByEmailAndPassword(params.loguserName, params.logpassword)
        print "usersInstance"+usersInstance
        if (!usersInstance) {
            print "User doen't exist"
        }else{
            print "Successful login"
            //            def res = new JSONObject(usersInstance);
            //            render ([status:1,message:'success',data: res] as JSON)
            return 1
        }
    }
    
    def test(){
        print params
    }
}
