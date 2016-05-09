class WelcomeController < ApplicationController
	
  def index
  	@songs = Song.all
  end
end
