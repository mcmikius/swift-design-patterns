
class DriveVehicle {
    
    final func startVehicle() {
        haveASeat()
        closeTheDoor()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("this method should be overriden")
    }
    
    func closeTheDoor() {
        print("if we have a door so close it")
    }
    
    func useProtection() {
        preconditionFailure("this method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("this method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("this method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("this method should be overriden")
    }
}

class Bycicle: DriveVehicle {
    override func haveASeat() {
        print("sit down on a bicycle seat")
    }
    
    override func useProtection() {
        print("wear a helmet")
    }
    
    override func lookAtTheMirror() {
        print("look at the little mirror")
    }
    
    override func turnSignal() {
        print("show left hand")
    }
    
    override func driveForward() {
        print("padal")
    }
    
}

class Car: DriveVehicle {
    override func haveASeat() {
        print("sit down on a car seat")
    }
    
    override func useProtection() {
        print("fasten seat belt")
    }
    
    override func lookAtTheMirror() {
        print("look at the review mirror")
    }
    
    override func turnSignal() {
        print("turn on left turn light")
    }
    
    override func driveForward() {
        print("push padal")
    }
    
}

let car = Car()
let bicycle = Bycicle()
car.startVehicle()
bicycle.startVehicle()
