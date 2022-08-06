require "rails_helper"

RSpec.describe "Orders", type: :request do
  describe "GET /orders" do
    before(:all) do
      @user = create(:user, email: "newguytest@test.com", username: "newdude")
      create(:order, user_id: @user.id)
      
    end
context "with token" do
  before(:each) do
    token = JwtService.encode(@user)
    
    ## Test the response to the get request
    get "/orders", headers: { Authorization: "Bearer #{token}" }
  end

  it "should respond with 200 ok" do
    expect(response).to have_http_status(200)
  end

  it "should respond with json" do
    expect(response.content_type).to eq("application/json; charset=utf-8")
  end

  it "should include the right content" do
    expect(response.body).to include("12345")
  end
end

context "without token" do
  before(:each) do
    ## Test the response to the get request
    get "/orders"
  end

  it "should respond with 401 aunauthorized" do
    expect(response).to have_http_status(401)
  end

  it "should respond with json" do
    expect(response.content_type).to eq("application/json; charset=utf-8")
  end

  it "should include the right content" do
    expect(response.body).to include("You must be logged in")
  end
end
   
  end

  describe "POST /checkout" do
    before(:all) do
      @order_count = Order.count
      @new_user = create(:user, email: "newerguytest@test.com", username: "newdude2")
    end

    context "with token" do
      before(:each) do
        token = JwtService.encode(@new_user)
        post "/checkout", headers: { Authorization: "Bearer #{token}" }, params: { order: { number: 12930, total: 99.99, user_id: 2 } }
      end
      it "should create an order" do
        expect(response).to have_http_status(201)
      end
      it "should increase order count by 1" do
        expect(Order.count).to eq(@order_count + 1)
      end

      it "should contain the order content" do
        expect(response.body).to include("12930")
        expect(response.body).to include("99.99")
      end
    end

    context "without token" do
      before(:each) do
        post "/checkout", params: { order: { number: 12930, total: 99.99, user_id: 2 } }
      end
      it "should respond with 401 unauthorized" do
        expect(response).to have_http_status(401)
      end
      it "should not increase order count by 1" do
        expect(Order.count).to be @order_count
      end

      it "should respond with a not logged in  message" do
        expect(response.body).to include("You must be logged in")
      end
    end
  end
end
