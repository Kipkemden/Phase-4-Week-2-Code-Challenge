# db/seeds.rb

# Clear existing data
HeroPower.destroy_all
Power.destroy_all
Hero.destroy_all

# Create Heroes
kamala = Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
doreen = Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
gwen = Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

# Create Powers
strength = Power.create(name: 'Super Strength', description: 'Gives the wielder super-human strengths')
flight = Power.create(name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed')

# Create HeroPowers
HeroPower.create(hero: kamala, power: strength, strength: 'Strong')
HeroPower.create(hero: kamala, power: flight, strength: 'Average')
HeroPower.create(hero: doreen, power: strength, strength: 'Average')
HeroPower.create(hero: gwen, power: flight, strength: 'Weak')

puts 'Seeding completed successfully!'
