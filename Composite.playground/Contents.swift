protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var level: Int { get }
}

class Manager: Coworker {
    private var coworkers = [Coworker]()
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    
    func getInfo() {
        print(self.level.description + " level manager")
        for coworker in coworkers {
            coworker.getInfo()
        }
    }
}

class LowLevelManager: Coworker {
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        print("can't hire")
    }
    
    func getInfo() {
        print(self.level.description + " level manager")
    }
}

let topManager = Manager(level: 1)
let managerLevel2 = Manager(level: 2)
let managerLevel3_1 = Manager(level: 3)
let managerLevel3_2 = Manager(level: 3)
let managerLevel10 = Manager(level: 10)

topManager.hire(coworker: managerLevel2)
managerLevel2.hire(coworker: managerLevel3_1)
managerLevel2.hire(coworker: managerLevel3_2)
managerLevel3_1.hire(coworker: managerLevel10)
topManager.getInfo()
