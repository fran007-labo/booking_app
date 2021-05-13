class ApplicationController < ActionController::Base

  # 例外処理
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404

  def render_404
    render template: 'errors/404', status: 404, layout: 'application', content_type: 'text/html'
  end
  
end
