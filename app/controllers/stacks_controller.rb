class StacksController < ApplicationController

  def index
    @stacks = Stack.all
    respond_to do |format|
      format.html { }
      format.json { render json: @stacks }
    end
  end

  def new
    @stack = Stack.new
  end

  def create
    @stack = Stack.new(params[:stack])
    respond_to do |format|
      if @stack.save
        format.html { redirect_to stacks_path, notice: 'stack was successfully created.' }
        format.json { render json: @stack, status: :created, location: @stack }
      else
        format.html { render action: "new" }
        format.json { render json: @stack.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @stack = Stack.find(params[:id])
    respond_to do |format|
      format.html { }
      format.json { render json: @stack }
    end
  end

   def edit
    @stack = Stack.find(params[:id])
    respond_to do |format|
      format.html { }
      format.json { render :json => @stack }
    end
  end

  def update
    @stack = Stack.find(params[:id])
    respond_to do |format|
      if @stack.update_attributes(params[:stack])
        format.html { redirect_to @stack, notice: 'stack was successfully updated.' }
        format.json { render json: @stack, status: :created, location: @stack }
      else
        format.html { render action: "edit" }
        format.json { render json: @stack.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stack = Stack.find(params[:id])
    @stack.destroy
    redirect_to stacks_path
  end
end
