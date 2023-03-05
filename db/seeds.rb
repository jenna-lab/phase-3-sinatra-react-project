puts "Deleting old data..."
Category.destroy_all
Todo.destroy_all

puts "Creating categories..."
category1 = Category.create(name: "Work")
category2 = Category.create(name: "Personal")
category3 = Category.create(name: "Shopping")
category4 = Category.create(name: "Health")
category5 = Category.create(name: "Fitness")
category6 = Category.create(name: "Home")

puts "Creating Todos..."
Todo.create(title: "Finish project report", description: "Write up the findings and recommendations for the project report", due_date: DateTime.new(2023, 3, 31), category: category1)
Todo.create(title: "Take out the trash", description: "The trash is overflowing, it needs to be taken out", due_date: DateTime.new(2023, 3, 1), category: category2)
Todo.create(title: "Buy groceries", description: "We need to buy some groceries for the week", due_date: DateTime.new(2023, 3, 3), category: category3)
Todo.create(title: "Call mom", description: "It's been a while since we've talked, give her a call", due_date: DateTime.new(2023, 3, 2), category: category2)
Todo.create(title: "Schedule annual physical", description: "It's time for your yearly check-up", due_date: DateTime.new(2023, 4, 15), category: category4)
Todo.create(title: "Go for a run", description: "Get some exercise and go for a run around the park", due_date: DateTime.new(2023, 3, 6), category: category5)
Todo.create(title: "Clean the kitchen", description: "The kitchen needs a good scrubbing", due_date: DateTime.new(2023, 3, 8), category: category6)
Todo.create(title: "Pay bills", description: "Don't forget to pay the utility bills before they're due", due_date: DateTime.new(2023, 3, 10), category: category1)
Todo.create(title: "Read a book", description: "Take some time to relax and read a good book", due_date: DateTime.new(2023, 3, 7), category: category2)

# Seed your database here

puts "✅ Done seeding!"
