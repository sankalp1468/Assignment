package BookMetaData

import UserMetaData.Users

class BooksProfile {

    String bookName
    Long bookId
    Date dateAddedOn
    String bookDescription
    Users userId
    Long currentReadersCount
    String[] oldUserList
    String[] ccurrentUserList
    static constraints = {
        bookDescription nullable: true, maxSize: 255, unique: true
        bookName(nullable: true)
        bookId(nullable: true)
        dateAddedOn(nullable: true)
        userId(nullable: true)
    }
}
