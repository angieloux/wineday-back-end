require "rails_helper"

RSpec.describe "Products", type: :request do
  before(:all) do
    create(:product)
  end

  describe "GET /products" do
    before(:each) do
      ## Test the response to the get request
      get "/products"
    end

    it "should respond with 200 ok" do
      expect(response).to have_http_status(200)
    end

    it "should respond with json" do
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end

    it "should include the right content" do
      expect(response.body).to include("Black Hawk")
    end
  end

  describe "GET /products/:id" do
    context "valid product id" do
      before(:each) do
        get "/products/1"
      end
      it "should respond with 200 ok" do
        expect(response).to have_http_status(200)
      end

      it "should respond with json" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end

      it "should include the right content" do
        expect(response.body).to include("Black Hawk")
      end
    end

    context "invalid product id" do
      before(:each) do
        get "/products/2"
      end
      it "should respond with 404" do
        expect(response).to have_http_status(404)
      end

      it "should respond with json" do
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end

      it "should not have content" do
        expect(response.body).to include("Unable to find product")
      end
    end
  end
end
