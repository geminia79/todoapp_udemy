class Todo < ApplicationRecord #c3, create a todo.rb
  #to create a todo > initiate a new Todo object > save the object to database , video 22
  validates :name, presence: true
  validates :description, presence: true  #todo7, it will vallidates 


end
