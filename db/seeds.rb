User.destroy_all
Recipe.destroy_all
SecurityQuestion.destroy_all
SecurityAnswer.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sec_ques = SecurityQuestion.create(question_1: "What is you mothers middle name?", question_2: "What is your favorite food?",
  question_3: "What city were you born?")

sec_ans1 = SecurityAnswer.create(answer_1: "Ashley", answer_2: "Pizza", answer_3: "New York")
sec_ans2 = SecurityAnswer.create(answer_1: "Tina", answer_2: "Hotdogs", answer_3: "Newark")
sec_ans3 = SecurityAnswer.create(answer_1: "Linda", answer_2: "Fried Chicken", answer_3: "Orlando")
sec_ans4 = SecurityAnswer.create(answer_1: "Georgina", answer_2: "Macaroni and Cheese", answer_3: "Miami")
sec_ans5 = SecurityAnswer.create(answer_1: "Marilyn", answer_2: "Tuna Salad", answer_3: "Hartford")

user1 =  User.create(name: "Jackie Daniels", user_name: "Jackyyy334", password: "daniels123", security_question_id: sec_ques.id,
security_answer_id: sec_ans1.id)
user2 =  User.create(name: "George Carlton", user_name: "Georgy123", password: "carl456", security_question_id: sec_ques.id,
security_answer_id: sec_ans2.id)
user3 =  User.create(name: "Timmy Tuner", user_name: "TimmmyT03",password: "password", security_question_id: sec_ques.id,
security_answer_id: sec_ans3.id)
user4 =  User.create(name: "Natalie Carmen", user_name: "Nat_Nat123", password: "natnatl", security_question_id: sec_ques.id,
security_answer_id: sec_ans4.id)
user5 =  User.create(name: "Samantha Hamilton", user_name: "Sammy_H05",password: "sammysosa", security_question_id: sec_ques.id,
security_answer_id: sec_ans5.id)


recipe1 =  Recipe.create(name: "Spagetti and Meatballs", user_id: user1.id, ingredients: "Spagetti, Tomato Sauce and Meatballs")
recipe2 =  Recipe.create(name: "Chicken Alfredo", user_id: user1.id, ingredients: "Alfredo Sauce, Chicken, and Pasta Noodles")
recipe3 =  Recipe.create(name: "Peanut Butter and Jelly Sandwhich", user_id: user2.id, ingredients: "Peaunut Butter, Bread, Jelly")
recipe4 =  Recipe.create(name: "Strawberry Shortcake", user_id: user2.id, ingredients: "Strawberries, Flour, Milk and Eggs ")
recipe5 =  Recipe.create(name: "Curry Goat W/ Rice", user_id: user3.id, ingredients: "Curry Powder, Goat Meat, Rice and Pepper")
