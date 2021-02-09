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
Includes custom getter/setter method for genre (Forms and Basic Associations section)
Model validates type of project for one among a list,  no tests for this yet.

# GenresController
So far only a supporting object for the Projects controller, eventually to have more utility including sort_by methods, etc. 


ALL DATABASES MIGRATED (2/8/2021)
(Note: as of Rails 5, models inherit from ApplicationRecord, not ActiveRecord::Base)

PRACTICE
Your associations and syntax types need work <li><%= link_to "#{s.artist_name} - #{s.title}", song_path(s) %></li>
Practice the skills in the Forms and Basic Associations lab here if you want before you tackle the lab.