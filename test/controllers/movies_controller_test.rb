require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  describe MoviesController do
    it "should get index" do
      get "/movies"
      must_respond_with :success
    end
  end
end
