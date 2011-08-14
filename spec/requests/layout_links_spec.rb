require 'spec_helper'

describe "LayoutLinks" do
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Characters page at '/characters'" do
    get '/characters'
    response.should have_selector('title', :content => "Characters")
  end
  
  it "should have a Packages page at /packages'" do
    get '/packages'
    response.should have_selector('title', :content => "Packages")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have a About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have the right links in the layout" do
    visit root_path
    click_link "Characters"
    response.should have_selector('title', :content => "Characters")
    click_link "Packages"
    response.should have_selector('title', :content => "Packages")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "About"
    response.should have_selector('title', :content => "About")
  end
end
