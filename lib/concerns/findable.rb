require 'pry'

module Findable
    
    
    module ClassMethods

        # DONT FORGET TO REMOVE SELF!!!
        def find_by_name(name)
            all.detect{|a| a.name == name}
            # binding.pry
        end

    end

end