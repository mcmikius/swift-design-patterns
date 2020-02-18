protocol Car {
    func drive()
}
class LittleCar: Car {
    func drive() {
        print("drive a little size car")
    }
}

class MiddleCar: Car {
    func drive() {
        print("drive a middle size car")
    }
}

protocol Bus {
    func drive()
}
class LittleBus: Bus {
    func drive() {
        print("drive a little size bus")
    }
}

class MiddleBus: Bus {
    func drive() {
        print("drive a middle size bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class LittleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("little size bus is created")
        return LittleBus()
    }
    
    func produceCar() -> Car {
        print("little size car is created")
        return LittleCar()
    }
    
}
class MiddleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("middle size bus is created")
        return MiddleBus()
    }
    
    func produceCar() -> Car {
        print("middle size car is created")
        return MiddleCar()
    }
}

let littleFactory = LittleSizeFactory()
littleFactory.produceCar()

let middleFactory = MiddleSizeFactory()
middleFactory.produceBus()
