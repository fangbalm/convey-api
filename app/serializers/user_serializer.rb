class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :gender, :ethnicity, :lgbt_status, :disability_status, :immigration_status, :journals, :entries
end
