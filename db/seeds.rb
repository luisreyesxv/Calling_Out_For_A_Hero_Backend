# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all
Hero.destroy_all




u1=User.create(name: "testing 1",email: "fake@email.com",password: "totallyfake")
u2=User.create(name: "luis",email: "luis2@email.com",password: "totallyfake")
u3=User.create(name: "luis3",email: "fake3@email.com",password: "totallyfake")

t1=Task.create(user: u1,title:"title1",description:"testing random description",date: Time.now())
t2=Task.create(user: u2,title:"title12",description:"testing random description",date: Time.now(), completed?: true)
t3=Task.create(user: u3,title:"title3",description:"testing random description",date: Time.now())
t4=Task.create(user: u1,title:"title4",description:"testing random description",date: Time.now(), completed?: true)
t5=Task.create(user: User.all.sample,title:"title5",description:"testing random description",date: Time.now())


h1= Hero.create(main_attribute:"Country", width: 816.80, height: 593.50)
h2= Hero.create(main_attribute:"Rap", width: 740, height: 805.66)
h3= Hero.create(main_attribute:"Pop")
h4= Hero.create(main_attribute:"Swing")

h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Elves/1/sheet pieces/cropped sprite sheet.png'), filename: 'elf 1.png', content_type: 'image/png')
puts "put h1 sprite"
h2.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Fairies/3/sheet pieces/spritesheet.png'), filename: 'Dragonfly Peppershimmer.png', content_type: 'image/png')
puts "put h2 sprite"
h3.sprite.attach(io: File.open('mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Woman Warriors/2/sheet pieces/spritesheet.png'), filename: 'Freya Wilddottir.png', content_type: 'image/png')
puts "put h3 sprite"
h4.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/Knight_01__ATTACK_008.png'), filename: 'knight.png', content_type: 'image/png')
puts "put h4 sprite"

# # h1.sprite.attach(io: File.open('./3_3-PIRATE_HURT_006.png'), filename: 'pirate.PNG', content_type: 'image/png')
# h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/3_3-PIRATE_HURT_006.png'), filename: 'pirate.png', content_type: 'image/png')
# puts "put h1 sprite"



c1 = ChosenHero.create(user:u1, hero:h1, name: "Elfberto", reputation:34)
puts "chosen hero id is #{c1.id}"
c2 = ChosenHero.create(user:u2, hero:h4, name: "Dread Pirate Roberto", reputation:14)
c3 = ChosenHero.create(user:u4, hero:h2, name: "Dragonfly Peppershimmer", reputation:31)
c4 = ChosenHero.create(user:u3, hero:h3, name: "Freya Wilddottir", reputation:54)