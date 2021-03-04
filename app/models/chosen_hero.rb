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

      if params[:method] == "specific"
        hiredHero = self.specificHero(user: user, house: params[:house])
        return hiredHero
      end
    
  end

  def self.specificHero (user:, house:)

    hero= Hero.where(main_attribute: house, level: 1).sample
    # if hero.length >1
    #   byebug
    #   hero = hero.sample[0]
    # end


    # byebug
    return ChosenHero.create(user: user, hero: hero, name: "#{Faker::Games::ElderScrolls.first_name} #{Faker::Games::ElderScrolls.last_name}", reputation: 0, flavor: ChosenHero.creatingFlavor)
  end


    def self.randomHero (user:)
     return ChosenHero.create(user: user, hero: Hero.where(level:1).sample, name: "#{Faker::Games::ElderScrolls.first_name} #{Faker::Games::ElderScrolls.last_name}", reputation: 0, flavor: ChosenHero.creatingFlavor)
    end


    def raise_reputation
      self.reputation+=15

      if self.save && self.reputation >=100 && self.hero.level == 1
        hero = Hero.where(main_attribute: self.hero.main_attribute,level: 2).sample
        self.hero= hero
        self.save
      end



    end



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
