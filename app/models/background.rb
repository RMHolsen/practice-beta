class Background < ActiveRecord::Base 
    belongs_to :project
    #Eventually this should have a boolean for project_draft
end 