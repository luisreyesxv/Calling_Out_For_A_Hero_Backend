
class Task < ApplicationRecord
  belongs_to :user
  validates :user, presence: true



  def self.make_new_task(params)
    flavor_text = ["A noblewoman named Haine seeks a company of adventurers to expose a corrupt aristocrat who serves the Hag of the Eternal Spires.","A merchant named Aethed seeks a company of adventurers to steal a valued family heirloom from a rival.","An ex-adventurer named Sybeth Mesav seeks a company of adventurers to recover the Relic of Camua from the brigands of the Shizdinarg Crags.","A guarded merchant named Anlard seeks a company of adventurers to expose a corrupt aristocrat who serves Lord Greywulf.","A noblewoman named Liaze seeks a company of adventurers to investigate a perpetual storm over the Cuitambo Jungle. Moreover, the party must complete the quest without leaving any trace of their involvement.","A dwarf named Banain seeks a company of adventurers to find and explore the ancient ruins of Hwaburh Castle. Moreover, the party encounters an old ally now working against them.","A merchant named Johny seeks a company of adventurers to find and explore the ancient ruins of Rahyrst Tower. Moreover, the party must complete the quest at a specific time, 10 days from now.","A guarded noblewoman named Ursas seeks a company of adventurers to hunt down and capture the remorseless killer known as Sisbalda the Malign.","An elven lady named Hila seeks a company of adventurers to slay the Wyrm of Ilathar and retrieve its teeth. Moreover, the party must complete the quest without killing anyone.","An arrogant dwarf named Ardar Kellison seeks a company of adventurers to hunt down and kill the Wraith of the Kaba Plains. Moreover, the party must complete the quest before a rival party does.","An ex-adventurer named Wilhye Maley seeks a company of adventurers to escort a caravan of exotic goods safely to the village of Eyshill.","A cunning aristocrat named Guili seeks a company of adventurers to investigate a perpetual storm over the Duskfen Swamp.","An arrogant dwarf named Fili Ogingson seeks a company of adventurers to clear his name against charges of treason.","An aristocrat named Atris seeks a company of adventurers to hunt down and kill Sinmadea the Shadow Tyrant. However, the quest is a trap.","An ex-adventurer named Reder seeks a company of adventurers to expose a corrupt aristocrat who serves Akith the Woeful.","An elven lady named Nelebrie seeks a company of adventurers to discover the fate of her daughter lost in the Jungle of Dreaming Stones. However, the party soon finds itself facing a moral quandry.","An arrogant merchant named Amel seeks a company of adventurers to discover who is murdering his peers, and why.","An elf named Catho seeks a company of adventurers to escort The Celestial Codex of Metrason safely to the village of Weehill. Moreover, the party must complete the quest amidst a natural disaster.","An ex-adventurer named Oldheld seeks a company of adventurers to investigate mysterious lights which appear in the Dodda Hills. However, the quest is a trap.","An elven lady named Bruocha seeks a company of adventurers to thwart the monstrous plan of Sisigoia the Unspeakable. However, her information is completely wrong.","A guarded elven lady named Brita seeks a company of adventurers to find and explore the ancient ruins of Latun Tower.","An ex-adventurer named George seeks a company of adventurers to thwart the monstrous plan of Forno the Gruesome.","An ex-adventurer named Hughye seeks a company of adventurers to clear his name against charges of treason. However, the quest is a trap.","A frantic priest named Doroses seeks a company of adventurers to investigate the mysterious disappearance of Fifield in the Tunsibo Jungle. Moreover, the party cannot use divine magic in their quest.","A sage named Elas seeks a company of adventurers to discover the fate of an order of scholars and mages lost in the Cuito Jungle.","A shady ex-adventurer named Joycie seeks a company of adventurers to recover the Relic of Samua from the orcs of the Bemma Hills. However, her information is completely wrong.","A shady ex-adventurer named Gauwalt seeks a company of adventurers to discover the fate of a company of explorers lost in the Red Hills. Moreover, the party must complete the quest without leaving any trace of their involvement.","A sage named Criphreusim seeks a company of adventurers to rescue the elven town of Lechy from Shaka the Lich Tyrant.","An elven lady named Inyelyen seeks a company of adventurers to steal a powerful arcane device from a rival. Moreover, the party must complete the quest amidst a terrible plague.","An elf named Catai seeks a company of adventurers to rescue the town of Beefield from Emirkol the Chaotic.","An arrogant sage named Nisionic seeks a company of adventurers to expose a corrupt aristocrat who serves Illfang the Kobold Lord.","A dwarf named Urul seeks a company of adventurers to steal the maul Frostreaper from a rival.","An elven lady named Ithren seeks a company of adventurers to investigate the mysterious disappearance of Hrykkiskali in the Zanulbun Mountains. Moreover, the party must complete the quest before a rival party does.","A charming dwarf named Glakai seeks a company of adventurers to protect him from the assassins of Chauraie the Vampire Countess. Moreover, the party must complete the quest amidst a natural disaster.","A noblewoman named Constie seeks a company of adventurers to rescue the lady Anas from the orcs of the Alchuk March.","A wealthy elf named Gwioneli seeks a company of adventurers to explore the Trestydf Vale. However, his information is completely wrong.","An elf named Sure seeks a company of adventurers to protect him from the assassins of Protha the Bloody.","An elf named Lelle seeks a company of adventurers to recover The Corrupt Articles of Grumin from the cultists of Addil. However, the party soon finds itself facing a moral quandry.","A wealthy aristocrat named Rogui seeks a company of adventurers to rescue the lady Aenas from the cultists of Yonith.","A cryptic merchant named Alcfrild seeks a company of adventurers to recover and destroy an evil artifact from the lost city of Beywold in the Llaney Woods."]
    task =  Task.new(params)
    task.flavor= flavor_text.sample
    return task

  end


  def update_task_and_chosen_hero(params: )
      self.update(params)

      if params["completed?"]
       chosen_hero= ChosenHero.find_by(user: self.user )
       chosen_hero.raise_reputation
      end


  end





end

