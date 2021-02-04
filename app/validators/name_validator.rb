class NameValidator < ActiveModel::Validator 

    def validate(record)
        unless record.name.match?(/regex/)
            record.errors[:name] << "Ah-ah-ah! You didn't say the magic word!"
        end 
    end 

end 