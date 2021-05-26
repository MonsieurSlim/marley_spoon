require "rails_helper"

describe RecipesController, type: :controller do

  describe "GET#index" do
    subject { get :index }

    it "tries to load the recipes" do
      subject
      expect(assigns(:recipes)).not_to be(nil)
    end

    it "renders the index template" do
      expect(subject).to render_template(:index)
    end
  end

  describe "GET#show" do
    subject { get :show, params: { slug: "3orieUe6ejxSFxY" } }

    it "fetches the chefs" do
      subject
      expect(assigns(:chefs)).not_to be(nil)
    end

    it "renders the correct template whether or not it finds the recipe" do
      expect(subject).to render_template(:show)
    end
  end
end