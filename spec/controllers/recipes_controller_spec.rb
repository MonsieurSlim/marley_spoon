require "rails_helper"

describe RecipesController, type: :controller do

  describe "GET#index" do
    subject { get :index }

    expect(assigns(:recipes)).not_to be(nil)
    expect(subject).to render_template(:index)
  end

  describe "GET#show" do
    subject { get :show, params: { slug: "" } }

    expect(assigns(:recipe)).not_to be(nil)
    expect(subject).to render_template(:show)
  end
end