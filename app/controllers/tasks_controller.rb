class TasksController < ApplicationController
    skip_before_action :authorized, only: :index
    def index
        # tasks =  Task.find_by(user: current_user)
        tasks = Task.all
        
        render json: tasks
    end

    def create
        task = Task.create(task_params)
        if task.valid?
            render json: task, status: :created
        else
            render json: {error: "Task was not able to be created", messages: task.errors.full_messages}, status: :not_acceptable
        end  
    end

    def update
        task = Task.find(params[:id])

        if task.user == current_user
            task.update(task_params)
            render json: task, status: :ok
        else
            head :unauthorized
        end
    end


    def destroy
        task = Task.find(params[:id])
        if task.user == current_user
            task.destroy!
            render json: { messages: "task successfully removed"}, status: :ok
        else
            render json: {error: "You are not authorized to delete this task", messages: task.errors.full_messages}, status: :unauthorized
        end
    end


  private  


    def task_params
        params.require(:task).permit(:title,:description,:date, :completed?)
    end
end
