class SessionsController < ApplicationController
  def new
    #Nothing needs to go here, because this just is for routing, the get method
  end

  def create
    if session[:name]
      redirect_to '/'
      #If the :name entry in the session hash already exists,
      #go to the index page
    elsif params[:name] != "" && params[:name]
      session[:name] = params[:name]
      redirect_to '/'
      #Otherwise, if the params have a name entry, which is not empty
      # set the sessions name entry to the parameters, then redirect to /
    else
      redirect_to '/sessions/new'
      #If the above isn't right, then you need to log in....
end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
