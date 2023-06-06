class MatchesController < ApplicationController

  def index
  end

  def show
    @match = Match.find(params[:id])
    @request = Request.new
    if @match.geocoded?
      @marker = [
        {
          lat: @match.latitude,
          lng: @match.longitude,
          marker_html: render_to_string(partial: "marker")
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
      redirect_to root_path
    else
      raise
      render new_match_path, status: :unprocessable_entity, alert: 'An error occured'
    end
  end


  def edit
  end

  private
  def match_params
    params.require(:match).permit(:address, :modality, :price, :level, :date, :type)
  end
end
