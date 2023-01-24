class Player < ApplicationRecord
    has_and_belongs_to_many :dreams
    has_and_belongs_to_many :moves
end 
    
