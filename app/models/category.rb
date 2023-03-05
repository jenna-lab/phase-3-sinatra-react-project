class Category < ActiveRecord::Base
    has_many :todos

    def self.all_categories
        all
      end
#Category.all
      def self.create_category(name)
        create(name: name)
      end
#       category = Category.create_category("Work")
#       category = Category.create_category(name: "Work", description: "Tasks related to work")

def self.delete_category(id)
    category = find_by_id(id)
    category.destroy if category.present?
  end
# Category.delete_category(name: "Work")
# Category.delete_category(1)
end
