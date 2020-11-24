class Enemy {
    var health: Int
    var attackStrength: Int
    
    init(health: Int, attackStrength: Int) {
        self.health = health
        self.attackStrength = attackStrength
    }
    
    func takeDamage(amount: Int) {
        self.health -= amount
    }
    
    func move() {print("Walks Forward.")}
    
    func attack() {print("Land a hit, does \(attackStrength) damage")}
}
