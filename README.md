# Calling Out For A Hero - Back End
 <p>     
                    Inside <strong>Calling Out For A Hero</strong>, you will find yourself in the world of Pomodoria, which is filled with rival factions. As you go on your own personal quests,
                    you find yourself getting burned out & looking for help. You reach the local guild hall, where you find yourself  <strong>Calling Out For A Hero</strong>. The call is heard all throughout
                    Pomodoria, where different heroes come to your aid. As you continue doing your quests, your hero will grow along with you, and there may be a few surprises along the way.
                    There is no better time than the present for <strong>Calling Out For A Hero</strong>
                        
</p>

This is the back end for Calling Out For A Hero app, a gamified pomodoro timer using Ruby on Rails. Here is the link to the [front end](https://github.com/luisreyesxv/Calling_Out_For_A_Hero_Frontend)

--- 

## Libraries used
* [Bcrypt](https://github.com/codahale/bcrypt-ruby/) v.3.1.7
* [Faker](https://github.com/faker-ruby/faker) v.2.14.0

## Installation
1. run `bundle install`
2. This currently used **PostgreSQL**, so go into **config/database.yml** and set it up according to your own settings
3. run `rails db:create` & `rails db:migrate` to set up the database,tables, and run the migrations.
4. go into the **seeds.rb** located in **db/seeds.rb** . Though this file can be used to seed a few user accounts and the other tables, it also seeds with the default hero sprites. Further below is a section speaking about the specs of the table.
5. run `rails db:seed`

## Models
| **Model**  | **Purpose**                                                                                                                              |
|------------|------------------------------------------------------------------------------------------------------------------------------------------|
| Hero       | Stores the base stats and attributes for the Hero including the sprite's properties. **This is explained further in depth below.**       |
| ChosenHero | Joiner table for Hero and User table. Also takes in the chosen name for the hero per user, individual flavor text, and reputation level. |
| Task       | Stores each user's personal tasks details, along with date, status, and flavor text.                                                     |
| User       | Stores details, including email, password, etc.                                                                                          |





### Hero Model/Table
The table has the attributes
| **Attribute**  | **Purpose**                                                                                                                                                                                                                                                                                                                                                                                                            |
|----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| main_attribute | This attribute serves as the "class" or "species" for each Hero. When a user creates a ChosenHero, it currently picks a random hero from the main_attribute who's level is one. This is also used in combination with level to evolve the chosen_hero into another Hero.                                                                                                                                               |
| height         | This is the height measurement for each frame in the spritesheet. This is the number in pixels                                                                                                                                                                                                                                                                                                                         |
| width          | This is the width measurement for each frame in the spritesheet. This is the number in pixels                                                                                                                                                                                                                                                                                                                          |
| steps          | This is the number of frames within each action. The number of frames for each action **MUST** be the same. Refer to the Spritesheet section for more information.                                                                                                                                                                                                                                                     |
| level          | This is the level requirement to get the respective Hero. This is used in combination with main_attribute. Once ChosenHero reputation reaches a certain number, the level change be increased and a random Hero from the same main_attribute and level greater than current level is selected. This "evolves" the ChosenHero. If there are no Heroes of a higher level, the chosenHero will remain with the same sprite. <br>**Base level has to be Level 1** |

In addition the model uses active storage to store the actual spritesheet PNG and associate it with this Hero. This can be accessed by using `sprite` on the Hero object.


### Creating Hero
When creating the initial Heros, it si a good idea to do this inside the **seeds.rb** file. But afterwards, new Heroes can be created the same way either through the seed file or any other method you prefer.

When creating a hero, the follow steps should be followed
1. Create a variable for the hero and  run`Hero.create()` and giving it the values of main_attribute, width, height, steps, and level. For Example
```ruby 
h1= Hero.create(main_attribute:"Elf", width: 204.20, height: 148.33333333, steps: 10, level:1)
```

2. Refer to the previous used variable and do .sprite.attach()
For example 
```ruby 
h1.sprite.attach(io: File.open('/mnt/c/Users/Admin/Desktop/Projects/Mod 5/Sprites and Backgrounds/Elves/1/sheet pieces/fixed spritesheet.png'), filename: 'elf 1.png', content_type: 'image/png')
```
 If you are uploading a spritesheet from a remote file and you have the URL, try using [this link](https://blog.eq8.eu/til/upload-remote-file-from-url-with-activestorage-rails.html) for help



### ChosenHero
This model current serves as a joiner table for Hero and User tables. Also takes in the chosen name for the hero per user, individual flavor text, and reputation level. There are a few methods and files that are worth highlighting

There are current 2 ways to the API has to create a ChosenHero: `#specificHero` & `#randomHero`. The main difference is the if it choses a random level 1 hero from all the Heroes or a random level 1 hero from Heroes with the same `main_attribute` as the specific house given

Both of those methods use `#creatingFlavor` to come up with ChosenHero's flavor text. This method uses the YML file **bio.yml** found in the **root** folder. The YML is made up of different text from D&D player's handbook.




## Spritesheet Specifications
The spritesheet document needs to be formatted in the following way.
* For the purpose of spritesheet, it should be as a PNG file. It having transparency and layers should be the point. It should look at follows
<br>
    <img src="https://github.com/luisreyesxv/Calling_Out_For_A_Hero_Frontend/raw/master/public/images/enemies/1.png" height="200px" width="auto">
* <p> Each frame of the animations should be separated by equal lengths. Something like <a href="https://spritegen.website-performance.org/" rel="nofollow">this sprite generator</a> should help make a sheet of equal distance. Try to make the distance between be 0. Also, the sprite sheet doesn't HAVE to be organized with each action given it's own row as long as it has the same number of frames for each action. It will be easier on the eyes though.

* The "actions" & frames for each spritesheet should be organized in the following order
    <p>

    1. idle(default actions)
    2. attack
    3. jump
    4. run
    5. die
    6. hurt
    </p>

    The spritesheet does not necessarily need to have all of the actions present, but if you jump over a action but need one further in the list, it will better practice to include a blank set of frames to keep the action descriptions relevent. Best practice is to have the sprite sheet be complete with all actions though. **The actions should have the same amount of frames as all the other actions.
</p>





