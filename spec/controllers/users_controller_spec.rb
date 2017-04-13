require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  describe "POST #create_user" do
    it "responds successfully with an HTTP 200 status code" do
      user_params = {:user => {
        :username => "example2",
        :name => "Example User",
        :email => "user@example.com",
        :password => "changeme",
        :password_confirmation => "changeme"
      }}

      post :create_user, user_params
      expect(response).to have_http_status(200)
    end
  end

  # describe "GET #show_all_users" do
  # end
  #
  # describe "GET #show_user" do
  # end
  #
  # describe "GET #edit_user" do
  # end
  #
  # describe "POST #update_user" do
  # end
  #
  # describe "DELETE #delete_user" do
  # end
end
