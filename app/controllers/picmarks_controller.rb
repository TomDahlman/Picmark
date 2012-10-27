class PicmarksController < ApplicationController
  def index
    @pictures = Picture.all
  end
  
  def show
    @pic  = Picture.find(params[:id])
  end
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to 'all_pictures'
  end
  
  def edit
  end
  
  def update
    p = Picture.find(params[:id])
    p.url = params[:url]
    p.title - params[:title]
    p.save
    redirect_to 'one_picture'
  end
  
  def destroy
    Picture.destroy(params[:id])
    redirect_to 'all_pictures'
  end
  
end