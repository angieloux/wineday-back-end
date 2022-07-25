require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "GET /orders" do

    before(:all) do 
      create(:order)
    end

    before(:each) do
      ## Test the response to the get request
      get '/orders' 

    end

    it "should respond with 200 ok" do 
      expect(response).to have_http_status(200)
    end

    it "should respond with json" do 
      expect(response.content_type).to eq("application/json; charset=utf-8")
    end

    it "should include the right content" do 
      expect(response.body).to include('12345')
    end
    
  end
end
