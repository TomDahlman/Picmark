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
    p = Picture.new # this is fine, but remember that mass assignment is also an option
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to all_pictures # don't forget to add the _url to the method name
  end

  def edit
    @pic = Picture.find(params[:id])
  end

  def update
    p = Picture.find(params[:id])
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to 'one_picture' # make sure the method name is not in quotes, since it's not a string. So instead of 'one_picture', it should be one_picture_url(p.id), since the method needs the id of the object to get back to the show page
  end

  def destroy
    Picture.destroy(params[:id])
    redirect_to 'all_pictures' # same as line 30
  end

end