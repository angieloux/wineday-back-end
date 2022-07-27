require "rails_helper"

RSpec.describe "Auths", type: :request do
  describe "POST /auth/login" do
    before(:all) do
      @user = create(:user)
    end
    context "with valid credentials" do
      before(:each) do
        post "/auth/login", params: { auth: { email: "test@testing.com", password: "password1" } }
      end

      it "should return 200 ok status" do
        expect(response).to have_http_status(200)
      end

      it "should include a jwt and username" do
        expect(response.body).to include("jwt")
        expect(response.body).to include("mrtest")
      end
    end

    context "with invalid credentials" do
      before(:each) do
        post "/auth/login", params: { auth: { email: "test@testing.com", password: "passworssssd1" } }
      end

      it "should return 422 ok status" do
        expect(response).to have_http_status(422)
      end

      it "should include a jwt and username" do
        expect(response.body).to include("Incorrect email or password")
      end
    end
  end

  describe "POST /auth/register" do
    context "with valid credentials" do
      before(:all) do
        @user_count = User.count
      end
      before(:each) do
        post "/auth/register", params: { auth: { email: "newguy@testing.com", password: "password1", username: "NewGuy", password_confirmation: "password1" } }
      end

      it "should return 201 created status" do
        expect(response).to have_http_status(201)
      end

      it "should include a jwt and username" do
        expect(response.body).to include("jwt")
        expect(response.body).to include("NewGuy")
      end

      it "should increase user count" do
        expect(User.count).to eq(@user_count + 1)
      end
    end
  end
end
