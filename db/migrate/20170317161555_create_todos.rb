class CreateTodos < ActiveRecord::Migration[5.0] #c1 create a migration table by typing rails g migration create_todos,
  def change
    create_table :todos do |t| #c2 create the name and description as below, 
      t.string :name
      t.text :description
    end
  end
end
