class Dream < ApplicationRecord
    belongs_to :user
    has_many :players
    has_many :moves
end
