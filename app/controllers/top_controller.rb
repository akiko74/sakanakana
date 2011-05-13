class TopController < ApplicationController
  def index
    @pictures = Picture.limit(6)
  end


end
