class StacksController < ApplicationController

  def index
    @stacks = Stack.all
    render json: @stacks
  end

  def new
  end

end