class StacksController < ApplicationController

  def index
    @stacks = Stack.all
  end

  def new
  end

end