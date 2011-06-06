class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def characters
    @title = "Characters"
  end

  def packages
    @title = "Packages"
  end

  def about
    @title = "About"
  end 
end
