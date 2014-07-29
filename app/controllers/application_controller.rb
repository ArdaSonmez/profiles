class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.gjhbjh
  protect_from_forgery with: :exception
  def index
    @movies = Movies.all
  end
  
  def show
    @movie = Movies.find_by_id(params['id'])
    render 'show'
  end
  
  def create
    g = Movies.new
    g.image = params['image']
    g.save
    redirect_to "/movies"
  end
  
  def edit
    @movie = Movies.find_by_id(params['id'])
    
  end
  
  def update
    g = Movies.find_by_id(params['id'])
    g.image = params['image']
    g.save
    redirect_to "/movies"
  end
  def destroy
    g = Movies.find_by_id(params['id'])
    g.destroy
    redirect_to "/movies"
  end
end
