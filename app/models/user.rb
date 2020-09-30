class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_one :chosen_hero , dependent: :destroy
    has_one :hero, through: :chosen_hero
    has_secure_password

    validates :email, uniqueness: true
    validates :email,:name, :password_digest, presence: true


    def self.registerUser (params)

     new_user = User.create(params)

     if new_user.valid?
      t1=Task.create(user: new_user,title:"Call Out For A Hero",description:"Welcome to Calling Out For A Hero. Make sure that you connect with your Hero and start making new tasks. After that, come back and complete this quest to get a feel for things.",date: Time.now(), flavor: "You Have Entered this new world and find yourself lost. You are searching for a friend for help.")
     end
     return new_user
    end

  end