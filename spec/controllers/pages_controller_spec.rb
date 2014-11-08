require 'rails_helper'

RSpec.describe PagesController, :type => :controller do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "should have the right title" do
      get 'home'
      within('head title') { response.should
             have_content "Ruby on Rails Tutorial Sample App | Home" }
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get :contact
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      within('head title') { response.should have_content
                        "Ruby on Rails Tutorial Sample App | Contact"}
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      within('head title') { response.should have_content
                        "Ruby on Rails Tutorial Sample App | About"}
    end
  end
end
