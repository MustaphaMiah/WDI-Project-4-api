class Request < ApplicationRecord
  belongs_to :user
  belongs_to :team

  after_create :check_update_team

  def check_update_team
    if self.team.requests.length >= self.team.vacant_spots
      self.team.status = 'finished'
      self.team.save!
    end
  end

end
