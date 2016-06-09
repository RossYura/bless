class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!

  def home
    if signed_in?
    @post  = current_user.microposts.build
    @feed_items = current_user.feed.paginate(page: params[:page])
  end
    end
end
