class User < ApplicationRecord
    has_many :runs 
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true
end
