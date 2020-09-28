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

def generating_random_flavor_text
   
        bioData = YAML.load(File.read("bio.yml"))
        trait = bioData[bioData.keys.sample][:Trait]
        while !trait 
          trait = bioData[bioData.keys.sample][:Trait]
        end
        trait = trait.sample(2).join()
    
        bond = bioData[bioData.keys.sample][:Bond]
        while !bond 
          bond= bioData[bioData.keys.sample][:Bond]
        end
        bond = bond.sample
    
        flaw = bioData[bioData.keys.sample][:Flaw]
        while !flaw 
          flaw= bioData[bioData.keys.sample][:Flaw]
        end
        flaw = flaw.sample
    
        flavor = {trait: trait, bond: bond, flaw: flaw}
        puts flavor

        return flavor
    end

quest_flavors = ["A noblewoman named Haine seeks a company of adventurers to expose a corrupt aristocrat who serves the Hag of the Eternal Spires.","A merchant named Aethed seeks a company of adventurers to steal a valued family heirloom from a rival.","An ex-adventurer named Sybeth Mesav seeks a company of adventurers to recover the Relic of Camua from the brigands of the Shizdinarg Crags.","A guarded merchant named Anlard seeks a company of adventurers to expose a corrupt aristocrat who serves Lord Greywulf.","A noblewoman named Liaze seeks a company of adventurers to investigate a perpetual storm over the Cuitambo Jungle. Moreover, the party must complete the quest without leaving any trace of their involvement.","A dwarf named Banain seeks a company of adventurers to find and explore the ancient ruins of Hwaburh Castle. Moreover, the party encounters an old ally now working against them.","A merchant named Johny seeks a company of adventurers to find and explore the ancient ruins of Rahyrst Tower. Moreover, the party must complete the quest at a specific time, 10 days from now.","A guarded noblewoman named Ursas seeks a company of adventurers to hunt down and capture the remorseless killer known as Sisbalda the Malign.","An elven lady named Hila seeks a company of adventurers to slay the Wyrm of Ilathar and retrieve its teeth. Moreover, the party must complete the quest without killing anyone.","An arrogant dwarf named Ardar Kellison seeks a company of adventurers to hunt down and kill the Wraith of the Kaba Plains. Moreover, the party must complete the quest before a rival party does.","An ex-adventurer named Wilhye Maley seeks a company of adventurers to escort a caravan of exotic goods safely to the village of Eyshill.","A cunning aristocrat named Guili seeks a company of adventurers to investigate a perpetual storm over the Duskfen Swamp.","An arrogant dwarf named Fili Ogingson seeks a company of adventurers to clear his name against charges of treason.","An aristocrat named Atris seeks a company of adventurers to hunt down and kill Sinmadea the Shadow Tyrant. However, the quest is a trap.","An ex-adventurer named Reder seeks a company of adventurers to expose a corrupt aristocrat who serves Akith the Woeful.","An elven lady named Nelebrie seeks a company of adventurers to discover the fate of her daughter lost in the Jungle of Dreaming Stones. However, the party soon finds itself facing a moral quandry.","An arrogant merchant named Amel seeks a company of adventurers to discover who is murdering his peers, and why.","An elf named Catho seeks a company of adventurers to escort The Celestial Codex of Metrason safely to the village of Weehill. Moreover, the party must complete the quest amidst a natural disaster.","An ex-adventurer named Oldheld seeks a company of adventurers to investigate mysterious lights which appear in the Dodda Hills. However, the quest is a trap.","An elven lady named Bruocha seeks a company of adventurers to thwart the monstrous plan of Sisigoia the Unspeakable. However, her information is completely wrong.","A guarded elven lady named Brita seeks a company of adventurers to find and explore the ancient ruins of Latun Tower.","An ex-adventurer named George seeks a company of adventurers to thwart the monstrous plan of Forno the Gruesome.","An ex-adventurer named Hughye seeks a company of adventurers to clear his name against charges of treason. However, the quest is a trap.","A frantic priest named Doroses seeks a company of adventurers to investigate the mysterious disappearance of Fifield in the Tunsibo Jungle. Moreover, the party cannot use divine magic in their quest.","A sage named Elas seeks a company of adventurers to discover the fate of an order of scholars and mages lost in the Cuito Jungle.","A shady ex-adventurer named Joycie seeks a company of adventurers to recover the Relic of Samua from the orcs of the Bemma Hills. However, her information is completely wrong.","A shady ex-adventurer named Gauwalt seeks a company of adventurers to discover the fate of a company of explorers lost in the Red Hills. Moreover, the party must complete the quest without leaving any trace of their involvement.","A sage named Criphreusim seeks a company of adventurers to rescue the elven town of Lechy from Shaka the Lich Tyrant.","An elven lady named Inyelyen seeks a company of adventurers to steal a powerful arcane device from a rival. Moreover, the party must complete the quest amidst a terrible plague.","An elf named Catai seeks a company of adventurers to rescue the town of Beefield from Emirkol the Chaotic.","An arrogant sage named Nisionic seeks a company of adventurers to expose a corrupt aristocrat who serves Illfang the Kobold Lord.","A dwarf named Urul seeks a company of adventurers to steal the maul Frostreaper from a rival.","An elven lady named Ithren seeks a company of adventurers to investigate the mysterious disappearance of Hrykkiskali in the Zanulbun Mountains. Moreover, the party must complete the quest before a rival party does.","A charming dwarf named Glakai seeks a company of adventurers to protect him from the assassins of Chauraie the Vampire Countess. Moreover, the party must complete the quest amidst a natural disaster.","A noblewoman named Constie seeks a company of adventurers to rescue the lady Anas from the orcs of the Alchuk March.","A wealthy elf named Gwioneli seeks a company of adventurers to explore the Trestydf Vale. However, his information is completely wrong.","An elf named Sure seeks a company of adventurers to protect him from the assassins of Protha the Bloody.","An elf named Lelle seeks a company of adventurers to recover The Corrupt Articles of Grumin from the cultists of Addil. However, the party soon finds itself facing a moral quandry.","A wealthy aristocrat named Rogui seeks a company of adventurers to rescue the lady Aenas from the cultists of Yonith.","A cryptic merchant named Alcfrild seeks a company of adventurers to recover and destroy an evil artifact from the lost city of Beywold in the Llaney Woods."]



