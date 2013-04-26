class UsersController < ApplicationController
  respond_to :json

  def create
    @users = User.all
    render json: @users
  end

  def index
  end
end
