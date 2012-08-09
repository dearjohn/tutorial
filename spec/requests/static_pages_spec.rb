require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end
  	it "shoudl have the base title" do
  		visit "/static_pages/home"
  	  page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
  	end
    it "should have not a custom page title 'Home'" do
      visit "/static_pages/home"
      page.should_not have_selector('title',:text => "Home")
    end
  end

  describe "help page" do
  	it "should have the h1 'help'" do
  		visit'/static_pages/help'
  		page.should have_selector('h1', :text => "Help")
  	end
  	it "should have the right title" do
  		visit "/static_pages/help"
  		page.should have_selector('title',
  					:text => "Ruby on Rails Tutorial Sample App | Help")
  	end
  	it "should have the content 'help'" do
  		visit "/static_pages/help"
  		page.should have_content('help')
  	end
  end

  describe "about page" do
  	it "should have the  h1 'About Us'" do
  		visit'/static_pages/about'
  		page.should have_selector('h1', :text => "About Us")
  	end
  	it "should have the right title 'About Us'" do
  		visit "/static_pages/about"
  		page.should have_selector('title',
  					:text => "Ruby on Rails Tutorial Sample App | About Us")
  	end
  end

end
