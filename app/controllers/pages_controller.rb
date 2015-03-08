class PagesController < ApplicationController

  skip_before_filter :authentikate_user, only: [:index]

  def index
    render text: '', layout: true
  end

end
