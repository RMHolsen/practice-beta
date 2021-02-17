module ProjectsHelper

    def display_docs(project)
        if !project.backgrounds.empty?
            project.backgrounds.map do |b|
                #"#{b.support_type} - #{b.file_location}"
                b.support_type + " - " + b.file_location
            end 
        else 
            link_to("Would you like to log some support documents?", new_background_path)
        end 
    end 
end 