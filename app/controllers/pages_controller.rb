class PagesController < ApplicationController
  before_action :authenticate_user!
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
    @request = Request.where(match: @match_user)
    @request_user = Request.where(user_id: current_user)
  end

  def dashboard
    @my_requests = Request.where(user: current_user)
    @requests = Request.where(match: current_user.matches)
  end
end
