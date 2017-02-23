class Team < ApplicationRecord
  belongs_to :user
  has_many :requests
  before_create :set_default_status

  # You are not the owner
  #
  def self.available_teams(id)
    teams = self.all.select{ |team| (team.status == 'active' && team.user_id != id) }
    teams = teams.reject do |team|
      team.requests.select{ |request| request.user_id == id }.length > 0
    end
    teams
  end

  private

  def set_default_status
    self.status = "active"
  end


end
