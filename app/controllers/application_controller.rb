class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  respond_to :html, :json
  rescue_from Contentful::BadRequest, :with => :not_found

  def not_found(exception)
    respond_to do |format|
      format.json { render json: { status: "error", message: exception.message }, status: :not_found }
      format.html { render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found }
    end
  end
end
