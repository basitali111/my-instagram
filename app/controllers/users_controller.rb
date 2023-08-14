class UsersController < ApplicationController
  before_action :set_user

  def index
    if params[:search_query].present?
      @users = User.search(params[:search_query])
    else
      @users = User.all
    end
  end
  def show; end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
