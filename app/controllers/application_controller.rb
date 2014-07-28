class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.gjhbjh
  protect_from_forgery with: :exception
  def index
    @profiles = Account.all
  end
  
  def show
    @profile = Account.find_by_id(params['id'])
    render 'show'
  end
  
  def create
    g = Account.new
    g.name = params['name']
    g.url = params['url']
    g.caption = params['caption']
    g.image = params['image']
    g.save
    redirect_to "/profiles"
  end
  
  def edit
    @profile = Account.find_by_id(params['id'])
    
  end
  
  def update
    g = Account.find_by_id(params['id'])
    g.name = params['name']
    g.url = params['url']
    g.caption = params['caption']
    g.image = params['image']
    g.save
    redirect_to "/profiles"
  end
  def destroy
    g = Account.find_by_id(params['id'])
    g.destroy
    redirect_to "/profiles"
  end
end
