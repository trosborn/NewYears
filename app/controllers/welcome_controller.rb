class WelcomeController < ApplicationController
  def index
   @goals = Goal.all
  end
end
