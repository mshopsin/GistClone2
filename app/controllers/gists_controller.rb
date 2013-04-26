class GistsController < ApplicationController
  respond_to :json

  def create
    @gist.new(params[:gist])
    if @gist.save
      render @gist
    else
      render @gist.erros, status: 422
    end
  end

  #all
  def index
    @gists = Gist.all
    render json: @gists
  end

  #user
  def show
    @gists = Gist.where(session[:remember_token])
    render json: @gists
  end

  def destroy
    Gist.find(params[:id]).destroy
  end
end
