class TodoItemsController < ApplicationController
    before_action :set_todo_list
    #before action does that thing before doing anything else
    #same for after action
    
    def create
        @todo_item = @todo_list.todo_items.create(todo_item_params)
        redirect_to @todo_list
    end
    #above id equivalent to function create(){} of js
    private

    def set_todo_list
        @todo_list = ToDoList.find(params[:todo_list_id])
        #this will take the id from the URL given via get request
        #and set it in the todo_list variable in the beginning only
    end

    def todo_item_params
        params[:todo_items].permit(:content)
        #: is for key
        #permit will allow those attributes for updation
    end
end
