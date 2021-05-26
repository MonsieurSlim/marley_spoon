class RecipesController < ApplicationController
  include ThirdParty

  before_action :load_resource

  def index;end

  def show;end

  protected

  def load_resource
    case action_name
    when "index"
      @recipes = client.entries(content_type: "recipe", skip: skip_content, limit: per_page)
      @total = @recipes.total
    when "show"
      @recipe = client.entry(params[:slug])
      @chefs = client.entries(content_type: "chef").collect(&:name)
    end
  end
end