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




u1=User.create(name: "luis",email: "fake@email.com",password: "totallyfake")
u2=User.create(name: "luis2",email: "fake2@email.com",password: "totallyfake")
u3=User.create(name: "luis3",email: "fake3@email.com",password: "totallyfake")

t1=Task.create(user: u1,title:"title1",description:"testing random description",date: Time.now())
t2=Task.create(user: u2,title:"title12",description:"testing random description",date: Time.now(), completed?: true)
t3=Task.create(user: u3,title:"title3",description:"testing random description",date: Time.now())
t4=Task.create(user: u1,title:"title4",description:"testing random description",date: Time.now(), completed?: true)
t5=Task.create(user: User.all.sample,title:"title5",description:"testing random description",date: Time.now())


h1= Hero.create(main_attribute:"Country")
h2= Hero.create(main_attribute:"Rap")
h3= Hero.create(main_attribute:"Pop")
h4= Hero.create(main_attribute:"Swing")

h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/3_3-PIRATE_HURT_006.png'), filename: 'pirate.png', content_type: 'image/png')
puts "put h1 sprite"
h2.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/Fairy_02__JUMP_006.png'), filename: 'fairy1.png', content_type: 'image/png')
puts "put h2 sprite"
h3.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/Fairy_03__WALK_006.png'), filename: 'fairy2.png', content_type: 'image/png')
puts "put h3 sprite"
h4.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/Knight_01__ATTACK_008.png'), filename: 'knight.png', content_type: 'image/png')
puts "put h4 sprite"

# # h1.sprite.attach(io: File.open('./3_3-PIRATE_HURT_006.png'), filename: 'pirate.PNG', content_type: 'image/png')
# h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/3_3-PIRATE_HURT_006.png'), filename: 'pirate.png', content_type: 'image/png')
# puts "put h1 sprite"



c1 = ChosenHero.create(user:u1, hero:h1, name: "monster 1", reputation:34)
puts "chosen hero id is #{c1.id}"
c2 = ChosenHero.create(user:u2, hero:h4, name: "monster 31", reputation:14)
c3 = ChosenHero.create(user:User.all.sample, hero:Hero.all.sample, name: "monster 2", reputation:31)
c4 = ChosenHero.create(user:u3, hero:Hero.all.sample, name: "monster 441", reputation:54)