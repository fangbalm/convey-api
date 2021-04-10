class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :mood, :content, :date
  has_one :journal
  has_one :prompt
end
