class TodosController < ApplicationController # D1 to make a new todoapp, create a todos_controller.rb in controllers folder. Always remember this, 1 controller and 1 action.
# cause you're creatin a /todos/new Url. once a controller is created, create a action called 'new' as below. once they found a new action, they will need a viewer.

    def new #D2
    @todo = Todo.new   #todo3, we need to initiate the Todo action, refer to notes at new.html.erb
  end

  def create  #todo3

    @todo = Todo.new(todo_params) #assign to method todo_params as below
    if @todo.save #todo5 to save it to database
      flash[:notice] = "Todo was created successfully!" #flash 1, is a hash that stores temp information, once info is out, it wil be discarded, message like this. got to view/layouts/application.html.erb
    redirect_to todo_path(@todo) #todo6,
  else
    render 'new' #this will bring you back to the new page in case error occur
  end
end

  def show #todo9 , create a file call show.html.erb at view/todos
    @todo = Todo.find(params[:id]) #todo11, they can grab that id and show it.. now go to show.html.erb

  end

  def edit # todo_edit1 , goto views/todos create a edit.html.erb
    @todo = Todo.find(params[:id])
  end

  def update #todo_edit4
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      flash[:notice] = "Todos was successfully updated"
      redirect_to todo_path(@todo) #send it back to todo that just updated
    else
      render 'edit' #if not , then go back to edit.html.erb

    end
  end


    private # only available to this controller

    def todo_params # todo4 , this is to allowing application to receive from the web.
      params.require(:todo).permit(:name, :description)
    end
end
