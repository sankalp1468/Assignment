package BookMetaData

import org.springframework.dao.DataIntegrityViolationException

class BooksProfileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {

    }

    def create() {
        [booksProfileInstance: new BooksProfile(params)]
    }

    def saveBook() {
        def booksProfileInstance = new BooksProfile(params)
        if (!booksProfileInstance.save(flush: true)) {
            render(view: "create", model: [booksProfileInstance: booksProfileInstance])
            return
        }
        redirect(action: "show", id: booksProfileInstance.id)
    }

    def show(Long id) {
        def booksProfileInstance = BooksProfile.get(id)
        if (!booksProfileInstance) {
            redirect(action: "list")
            return
        }
        [booksProfileInstance: booksProfileInstance]
    }

    def edit(Long id) {
        def booksProfileInstance = BooksProfile.get(id)
        if (!booksProfileInstance) {
            redirect(action: "list")
            return
        }

        [booksProfileInstance: booksProfileInstance]
    }

    def update(Long id, Long version) {
        def booksProfileInstance = BooksProfile.get(id)
        if (!booksProfileInstance) {

        }
    }

    def delete(Long id) {
        def booksProfileInstance = BooksProfile.get(id)
        if (!booksProfileInstance) {

        }
        try {
            booksProfileInstance.delete(flush: true)
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            redirect(action: "show", id: id)
        }
    }
}
