require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :feature do
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  it "should have a Home page at '/'" do
    visit '/'
    expect(page).to have_title( @base_title + " | Home" )
  end

  it "should have a Contact page at '/contact'" do
    visit '/contact'
    expect(page).to have_title( @base_title + " | Contact" )
  end

  it "should have an About page at '/about'" do
    visit '/about'
    expect(page).to have_title( @base_title + " | About" )
  end

  it "should have a Help page at '/help'" do
    visit '/help'
    expect(page).to have_title( @base_title + " | Help" )
  end

  it "should have signup page at '/signup'" do
    visit '/signup'
    expect(page).to have_title( @base_title + " | Sign up" )
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title( @base_title + " | About" )
    click_link "Contact"
    expect(page).to have_title( @base_title + " | Contact" )
    click_link "Help"
    expect(page).to have_title( @base_title + " | Help" )
    click_link "Home"
    expect(page).to have_title( @base_title + " | Home" )
    click_link "Sign up now!"
    expect(page).to have_title( @base_title + " | Sign up" )
  end
end
