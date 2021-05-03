class StaticsController < ApplicationController
  def home
    render :file => "/app/views/statics/home/home.html.erb"
  end

  def tour_detail
    render :file => "/app/views/statics/tour_detail/tour_detail.html.erb"
  end
end

