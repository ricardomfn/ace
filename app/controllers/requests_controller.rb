class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    # @requests = current_user.requests
    @requests = Request.where(match: current_user.matches)
    # les demandes des autres a moi
  end

  def games
    @my_requests = Request.where(user: current_user)
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @match = Match.find(params[:match_id])
    @request = Request.new
  end

  def create
    @match = Match.find(params[:match_id])
    @request = Request.new
    @request.match = @match
    @request.user = current_user
    @request.save if Request.where(user_id: current_user, match_id: @match).count < 1
    # redirect_to la pop-up
  end

  def accepted?
    @request = Request.find(params[:id])
    @match = @request.match
    @request.status = "accepted"
    @request.save
    @match.archived = true # on modifie son etat
    @match.save
    redirect_to dashboard_path
  end

  def refused?
    @request = Request.find(params[:id])
    @request.status = "refused"
    @request.save
    redirect_to dashboard_path
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to matches_path
  end

  private

  def request_params
    params.require(:request).permit(:status)
  end
end
