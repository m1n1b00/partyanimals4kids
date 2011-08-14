require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Party Animals"
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => @base_title + " | Contact")
    end
  end

  describe "GET 'characters'" do
    it "should be successful" do
      get 'characters'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'characters'
      response.should have_selector("title", :content => @base_title + " | Characters")
    end
  end

  describe "GET 'packages'" do
    it "should be successful" do
      get 'packages'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'packages'
      response.should have_selector("title", :content => @base_title + " | Party Packages")
    end
  end
  
  describe "GET 'rentals'" do
    it "should be successful" do
      get 'rentals'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'rentals'
      response.should have_selector("title", :content => @base_title + " | Costume Rentals")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => @base_title + " | About")
    end
  end

end
