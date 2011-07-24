class TopController < ApplicationController
  def index
    @pictures = Picture.order('RAND()').limit(6)
    @infos = Info.order('created_at desc').limit(3)
  end

end
