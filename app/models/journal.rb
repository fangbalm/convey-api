class Journal < ApplicationRecord
  has_many :entry_categories
  has_many :entries

  belongs_to :user
end
