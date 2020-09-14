package BookMetaData



import org.junit.*
import grails.test.mixin.*

@TestFor(BooksProfileController)
@Mock(BooksProfile)
class BooksProfileControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/booksProfile/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.booksProfileInstanceList.size() == 0
        assert model.booksProfileInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.booksProfileInstance != null
    }

    void testSave() {
        controller.save()

        assert model.booksProfileInstance != null
        assert view == '/booksProfile/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/booksProfile/show/1'
        assert controller.flash.message != null
        assert BooksProfile.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/booksProfile/list'

        populateValidParams(params)
        def booksProfile = new BooksProfile(params)

        assert booksProfile.save() != null

        params.id = booksProfile.id

        def model = controller.show()

        assert model.booksProfileInstance == booksProfile
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/booksProfile/list'

        populateValidParams(params)
        def booksProfile = new BooksProfile(params)

        assert booksProfile.save() != null

        params.id = booksProfile.id

        def model = controller.edit()

        assert model.booksProfileInstance == booksProfile
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/booksProfile/list'

        response.reset()

        populateValidParams(params)
        def booksProfile = new BooksProfile(params)

        assert booksProfile.save() != null

        // test invalid parameters in update
        params.id = booksProfile.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/booksProfile/edit"
        assert model.booksProfileInstance != null

        booksProfile.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/booksProfile/show/$booksProfile.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        booksProfile.clearErrors()

        populateValidParams(params)
        params.id = booksProfile.id
        params.version = -1
        controller.update()

        assert view == "/booksProfile/edit"
        assert model.booksProfileInstance != null
        assert model.booksProfileInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/booksProfile/list'

        response.reset()

        populateValidParams(params)
        def booksProfile = new BooksProfile(params)

        assert booksProfile.save() != null
        assert BooksProfile.count() == 1

        params.id = booksProfile.id

        controller.delete()

        assert BooksProfile.count() == 0
        assert BooksProfile.get(booksProfile.id) == null
        assert response.redirectedUrl == '/booksProfile/list'
    }
}
