class TodoList < ApplicationRecord
    has_many :todo_items

    # def destroyRecord
    #     self.destroy
    # end
end
