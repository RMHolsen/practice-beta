# BooksController 
The "longest way around" controller, does not include any refined functioning, uses form_tag
Includes validation; remember, validation only activates when records are saved to databases
-- Does not have an edit page yet

# CreaturesController
The "slightly shorter way around" controller, includes object_params as a private method for cleaner coding
Also uses Strong Params in object_params
Includes validation; remember, validation only activates when records are saved to databases
-- Does not have an edit page yet

# ArtifactsController
The cleanest code so far (2/2/2021), includes object_params and set_object as a private method
Uses the before_action to insert the set_object method in various places
Includes validation; remember, validation only activates when records are saved to databases

# GuildsController
Includes object_params and set_object, also deals with validations 

ALL DATABASES MIGRATED (2/2/2021)
(Note: as of Rails 5, models inherit from ApplicationRecord, not ActiveRecord::Base)