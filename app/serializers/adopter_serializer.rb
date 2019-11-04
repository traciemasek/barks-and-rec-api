class AdopterSerializer < ActiveModel::Serializer
  attributes :id, :username, :dogs, :favorites, :application

end
