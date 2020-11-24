
let skeleton = Enemy(health: 100, attackStrength: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()

let skeleton2 = skeleton
skeleton.takeDamage(amount: 10)
print(skeleton2.health)

let dragon = Dragon(health: 100, attackStrength: 10)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My Teeth are swords! My claws are spears! My wings are hurricane")
dragon.move()
dragon.attack()
