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
    if @stack.save
      redirect_to stacks_path
    else
      flash[:error] = "Sorry there was an error saving your Stack"
      render action: "new"
    end
  end

  def show
    @stack = Stack.find_by(id:params[:id])
    respond_to do |format|
      format.html { }
      format.json { render json: @stacks }
    end
  end

   def edit
    @stack = Stack.find_by(id:params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @stack}
    end
  end

  def update
    @stack = Stack.find_by(id:params[:id])
    if @stack.update_attributes(params[:stack])
      redirect_to @stack
    else
      render action: "edit"
    end
  end

  def destroy
    @stack = Stack.find(params[:id])
    @stack.destroy
    redirect_to stacks_path
  end

end