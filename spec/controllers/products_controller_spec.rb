require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do
  describe "#index" do

    describe "response" do
      before { get :index }

      it "responds successfully with an HTTP 200 status code" do
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end
    end

    it "assigns products to an instance variable" do
      Product.create(name: "robot", image: "image",price: 2000, description: "old robot", category: "dress")
      get :index
      expect(assigns(:products)).to eq(Product.all)
    end

  end

  describe "#show" do
    before do
      @product = Product.create(name: "robot", image: "image",price: 2000, description: "old robot", category: "dress")
      get :show, id: @product.id
    end

    describe "response" do

      it "returns a HTTP ok status" do
        expect(response).to have_http_status(:ok)
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end
    end

    it "shows the correct product" do
      expect(assigns(:product)).to eq(Product.find(@product.id))
    end
  end

end
