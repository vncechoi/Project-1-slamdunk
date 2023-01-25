class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :dreams
    has_many :players, :through => :dreams
end
