class TasksController < ApplicationController
    skip_before_action :authorized
    def index
        tasks =  Task.where(user: current_user)
        # tasks = Task.all
    #   byebug
        render json: tasks
    end

    def create
        
        task = Task.make_new_task(task_params)
        task.user = current_user
        if task.save
            render json: task, status: :created
        else
            render json: {error: "Task was not able to be created", messages: task.errors.full_messages}, status: :not_acceptable
        end  
    end

    def update
        task = Task.find(params[:id])

        if task.user == current_user
            task.update_task_and_chosen_hero( params:task_params)
            chosen_hero= ChosenHero.find_by(user: task.user)

            render json: {task: task, sprite:  {url: url_for(chosen_hero.hero.sprite), width: chosen_hero.hero.width, height: chosen_hero.hero.height ,steps:chosen_hero.hero.steps}, chosen_hero: ChosenHeroSerializer.new(chosen_hero)}, status: :ok
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
