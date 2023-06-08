class PagesController < ApplicationController
  def profile
    user = current_user.id
    # membership = Membership.find(params[])
    # @leagues = League.where(user_id: user)
    members = Membership.where(user_id: user)
    @leagues = []
    members.each do |member|
      @leagues << member.league
    end
  end
end
