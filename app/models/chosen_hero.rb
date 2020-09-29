require 'faker'

class ChosenHero < ApplicationRecord
  belongs_to :user
  belongs_to :hero

  validates :user_id, uniqueness: true
  validates :user_id,:hero_id, presence: true


  def self.hire(user:, params: )
    if params[:method] == "random"
     hiredHero = self.randomHero(user: user)
     return hiredHero
    end

    
  end


    def self.randomHero (user:)
     return ChosenHero.create(user: user, hero: Hero.first(3).sample, name: "#{Faker::Games::ElderScrolls.first_name} #{Faker::Games::ElderScrolls.last_name}", reputation: 0, flavor: ChosenHero.creatingFlavor)
    end


    def raise_reputation
      self.reputation+=15

      if self.save && self.reputation >=100 && self.hero.level == 1
        hero = Hero.where(main_attribute: self.hero.main_attribute,level: 2).sample
        self.hero= hero
        self.save
      end



    end


    # def self.randomHero(userObj: {id: 152,name: "swag"})
    #  return ChosenHero.new(user_id: userObj[:id], hero: Hero.first(3).sample, name: "Random McGee", reputation: 0)
    # end


    private 

  def self.creatingFlavor
    bioData = YAML.load(File.read("bio.yml"))
    trait = bioData[bioData.keys.sample][:Trait]
    while !trait 
      trait = bioData[bioData.keys.sample][:Trait]
    end
    trait = trait.sample(2).join(" Also, ")

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
    return flavor
    end

end
