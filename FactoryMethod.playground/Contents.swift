protocol Vehicle {
    func drive()
}

class Car: Vehicle {
    func drive(){
        print("drive a car")
    }
}

class Truck: Vehicle {
    func drive(){
        print("drive a truck")
    }
}
class Buss: Vehicle {
    func drive(){
        print("drive a buss")
    }
}


protocol VehicalFactory {
    func produce() -> Vehicle
}

class CarFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("Car is created")
        return Car()
    }
}

class TruckFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("Truck is created")
        return Truck()
    }
}

class BussFactory: VehicalFactory {
    func produce() -> Vehicle {
        print("Buss is created")
        return Buss()
    }
}

let carFactory = CarFactory()
let car = carFactory.produce()
car.drive()

let truckFactory = TruckFactory()
let truck = truckFactory.produce()
truck.drive()

let bussFactory = BussFactory()
let buss = bussFactory.produce()
buss.drive()
