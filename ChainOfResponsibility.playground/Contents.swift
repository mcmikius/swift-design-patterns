class Enemy {
    let strength = 300
}

protocol MilitaryChain {
    var strength: Int { get }
    var nextRank: MilitaryChain? { get set }
    func shouldDefeatWithStrength(amount: Int)
}

class Soldier: MilitaryChain {
    var strength: Int = 100
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Soldier got it")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    var strength: Int = 500
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Officer got it")
        } else {
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class General: MilitaryChain {
    var strength: Int = 1000
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("General got it")
        } else {
            print("We can't defeat this enemy")
        }
    }
}

let enemy = Enemy()
let soldier = Soldier()
let officer = Officer()
let general = General()

soldier.nextRank = officer
officer.nextRank = general

soldier.shouldDefeatWithStrength(amount: enemy.strength)
