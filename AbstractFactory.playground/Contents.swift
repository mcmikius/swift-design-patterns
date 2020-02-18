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

