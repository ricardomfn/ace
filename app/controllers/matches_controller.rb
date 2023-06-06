class MatchesController < ApplicationController
  def index
    @matches = Match.order(date: :desc, level: :asc)

    if params[:date].present?
      @matches = @matches.where(date: params[:date])
    end
  end

  def show
  end

  def new
  end

  def edit
  end
end
