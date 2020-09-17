class User < ApplicationRecord
    has_many :tasks
    has_one :chosen_hero
    has_one :hero, through: :chosen_hero

  end