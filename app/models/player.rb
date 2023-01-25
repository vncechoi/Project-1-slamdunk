class Player < ApplicationRecord
    has_and_belongs_to_many :moves
    has_and_belongs_to_many :dreams
end 
    
