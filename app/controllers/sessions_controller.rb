
class SessionsController < ApplicationController
  def hello
    if !session[:name]
      redirect_to '/sessions/new'
    end
  end

  def new
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  def create
    session[:name] = params[:name]
    if session[:name] && !session[:name].empty?
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end
end
