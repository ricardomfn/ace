class MembershipsController < ApplicationController

  def new
    @league = League.find(params[:league_id])
    @users = User.all
    @membership = Membership.new

    if params[:query].present?
      sql_query = "users.nickname ILIKE :query"
      @user_collection = User.where(sql_query, query: "%#{params[:query]}%")
    else
      @user_collection = User.all
    end

    @user_collection = @user_collection - @league.users
  end


  def create
    @users = params[:membership][:user]
    @league = params[:league_id]

    @users.each do |user|
      membership = Membership.new(user_id: user, league_id: @league)
      membership.save
    end
    redirect_to league_path(@league)
  end

  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    redirect_to league_path(@membership.league), status: :see_other
  end

  private

  def render_new
    @membership = Membership.new
    @membership.errors.add(:base, "A selected already exists")
    render :new, status: :unprocessable_entity
  end
end
