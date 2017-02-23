class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :first_name, :last_name, :profile_img
  has_many :teams
  has_many :requests
  has_many :incoming_requests
end
