puts "Deleting old data..."
Category.destroy_all
Todo.destroy_all

puts "Creating categories..."
category1 = Category.create(name: "Work")
category2 = Category.create(name: "Personal")
category3 = Category.create(name: "Shopping")

puts "Creating Todos..."
Todo.create(title: "Finish project report", description: "Write up the findings and recommendations for the project report", due_date: DateTime.new(2023, 3, 31), category: category1)
Todo.create(title: "Take out the trash", description: "The trash is overflowing, it needs to be taken out", due_date: DateTime.new(2023, 3, 1), category: category2)
Todo.create(title: "Buy groceries", description: "We need to buy some groceries for the week", due_date: DateTime.new(2023, 3, 3), category: category3)
Todo.create(title: "Call mom", description: "It's been a while since we've talked, give her a call", due_date: DateTime.new(2023, 3, 2), category: category2)

# Seed your database here

puts "✅ Done seeding!"
