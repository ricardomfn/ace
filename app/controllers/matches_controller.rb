class MatchesController < ApplicationController
  def index
    @matches = Match.order(date: :desc, level: :asc)

    if params[:query].present?
      @matches = @matches.where("address ILIKE ?", "%#{params[:query]}%")
    end

    if params[:date].present?
      @matches = @matches.where("date ILIKE ?", "%#{params[:date]}%")
    end
  end


  def show
  end

  def new
  end

  def edit
  end
end
