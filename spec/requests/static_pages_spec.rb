require 'spec_helper'

describe "StaticPages" do

  describe "Home /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Home")
    end
  end

  describe "Help /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      visit '/static_pages/help'
      page.should have_content('Sample App Help')
    end

    it "should have title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("Help")
    end
  end

  describe "About /static_pages" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

  	it "should have title 'About'" do
    	visit '/static_pages/about'
      expect(page).to have_title("About")
    end
    
  end

end
