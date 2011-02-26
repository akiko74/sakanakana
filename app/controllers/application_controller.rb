class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_admin!, :except => [ :index, :show ]


  def title
    @title = "タオ島、他ダイビングスポットで出会った魚たち"
  end

end
