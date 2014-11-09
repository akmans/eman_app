require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
#  describe "GET /layout_links" do
#    it "works! (now write some real specs)" do
#      get layout_links_index_path
#      expect(response).to have_http_status(200)
#    end
#  end
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  it "should have a Home page at '/'" do
    get '/'
    expect(response.body).to include( @base_title + " | Home" )
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    expect(response.body).to include( @base_title + " | Contact" )
  end

  it "should have an About page at '/about'" do
    get '/about'
    expect(response.body).to include( @base_title + " | About" )
  end

  it "should have a Help page at '/help'" do
    get '/help'
    expect(response.body).to include( @base_title + " | Help" )
  end

  it "should have signup page at '/signup'" do
    get '/signup'
    expect(response.body).to include( @base_title + " | Sign up" )
  end
end
