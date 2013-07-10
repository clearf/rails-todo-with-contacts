class WelcomeController < ApplicationController
  def index
    redirect_to('/todos')
  end

end

