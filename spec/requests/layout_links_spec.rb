require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
#  describe "GET /layout_links" do
#    it "works! (now write some real specs)" do
#      get layout_links_index_path
#      expect(response).to have_http_status(200)
#    end
#  end

  it "should have a Home page at '/'" do
    get '/'
    within('head title') { response.should have_content "Home" }
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    within('head title') { response.should have_content "Contact" }
  end

  it "should have an About page at '/about'" do
    get '/about'
    within('head title') { response.should have_content "About" }
  end

  it "should have a Help page at '/help'" do
    get '/help'
    within('head title') { response.should have_content "Help" }
  end
end
