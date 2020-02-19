class User {
    let id = "123"
}

protocol ServerProtocol {
    func grandAccess(user: User)
    func denyAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grandAccess(user: User) {
        print("access granted to user with id = \(user.id)")
    }
    
    func denyAccess(user: User) {
        print("access denied to user with id = \(user.id)")
    }
}

class ServerProxy: ServerProtocol {
    
    lazy private var server: ServerSide = ServerSide()
    
    func grandAccess(user: User) {
        server.grandAccess(user: user)
    }
    
    func denyAccess(user: User) {
        server.denyAccess(user: user)
    }
}

let user = User()
let proxy = ServerProxy()
proxy.grandAccess(user: user)
proxy.denyAccess(user: user)
