# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating stuff ..."

user1 = User.create!(first_name: "Marie Amelié", last_name: "Sandrock", email:"mas@gmail.com", password:"secret")

avocado = Ingredient.create!(name: "Avocado")
spinach = Ingredient.create!(name: "Spinach")
pineapple = Ingredient.create!(name: "Pineapple")
turmeric = Ingredient.create!(name: "Turmeric")
flaxseed = Ingredient.create!(name: "Flaxseed")
coconut_water = Ingredient.create!(name: "Coconut Water")
wheatgrass = Ingredient.create!(name: "Wheatgrass")
beets_frozen = Ingredient.create!(name: "Beets frozen")
cucumber_frozen = Ingredient.create!(name:"Cucumber frozen")
banana_frozen = Ingredient.create!(name:"Banana Frozen")
rice_cococnut_milk = Ingredient.create!(name:"Rice Coconut Milk")
strawberry = Ingredient.create!(name:"Strawberry")



like1 = Like.create!(ingredient_id: avocado.id, user_id: user1.id)
like2 = Like.create!(ingredient_id: spinach.id, user_id: user1.id)
like3 = Like.create!(ingredient_id: pineapple.id, user_id: user1.id)

dislike1 = Dislike.create!(ingredient_id: turmeric.id, user_id: user1.id)
dislike2 = Dislike.create!(ingredient_id: coconut_water.id, user_id: user1.id)
dislike3 = Dislike.create!(ingredient_id: flaxseed.id, user_id: user1.id)

allergy1 = Allergy.create!(ingredient_id: flaxseed.id, user_id: user1.id)
allergy2 = Allergy.create!(ingredient_id: coconut_water.id, user_id: user1.id)
allergy3 = Allergy.create!(ingredient_id: avocado.id, user_id: user1.id)

s1 = Smoothie.create!(name:"Blue Berry",
  nickname: "Blueee",
  description: "This is the detox heaven, spinach is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507100/the-smoothie/smoothie-blue.png"
  )

s2 = Smoothie.create!(name:"Purple Boost",
  nickname: "Boosty",
  description: "This is the boost heaven, ginger is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507101/the-smoothie/Bildschirmfoto_2018-11-29_um_16.56.36.png"
  )

s3 = Smoothie.create!(name:"Orange Boost",
  nickname: "Boosty",
  description: "This is the boost heaven, orange is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507101/the-smoothie/Bildschirmfoto_2018-11-29_um_15.44.19.png"
  )

s4 = Smoothie.create!(name:"Pink Detox",
  nickname: "Greenny",
  description: "This is the detox heaven, spinach is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507101/the-smoothie/smoothie-pink.png"
  )

s5 = Smoothie.create!(name:"Blue Boost",
  nickname: "Boosty",
  description: "This is the boost heaven, ginger is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507100/the-smoothie/smoothie-blue.png"
  )

s6 = Smoothie.create!(name:"Brown Boost",
  nickname: "Boosty",
  description: "This is the boost heaven, orange is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507102/the-smoothie/smoothie-brown.png"
  )

s7 = Smoothie.create!(name:"Green Boost",
  nickname: "Boosty",
  description: "The winter is here!!! Our immune system is under attack and needs little anti-oxidant ass-kickers team to help you fight virus and bacterias.
Avocado is a perfect low sugar base to get that full stomach feeling.
Spinach is full of iron and vitamin C to boost your immune resistance
Pineapple is fiber filled zinc and copper addition
Cayenne pepper is a bacteria killer and circulation enabler
Almonds are full of amino that is so important for your brain function.",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507100/the-smoothie/Bildschirmfoto_2018-11-29_um_16.56.10.png"
  )

s8 = Smoothie.create!(name:"Ginger Boost",
  nickname: "Boosty",
  description: "This is the boost heaven, orange is blabla, tumeric is super blabla",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507100/the-smoothie/Bildschirmfoto_2018-11-29_um_16.56.18.png"
  )

