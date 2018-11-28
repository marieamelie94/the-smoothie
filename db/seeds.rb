# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# likes = %w(Avocado Coconut Pineapple)
# likes.each do |likes|
#   Like.create!(name: likes)
# end

# likes = %w(Lemon Spinach Pineapple)
# likes.each do |likes|
#   Dislike.create!(name: likes)
# end

# likes = %w(Peanuts Nuts Gluten Soy Lactose Celery Mustard Seasame)
# likes.each do |likes|
#   Allergie.create!(name: likes)
# end

p "creating stuff ..."

i1 = Ingredient.create!(name: "Avocado")
i2 = Ingredient.create!(name: "Spinach")
i3 = Ingredient.create!(name: "Pieapple")
i4 = Ingredient.create!(name: "Tumeric")
i6 = Ingredient.create!(name: "Flaxseed")
i5 = Ingredient.create!(name: "Coconut Water")

s1 = Smoothie.create!(name:"Green Detox",
                      nickname: "Greenny",
                      description: "This is the detox heaven, spinach is blabla, tumeric is super blabla",
                      )

d1 = Dose.create!(mililiters: 250, ingredient_id: i5.id, smoothie_id: s1.id)
d2 = Dose.create!(grams: 100, ingredient_id: i1.id, smoothie_id: s1.id)
d3 = Dose.create!(grams: 100, ingredient_id: i2.id, smoothie_id: s1.id)
d4 = Dose.create!(grams: 100, ingredient_id: i3.id, smoothie_id: s1.id)
d5 = Dose.create!(grams: 15, ingredient_id: i4.id, smoothie_id: s1.id)
d5 = Dose.create!(grams: 15, ingredient_id: i6.id, smoothie_id: s1.id)

p "done !!!   ...."

