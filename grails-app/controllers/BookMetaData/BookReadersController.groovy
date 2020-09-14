package BookMetaData

import com.amazonaws.util.json.JSONObject
import grails.converters.deep.JSON
import org.json.simple.JSONObject

class BookReadersController {
    
    static allowedMethods = [saveUser: "POST", update: "POST", delete: "POST"]

    def index() { }
    
    def readBook(){
        params.bookId
        params.email
        
        def oui = BooksProfile.findByOldUserList()
        if(!oui){
            newUserList.add(params.email)
            [newUserList:newUserList]
        }else{
            print "user has already read the book"
        }
        
    }
    
    def getCurrentBookActiveCount(){
        def count = BooksProfile.findByBookId()
        def resCount = new JSONObject(activeUsers.newUserList);
        render ([status:1,message:'success',data: resCount] as JSON)
        [count:count]
    }
    
    def getCurrentBookActiveUsers(){
        def activeUsers = BooksProfile.findByBookId(params.bookId)
        def resUser = new JSONObject(activeUsers.newUserList);
        render ([status:1,message:'success',data: resUser] as JSON)
    }
    
    def getOldBookUsers(){
        
    }
}
