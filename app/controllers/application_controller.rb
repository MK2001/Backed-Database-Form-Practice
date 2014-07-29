class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   def show
    @database = Database.find_by_id(params['id'])
    render 'show'
end
  
  def new
  end
  
  def create
    d = Database.new
    d.name = params['name']
    d.email = params['email']
    d.save
    redirect_to "/databases/#{ d.id }"
  end
end
