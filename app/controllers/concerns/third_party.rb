module ThirdParty
  extend ActiveSupport::Concern

  included do
    helper_method :per_page, :current_page, :pages

    def client
      @client ||= Contentful::Client.new(
        space: ENV["CONTENTFUL_SPACE_ID"],
        access_token: ENV["CONTENTFUL_ACCESS_TOKEN"],
        dynamic_entries: :auto
      )
    end

    def skip_content
      @skip_content ||= (current_page - 1) * per_page
    end

    def per_page
      @per_page ||= 50
    end

    def pages
      @pages ||= ((@total.to_f/per_page).ceil)
    end

    def current_page
      @current_page ||= [params[:page].to_i, 1].max
    end
  end
end
