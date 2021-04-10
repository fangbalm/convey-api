class Prompt < ApplicationRecord
  has_many :entries 
  
  belongs_to :user, optional: true
  belongs_to :category
end
