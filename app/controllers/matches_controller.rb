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
  end

  private
  def match_params
    params.require(:match).permit(:address, :modality, :price, :level, :date, :match_type)
  end
end
