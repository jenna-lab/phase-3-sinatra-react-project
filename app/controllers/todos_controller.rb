class TodosController <ApplicationController
    #get all todos
    get '/todos' do
      todos = Todo.all
      todos.to_json
    end
  
    get '/todos/:id' do
      todos = Todo.find(params[:id])
      todos.to_json
    end 


   # Create todo
   post '/todos' do
    todo = Todo.new(params)
    if todo.save
      status 201
      todo.to_json
    else
      status 400
      { error: 'Unable to create todo' }.to_json
    end
  end
  
   # Delete todo
   delete '/todos/:id' do
    todo = Todo.find_by(id: params[:id])
    if todo
      if todo.destroy
        status 200
        { message: 'Todo deleted' }.to_json
      else
        status 400
        { error: 'Unable to delete todo' }.to_json
      end
    else
      status 404
      { error: 'Todo not found' }.to_json
    end
  end
  
  patch '/todos/:id' do
    todo = Todo.find(params[:id])
    todo.update(
      title:params[:title],
      description:params[:description],
      due_date:params[:due_date]
    )
    todo.to_json
  
  end
end
  