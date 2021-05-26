class RecipesController < ApplicationController
  include ThirdParty

  before_action :load_resource

  def index;end

  def show;end

  protected

  def load_resource
    case action_name
    when "index"
      @recipes = client.entries(content_type: "recipe", include: 1)
    when "show"
      @recipe = client.entry(params[:slug])
    end
  end
end