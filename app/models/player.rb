class Player < ApplicationRecord
    has_and_belongs_to_many :moves
    belongs_to :dream
end 
    
