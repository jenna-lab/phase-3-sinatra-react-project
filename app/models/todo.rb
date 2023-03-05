class Todo < ActiveRecord::Base
    belongs_to :category

    def self.create(title:, description:, due_date:, category_id:)
        todo = Todo.new(title: title, description: description, due_date: due_date)
        todo.category_id = category_id
        todo.save
        todo
      end
#       category = Category.find_by(name: "Work")
# todo = Todo.create(title: "Finish report", description: "Write a report about the project", due_date: Date.today + 7, category_id: category.id)
def update(title:, description:, due_date:, category_id:)
    self.title = title
    self.description = description
    self.due_date = due_date
    self.category_id = category_id
    save
  end
#   todo = Todo.find(1)
# category = Category.find_by(name: "Personal")
# todo.update(title: "Buy groceries", description: "Get milk, eggs, and bread", due_date: Date.today + 3, category_id: category.id)


def destroy
    self.category_id = nil
    super
  end
#   todo = Todo.find(1)
#   todo.destroy

def self.all_categories
    Category.joins(:todos).distinct
  end
#   categories = Todo.all_categories
end