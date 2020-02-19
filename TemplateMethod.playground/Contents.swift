
class DriveVehicle {
    
    final func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("this method should be overriden")
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
        closeTheDoor()
    }
    
    func closeTheDoor() {
        print("close the door")
        
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
