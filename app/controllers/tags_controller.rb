class TagsController < ApplicationController

  def index
    @tags = Tag.all
    respond_to do |format|
      format.html { }
      format.json { render json: @tags }
    end
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find_by(id:params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @tag}
    end
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      redirect_to tags_path
    else
      flash[:error] = "Sorry there was an error saving your Tag"
      render action: "new"
    end
  end

  def show
    @tag = Tag.find_by(id:params[:id])
    respond_to do |format|
      format.html { }
      format.json { render json: @tag }
    end
  end

  def update
    @tag = Tag.find_by(id:params[:id])
    if @tag.update_attributes(params[:tag])
      redirect_to @tag
    else
      render action: "edit"
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

end