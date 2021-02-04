class ArtifactsController < ApplicationController
    before_action :set_artifact, only: [:show, :edit, :update] #:destroy
    def index
        @artifacts = Artifact.all
    end 

    def show
    end

    def new
        @artifact = Artifact.new
    end 

    def create
        @artifact = Artifact.create(artifact_params)
        #Use create because it saves, new doesn't
        redirect_to artifact_path(@artifact)
    end 

    def edit 
    end 

    def update
        @artifact.update(artifact_params)
        redirect_to artifact_path(@artifact)
    end 

    private

    def artifact_params
        params.require(:artifact).permit(:name, :creator, :power)
        #Originally had *args in paren at method name and after permit
        #But in the lab this stuff broke so maybe type out arguments manually until you figure out why
    end 

    def set_artifact
        #@artifact = Artifact.find(params[:id])
    end 
end 