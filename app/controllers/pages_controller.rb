class PagesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :desk


  def profile
    user = current_user.id
    # membership = Membership.find(params[])
    # @leagues = League.where(user_id: user)
    members = Membership.where(user_id: user)
    @leagues = []
    members.each do |member|
      @leagues << member.league
    end
    @matches_user = Match.where(user_id: current_user)
    @request_user = Request.where(user_id: current_user)
  end

  def dashboard
    @requests = []
    @requests += Request.where(match: current_user.matches).to_a
    @requests += Request.where(user: current_user).to_a
    @requests = @requests.sort_by { |r| -r.id }.uniq
  end

  def desk
  end
end