s9 = Smoothie.create!(name:"Red Boost",
  nickname: "Boosty",
  description: "Beets are one of the most powerful antioxidants for your blood. Full of iron, calcium and vitamin A and C
Raspberries berries are full of fiber, potassium, folate, vitamin C, vitamin B6, phytonutrient is heart function helper
Kale is amazing for your digestion and mineral intake vitamin K and A champion.
Banana is full of fiber and potassium
Turmeric is basically the strongest natures anti-inflammatory agent.",
  photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543507100/the-smoothie/smoothie-red.png"
  )


d1 = Dose.create!(unit:"ml", value: 250, ingredient_id: coconut_water.id, smoothie_id: s1.id)
d2 = Dose.create!(unit:"g", value: 100, ingredient_id: avocado.id, smoothie_id: s1.id)
d3 = Dose.create!(unit:"g", value: 100,ingredient_id: spinach.id, smoothie_id: s1.id)
d4 = Dose.create!(unit:"g", value: 100,ingredient_id: pineapple.id, smoothie_id: s1.id)
d5 = Dose.create!(unit:"g", value: 15,ingredient_id: turmeric.id, smoothie_id: s1.id)
d5 = Dose.create!(unit:"g", value: 15,ingredient_id: flaxseed.id, smoothie_id: s1.id)

d6 = Dose.create!(unit:"g", value: 100,ingredient_id: avocado.id, smoothie_id: s2.id)
d7 = Dose.create!(unit:"g", value: 100,ingredient_id: spinach.id, smoothie_id: s2.id)
d8 = Dose.create!(unit:"g", value: 15,ingredient_id: pineapple.id, smoothie_id: s2.id)
d9 = Dose.create!(unit:"ml", value: 200,ingredient_id: flaxseed.id, smoothie_id: s2.id)

d10 = Dose.create!(unit:"g", value: 100, ingredient_id: beets_frozen.id, smoothie_id: s9.id)
d11 = Dose.create!(unit:"g", value: 50, ingredient_id: cucumber_frozen.id, smoothie_id: s9.id)
d12 = Dose.create!(unit:"g", value: 50, ingredient_id: banana_frozen.id, smoothie_id: s9.id)
d13 = Dose.create!(unit:"g", value: 50, ingredient_id: strawberry.id, smoothie_id: s9.id)
d14 = Dose.create!(unit:"g", value: 5, ingredient_id: turmeric.id, smoothie_id: s9.id)
d15 = Dose.create!(unit:"ml", value: 250, ingredient_id: rice_cococnut_milk.id, smoothie_id: s9.id)

d16 = Dose.create!(unit:"g", value: 50, ingredient_id: avocado.id, smoothie_id: s7.id)
d17 = Dose.create!(unit:"g", value: 50, ingredient_id: spinach.id, smoothie_id: s7.id)
d18 = Dose.create!(unit:"g", value: 50, ingredient_id: pineapple.id, smoothie_id: s7.id)
d19 = Dose.create!(unit:"g", value: 5, ingredient_id: flaxseed.id, smoothie_id: s7.id)
d20 = Dose.create!(unit:"g", value: 5, ingredient_id: wheatgrass.id, smoothie_id: s7.id)
d21 = Dose.create!(unit:"ml", value: 250, ingredient_id: coconut_water.id, smoothie_id: s7.id)

Dose.create!(unit:"g", value: 100,ingredient_id: avocado.id, smoothie_id: s3.id)
Dose.create!(unit:"g", value: 100,ingredient_id: spinach.id, smoothie_id: s3.id)
Dose.create!(unit:"g", value: 15,ingredient_id: pineapple.id, smoothie_id: s3.id)
Dose.create!(unit:"ml", value: 200,ingredient_id: flaxseed.id, smoothie_id: s3.id)



p "Seed done ....! Now you'd better work bitch ! <3"

