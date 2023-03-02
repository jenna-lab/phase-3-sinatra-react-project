class CategoriesController <ApplicationController
    # Get all categories
 get '/categories' do
   categories = Category.all
   categories.to_json
 end
 
 #get category by id
 get '/categories/:id' do
   category = Category.find_by(id: params[:id])
   if category
     category.to_json
   else
     status 404
     { error: 'Category not found' }.to_json
   end
 end
 
 #create a new category
 post '/categories' do
   category = Category.new(params)
   if category.save
     status 201
     category.to_json
   else
     status 400
     { error: 'Unable to create category' }.to_json
   end
 end
 
 # Delete an existing category by ID
 delete '/categories/:id' do
   category = Category.find_by(id: params[:id])
   if category
     if category.destroy
       status 200
       { message: 'Category deleted' }.to_json
     else
       status 400
       { error: 'Unable to delete category' }.to_json
     end
   else
     status 404
     { error: 'Category not found' }.to_json
   end
 end
   
end