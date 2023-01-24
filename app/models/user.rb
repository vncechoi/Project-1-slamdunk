class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_and_belongs_to_many :dreams
end
