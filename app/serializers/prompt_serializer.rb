class PromptSerializer < ActiveModel::Serializer
  attributes :id, :prompt
  has_one :user
  has_one :category
end
