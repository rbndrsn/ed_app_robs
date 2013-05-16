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

  def create
    @tag = Tag.new(params[:tag])
    respond_to do |format|
      if @tag.save
        format.html { redirect_to tags_path, notice: 'tag was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @tag = Tag.find(params[:id])
    respond_to do |format|
      format.html { }
      format.json { render json: @tag }
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @tag}
    end
  end

  def update
    @tag = Tag.find(params[:id])
    respond_to do |format|
      if @tag.update_attributes(params[:tag])
        format.html { redirect_to @tag, notice: 'tag was successfully updated.' }
        format.json { render json: @tag, status: :created, location: @tag }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end
end