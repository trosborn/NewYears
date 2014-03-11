class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      @goals = current_user.goals.all
    else
      @goals = Hash.new
    end
  end
end
