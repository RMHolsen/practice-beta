# BooksController 
The "longest way around" controller, does not include any refined functioning, uses form_tag
Includes validation for title and author, summary length of 500 characters, and use of allow_blank; remember, validation only activates when records are saved to databases
Added rspec tests (to run type "rspec" instead of "learn"). Note: features test duplicates controllers tests, largely.
-- Does not have an edit page yet

# CreaturesController
The "slightly shorter way around" controller, includes object_params as a private method for cleaner coding
Also uses Strong Params in object_params
Includes validation; remember, validation only activates when records are saved to databases
Demonstrates the edit and delete code for form_tag
Has Rspec tests for model
-- Doublecheck the params are okay for edit code

# ArtifactsController
The cleanest code so far (2/2/2021), includes object_params and set_object as a private method
Uses the before_action to insert the set_object method in various places
Includes validation for name length; remember, validation only activates when records are saved to databases
Includes notes on validation as a separate method.

# GuildsController
Includes object_params and set_object, also deals with validations 
Uses form_for structure
Has Rspec tests for model
-- See scrapcode

# UsersController
Includes secure password, email confirmation validations. Rspec tests written to check validation
A user has_many projects

# ProjectsController
Includes Autocomplete in menu
Includes custom getter/setter method for genre (Forms and Basic Associations section) in order to allow people to create new genres (e.g. Cowboy Bebop)
Includes an array in the Project model for project types for purposes of generating a drop-down menu. Hopefully other opportunities for drop-down menus will arise though.

# GenresController
So far only a supporting object for the Projects controller, eventually to have more utility including sort_by methods, etc. 

# BackgroundsController
Practicing drop-down menu to select a project to assign a background file
Eventually will add a boolean to state whether or not there is an associated project draft
Tried to create an array of file locations, didn't work because the original associated file type can't be a string


ALL DATABASES MIGRATED (2/8/2021)
(Note: as of Rails 5, models inherit from ApplicationRecord, not ActiveRecord::Base)


PRACTICE
Your associations and syntax types need work <li><%= link_to "#{s.artist_name} - #{s.title}", song_path(s) %></li>
As of 2/11/2021 we are NOT working with the user function in terms of login, logout, and display. Future plans will include having projects display only to the user but all worldbuilding data as free for the taking, but right now we're not working with any security or authorization/verification protocols. Haven't learned it, not going to work with it. 
