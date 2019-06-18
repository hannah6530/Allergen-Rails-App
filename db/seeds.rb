User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 =  User.create(name: "Jackie Daniels", user_name: "Jackyyy334", password: "daniels123")
user2 =  User.create(name: "George Carlton", user_name: "Georgy123", password: "carl456")
user3 =  User.create(name: "Timmy Tuner", user_name: "TimmmyT03",password: "password")
user4 =  User.create(name: "Natalie Carmen", user_name: "Nat_Nat123", password: "natnatl")
user5 =  User.create(name: "Samantha Hamilton", user_name: "Sammy_H05",password: "sammysosa")


recipe1 =  Recipe.create(name: "Spagetti and Meatballs", user_id: user1.id )
recipe2 =  Recipe.create(name: "Chicken Alfredo", user_id: user2.id )
recipe3 =  Recipe.create(name: "Peanut Butter and Jelly Sandwhich", user_id: user3.id )
recipe4 =  Recipe.create(name: "Strawberry Shortcake", user_id: user4.id  )
recipe5 =  Recipe.create(name: "Curry Goat W/ Rice", user_id: user5.id )

ingredient1 =  Ingredient.create(name: "Peaunut Butter", recipe_id: recipe3.id, allergy_count: 5)
ingredient11 = Ingredient.create(name: "Bread", recipe_id: recipe3.id, allergy_count: 5)
ingredient2 =  Ingredient.create(name: "Jelly", recipe_id: recipe3.id, allergy_count: 3)

ingredient3 =  Ingredient.create(name: "Chicken", recipe_id: recipe2.id, allergy_count: 2)
ingredient4 =  Ingredient.create(name: "Alfredo Sauce", recipe_id: recipe2.id, allergy_count: 4)
ingredient5 =  Ingredient.create(name: "Pasta Noodles", recipe_id: recipe2.id, allergy_count: 1)

ingredient6 =   Ingredient.create(name: "Spagetti", recipe_id: recipe1.id, allergy_count: 5)
ingredient12 =  Ingredient.create(name: "Tomato Sauce", recipe_id: recipe1.id, allergy_count: 5)
ingredient13 =  Ingredient.create(name: "Meatballs", recipe_id: recipe1.id, allergy_count: 5)

ingredient14 =  Ingredient.create(name: "Strawberries", recipe_id: recipe4.id, allergy_count: 3)
ingredient15 =  Ingredient.create(name: "Flour", recipe_id: recipe4.id, allergy_count: 2)
ingredient16 =  Ingredient.create(name: "Milk", recipe_id: recipe4.id, allergy_count: 4)
ingredient17 =  Ingredient.create(name: "Eggs", recipe_id: recipe4.id, allergy_count: 1)

ingredient7 =  Ingredient.create(name: "Curry Powder", recipe_id: recipe5.id, allergy_count: 3)
ingredient8 =  Ingredient.create(name: "Goat Meat", recipe_id: recipe5.id, allergy_count: 2)
ingredient9 =  Ingredient.create(name: "Rice", recipe_id: recipe5.id, allergy_count: 4)
ingredient10 = Ingredient.create(name: "Pepper", recipe_id: recipe5.id, allergy_count: 1)
