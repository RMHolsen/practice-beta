class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update]

    def index
        @projects = Project.all 
    end 

    def show
        render :layout => "project"
    end 

    def new
        @project = Project.new
    end 

    def create
        @project = Project.new(project_params)
        if @project.valid?
            @project.save
            redirect_to project_path(@project)
        else 
            render :new
        end 
    end 

    def edit 
    end 

    def update
        if @project.update(project_params)
            redirect_to project_path(@project)
        else 
            render :edit
        end 
    end 

    def destroy
    end 

    private

    def project_params
        params.require(:project).permit(:name, :length, :summary, :genre_name, :word_count, :user_id)
    end 

    def set_project
        @project = Project.find(params[:id])
    end 
end 