import Foundation

protocol Subject {
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notify(withString: String)
}

class Teacher: Subject {
    
    var observerCollection = NSMutableSet()
    var homeTask = "" {
        didSet{
            notify(withString: homeTask)
        }
    }
    
    func add(observer: PropertyObserver) {
        observerCollection.add(observer)
    }
    
    func remove(observer: PropertyObserver) {
        observerCollection.remove(observer)
    }
    
    func notify(withString string: String) {
        for observer in observerCollection {
            (observer as! PropertyObserver).didGet(new: string)
        }
    }
    
    
}

protocol PropertyObserver {
    func didGet(new task: String)
}

class Pupil: NSObject, PropertyObserver {
    var homeTask = ""
    func didGet(new task: String) {
        homeTask = task
        print("new homework to be done!")
    }
}

let teacher = Teacher()
let pupil = Pupil()

teacher.add(observer: pupil)
teacher.homeTask = "study swift"
pupil.homeTask
