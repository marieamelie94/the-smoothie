# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating stuff ..."

user1 = User.create!(first_name: "Marie Amélie", last_name: "Sandrock", email:"mas@gmail.com", password:"secret")

avocado = Ingredient.create!(name: "Avocado", description: 'You know its a fruit right? Avocado is just pumped with monounsaturated fats! These are the fats that you want. As well as it’s low on sugar, so is a great swap for your smoothie if you are on a low sugar diet. Great antioxidant! Has around 160 calories per 100g, 2g of protein and 15g of healthy fats. Even though it contains 9g of carbs, 7g of those are fibre.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543411319/the-smoothie/avocados.png")
spinach = Ingredient.create!(name: "Spinach", description: 'Spinach is a super vegetable. Full of zinc iron, protein, potassium fibre, vitamins like A,C,E,K and the list goes on and on. It’s basically good for everything and has very little calories. Has around 23 calories per 100g with 0,4g of carbs and 2,9g protein.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543411336/the-smoothie/spinach.png")
pineapple = Ingredient.create!(name: "Pineapple", description: 'Pineapple is one of my favorite fruits for blender. It\'s sweet tropical taste and smell go especially well with green smoothies. Pine apple is an amazing source of vitamin C and fiber, minerals and antioxidants. It\'s amazing for weight loss and detox and digestive problems🍍. Has around 50 calories per 100g, 13g of carbs and 0,5 of protein.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543411321/the-smoothie/pineapple.png")
turmeric = Ingredient.create!(name: "Turmeric", description: 'Kurkuma(Turmeric) - this magical spice is basically a multi-function medicine. It is known as natural substitute for Anti-inflammatory drugs, Anti-depressants (Prozac), Chemotherapy, Anti-coagulants (Aspirin), Pain killers, Diabetes drugs (Metformin), Arthritis medications, Inflammatory bowel disease drugs, Cholesterol drugs (Lipitor), Steroids. Half a tea spoon a day with a smoothie is a recommended dose', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543405809/the-smoothie/Screen_Shot_2018-11-09_at_15.47.28.png")
flaxseed = Ingredient.create!(name: "Flaxseed", description: 'Flaxseed health benefits are mainly attributed to the omega-3 fatty acids, lignans and fiber they contain. Summary: Flax seeds are good sources of many nutrients. Their health benefits are mainly due to their content of omega-3 fats, lignans and fiber', photo:"https://res.cloudinary.com/mas-cloud/image/upload/c_crop,w_395,x_5,y_0/v1544011045/the-smoothie/Screen_Shot_2018-12-05_at_12.56.29.png")
coconut_water = Ingredient.create!(name: "Coconut Water", description: 'Benefits of drinking coconut water, an all-natural, uncommonly nutritious beverage, are great: Coconut water is an excellent way to quench your thirst, boost hydration, and increase your intake of important vitamins, minerals, and phytonutrients', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1544011233/the-smoothie/Screen_Shot_2018-12-05_at_13.00.02.png")
wheatgrass = Ingredient.create!(name: "Wheatgrass powder", description: 'Wheatgrass powder is a great way to add vitamins and minerals to your diet. Just a teaspoon a day will deliver fast results', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543405806/the-smoothie/Screen_Shot_2018-11-09_at_15.47.38.png")
beets_frozen = Ingredient.create!(name: "Beets", description: 'What\'s your favorite veg to blend?  Beetroots are super healthy for your blood and immune system. Due to chemical reactions, caused by nutrients in beets, your blood literally flows better. A bit high on sugar, something to keep in mind. Has around 45 calories per 100g, 10g of carbs and 1,3 of protein.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543411290/the-smoothie/beets.png")
cucumber_frozen = Ingredient.create!(name: "Cucumber", description: 'Cucumber is probably the most hydrating vegetable there is(over 90% water) Extremely low in calories, full of minerals and vitamins. Helps relief itchy and sunburns. ', photo: "https://res.cloudinary.com/mas-cloud/image/upload/v1543411335/the-smoothie/cucumbers.png")
banana_frozen = Ingredient.create!(name: "Banana", description: '🍌 Bananas are high on potassium and magnesium as well as fiber. Help prevent muscle cramps in case you like a sweaty work out. Due to rich oils banana is great for you skin and hair. Great breakfast fruit that is rich on probiotic bacterias. Has around 110 calories per 100g, 15g of carbs and 1,5g of protein.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543411338/the-smoothie/bananas.png")
rice_cococnut_milk = Ingredient.create!(name: "Rice Milk", description: 'Fat-free milk has all of the nutritional benefits of whole milk — protein, calcium, vitamins, and minerals — without the saturated fat and calories. However, absorption of some vitamins may be reduced due to the lack of fat.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1544011922/the-smoothie/Screen_Shot_2018-12-05_at_13.10.21.png")
strawberry = Ingredient.create!(name: "Strawberry", description: '🍓 Strawberries are a known course of vitamin A,C and E, minerals and antioxidants a huge bonus is that they actually taste and smell amazing. Great for the immune system. Has around 32 calories per 100g, 7g of carbs and 0,7g protein.', photo:"https://res.cloudinary.com/mas-cloud/image/upload/v1543405815/the-smoothie/strawberry.png")

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