u1=User.create(name: "testing 1",email: "fake@email.com",password: "totallyfake")
u2=User.create(name: "luis",email: "luis2@email.com",password: "totallyfake")
u3=User.create(name: "luis3",email: "fake3@email.com",password: "totallyfake")
u4=User.create(name: "Julia Zhou",email: "luis@email.com",password: "totallyfake")

t1=Task.create(user: u1,title:"title1",description:"testing random description",date: Time.now(), flavor: quest_flavors.sample)
t2=Task.create(user: u2,title:"title12",description:"testing random description",date: Time.now(), completed?: true ,flavor: quest_flavors.sample)
t3=Task.create(user: u3,title:"title3",description:"testing random description",date: Time.now() ,flavor: quest_flavors.sample)
t4=Task.create(user: u1,title:"title4",description:"testing random description",date: Time.now(), flavor: quest_flavors.sample, completed?: true)
t5=Task.create(user: User.all.sample,title:"title5",description:"testing random description", flavor: quest_flavors.sample ,date: Time.now())


h1= Hero.create(main_attribute:"Elf", width: 816.80, height: 593.50, steps: 10, level:1)
h2= Hero.create(main_attribute:"Fairy", width: 740, height: 508.66, steps: 10, level:1)
h3= Hero.create(main_attribute:"WW", width: 966.6, height: 588, steps: 10, level:2)
h4= Hero.create(main_attribute:"Knight", width: 1005.6, height: 568.67, steps: 10, level:2)

h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Elves/1/sheet pieces/cropped sprite sheet.png'), filename: 'elf 1.png', content_type: 'image/png')
puts "put h1 sprite"
h2.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Fairies/3/sheet pieces/spritesheet.png'), filename: 'fairy 3.png', content_type: 'image/png')
puts "put h2 sprite"
h3.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Woman Warriors/2/sheet pieces/spritesheet.png'), filename: 'ww 2.png', content_type: 'image/png')
puts "put h3 sprite"
h4.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Knights/1_KNIGHT/sheet pieces/spritesheet.png'), filename: 'knight 1.png', content_type: 'image/png')
puts "put h4 sprite"

# # h1.sprite.attach(io: File.open('./3_3-PIRATE_HURT_006.png'), filename: 'pirate.PNG', content_type: 'image/png')
# h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/3_3-PIRATE_HURT_006.png'), filename: 'pirate.png', content_type: 'image/png')
# puts "put h1 sprite"

# h4.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Pitch/Knight_01__ATTACK_008.png'), filename: 'knight.png', content_type: 'image/png')



c1 = ChosenHero.create(user:u1, hero:h1, name: "Elfberto", reputation:34,flavor:generating_random_flavor_text)
puts "chosen hero id is #{c1.id}"
c2 = ChosenHero.create(user:u2, hero:h4, name: "Dread Pirate Roberto", flavor:generating_random_flavor_text, reputation:14)
c3 = ChosenHero.create(user:u4, hero:h2, name: "Dragonfly Peppershimmer", flavor:generating_random_flavor_text, reputation:31)
c4 = ChosenHero.create(user:u3, hero:h3, name: "Freya Wilddottir", flavor:generating_random_flavor_text, reputation:54)