class MatchesController < ApplicationController

  def index
    @matches = Match.order(date: :desc, level: :asc)

    if params[:date].present?
      @matches = @matches.where(date: params[:date])
    end
  end

  def show
    @match = Match.find(params[:id])
    @request = Request.new
    if @match.geocoded?
      @marker = [
        {
          lat: @match.latitude,
          lng: @match.longitude
        }
      ]
    end
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    if @match.save
      redirect_to match_path(@match)
    else
      render new_match_path, status: :unprocessable_entity, alert: 'An error occured'
    end
  end

  def edit
    @match = Match.find(params[:id])
    @request = Request.where(match: @match).first
  end

  def update
    @match = Match.find(params[:id])
    @match.winner = params[:match][:winner]
    @match.update(match_params)
    @user = User.where(nickname: params[:match][:winner]).first
    @user.points =+ 50
    redirect_to profile_path
  end

  private
  def match_params
    params.require(:match).permit(:address, :modality, :price, :level, :date, :match_type, :winner)
  end
end
