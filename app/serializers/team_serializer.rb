class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :vacant_spots, :status, :requests, :team_owner, :spots_remaining
  # has_one :user
  has_many :requests

  def team_owner
    UserSerializer.new(object.user).attributes
  end

  def spots_remaining
    object.vacant_spots - object.requests.length
  end

end
