
protocol SwimBehaivor {
    func swim()
}

class ProfessionalSwimmer: SwimBehaivor {
    func swim() {
        print("profssional swimming")
    }
}
class NonSwimmer: SwimBehaivor {
    func swim() {
        print("non swimming")
    }
}


protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("professional diving")
    }
}
class NewbieDiver: DiveBehavior {
    func dive() {
        print("newbie diving")
    }
}
class NonDiver: DiveBehavior {
    func dive() {
        print("non diving")
    }
}


class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehaivor!
    
    func performSwim() {
        swimBehavior.swim()
    }
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(swimBehavior: SwimBehaivor) {
        self.swimBehavior = swimBehavior
    }
    
    func setDiveBehavior(diveBehavior: DiveBehavior) {
        self.diveBehavior = diveBehavior
    }
    
    func run() {
        print("running")
    }
    init(swimBehavior: SwimBehaivor, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}

let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: ProfessionalDiver())
human.performDive()
human.performSwim()
