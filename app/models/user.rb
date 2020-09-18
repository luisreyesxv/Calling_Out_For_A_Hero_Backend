class User < ApplicationRecord
    has_many :tasks
    has_one :chosen_hero
    has_one :hero, through: :chosen_hero
    has_secure_password

    validates :email, uniqueness: true
    validates :email,:name, :password, presence: true

  end