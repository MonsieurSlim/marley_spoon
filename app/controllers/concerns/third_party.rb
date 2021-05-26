module ThirdParty
  extend ActiveSupport::Concern

  included do
    def client
      @client ||= Contentful::Client.new(
        space: ENV["CONTENTFUL_SPACE_ID"],
        access_token: ENV["CONTENTFUL_ACCESS_TOKEN"],
        dynamic_entries: :auto
      )
    end
  end
end
