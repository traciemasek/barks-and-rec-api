class AdopterSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :dogs, :favorites, :application, :tasks, :notifications

end
