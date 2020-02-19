//class User {
//    let id = "123"
//}
//
//protocol ServerProtocol {
//    func grandAccess(user: User)
//    func denyAccess(user: User)
//}
//
//class ServerSide: ServerProtocol {
//    func grandAccess(user: User) {
//        print("access granted to user with id = \(user.id)")
//    }
//
//    func denyAccess(user: User) {
//        print("access denied to user with id = \(user.id)")
//    }
//}
//
//class ServerProxy: ServerProtocol {
//
//    lazy private var server: ServerSide = ServerSide()
//
//    func grandAccess(user: User) {
//        server.grandAccess(user: user)
//    }
//
//    func denyAccess(user: User) {
//        server.denyAccess(user: user)
//    }
//}
//
//let user = User()
//let proxy = ServerProxy()
//proxy.grandAccess(user: user)
//proxy.denyAccess(user: user)

class User {
    let name = "Peter"
    let password = "123"
}

protocol ServerProtocol {
    func grandAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grandAccess(user: User) {
        print("access granted to user with id = \(user.name)")
    }
}

class ServerProxy: ServerProtocol {
    private var server: ServerSide!
    func grandAccess(user: User) {
        guard server != nil else {
            print("access can't be granted")
            return
        }
        server.grandAccess(user: user)
    }
    func authenticate(user: User) {
        guard user.password == "123" else { return }
        print("User authenticated!")
        server = ServerSide()
    }
}

let user = User()
let proxy = ServerProxy()
proxy.grandAccess(user: user)
proxy.authenticate(user: user)
proxy.grandAccess(user: user)