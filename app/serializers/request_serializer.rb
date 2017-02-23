class RequestSerializer < ActiveModel::Serializer
  attributes :id, :first_name_of_requester, :last_name_of_requester, :id_of_requester, :team
  has_one :user
  has_one :team

  def first_name_of_requester
    object.user.first_name
  end

  def last_name_of_requester
    object.user.last_name
  end

  def id_of_requester
    object.user.id
  end

end
