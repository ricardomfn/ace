class PagesController < ApplicationController
  before_action :authenticate_user!
  def profile
  end

  def dashboard
    @my_requests = Request.where(user: current_user)
    @requests = Request.where(match: current_user.matches)
  end
end
