class User < ApplicationRecord
    has_many :journals
    has_many :entries, through: :journals
    has_many :prompts 
    
    has_secure_password
end
