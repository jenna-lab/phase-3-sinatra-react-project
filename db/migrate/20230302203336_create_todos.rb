class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.boolean :completed, default: false
      t.references :category, foreign_key: true
      
      t.timestamps
    end
  end
end
