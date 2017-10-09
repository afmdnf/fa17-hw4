class ViewController < ApplicationController
	def index
		@user = User.all
		@cat = Cat.all
		@todo = Todo.all
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.save
		redirect_to view_path
	end

	def new
		@todo = Todo.new
	end
	
	private
		def todo_params
			params.require(:todo).permit(:tasks, :finished)
		end
end