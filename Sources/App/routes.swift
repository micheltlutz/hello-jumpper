import Vapor
import Leaf
import jumpper

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", [
            "title": ":: Hello jumpper",
            "body": H1("Hello jumpper").getString()
        ])

    }
}


// MARK: - HelloView

struct HelloView {
    func main() -> GenericElement {
        let h1 = H1("Hello jumpper")

        return h1
    }
}
