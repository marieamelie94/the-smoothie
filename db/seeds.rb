# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating stuff ..."

user1 = User.create!(first_name: "Evgenia", last_name: "Kirpicheva", email:"evg@gmail.com", password:"secret")

i1 = Ingredient.create!(name: "Avocado")
i2 = Ingredient.create!(name: "Spinach")
i3 = Ingredient.create!(name: "Pieapple")
i4 = Ingredient.create!(name: "Tumeric")
i6 = Ingredient.create!(name: "Flaxseed")
i5 = Ingredient.create!(name: "Coconut Water")

like1 = Like.create!(ingredient_id: i1.id, user_id: user1.id)
like2 = Like.create!(ingredient_id: i2.id, user_id: user1.id)
like3 = Like.create!(ingredient_id: i3.id, user_id: user1.id)

dislike1 = Dislike.create!(ingredient_id: i4.id, user_id: user1.id)
dislike2 = Dislike.create!(ingredient_id: i5.id, user_id: user1.id)
dislike3 = Dislike.create!(ingredient_id: i6.id, user_id: user1.id)

allergy1 = Allergy.create!(ingredient_id: i6.id, user_id: user1.id)
allergy2 = Allergy.create!(ingredient_id: i5.id, user_id: user1.id)
allergy3 = Allergy.create!(ingredient_id: i1.id, user_id: user1.id)

s1 = Smoothie.create!(name:"Green Detox",
                      nickname: "Greenny",
                      description: "This is the detox heaven, spinach is blabla, tumeric is super blabla",
                      )
s2 = Smoothie.create!(name:"Green Boost",
                      nickname: "Boosty",
                      description: "This is the boost heaven, ginger is blabla, tumeric is super blabla",
                      )
s3 = Smoothie.create!(name:"Orange Boost",
                      nickname: "Boosty",
                      description: "This is the boost heaven, orange is blabla, tumeric is super blabla",
                      )

d1 = Dose.create!(unit:"ml", value: 250, ingredient_id: i5.id, smoothie_id: s1.id)
d2 = Dose.create!(unit:"g", value: 100, ingredient_id: i1.id, smoothie_id: s1.id)
d3 = Dose.create!(unit:"g", value: 100,ingredient_id: i2.id, smoothie_id: s1.id)
d4 = Dose.create!(unit:"g", value: 100,ingredient_id: i3.id, smoothie_id: s1.id)
d5 = Dose.create!(unit:"g", value: 15,ingredient_id: i4.id, smoothie_id: s1.id)
d5 = Dose.create!(unit:"g", value: 15,ingredient_id: i6.id, smoothie_id: s1.id)

d6 = Dose.create!(unit:"g", value: 100,ingredient_id: i1.id, smoothie_id: s2.id)
d7 = Dose.create!(unit:"g", value: 100,ingredient_id: i2.id, smoothie_id: s2.id)
d8 = Dose.create!(unit:"g", value: 15,ingredient_id: i3.id, smoothie_id: s2.id)
d9 = Dose.create!(unit:"ml", value: 200,ingredient_id: i6.id, smoothie_id: s2.id)

Dose.create!(unit:"g", value: 100,ingredient_id: i1.id, smoothie_id: s3.id)
Dose.create!(unit:"g", value: 100,ingredient_id: i2.id, smoothie_id: s3.id)
Dose.create!(unit:"g", value: 15,ingredient_id: i3.id, smoothie_id: s3.id)
Dose.create!(unit:"ml", value: 200,ingredient_id: i6.id, smoothie_id: s3.id)



p "Seed done ....! Now you'd better work bitch ! <3"

