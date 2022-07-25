require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    before(:all) do
      @product = create(:product)
    end
    
    before(:each) do
      ## Test the response to the get request
      get '/products' 

    end

    it "should respond with 200 ok" do 
      expect(response).to have_http_status(200)
    end

    it "should respond with json" do 
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end

    it "should include the right content" do 
      expect(response.body).to include('Black Hawk')
    end
  end
end
