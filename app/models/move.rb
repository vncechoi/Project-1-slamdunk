class Move < ApplicationRecord
    has_and_belongs_to_many :players
    has_one_attached :image
end
