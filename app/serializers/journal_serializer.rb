class JournalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :private, :entries
  has_one :user
end
