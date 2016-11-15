require 'rails_helper'
require 'spec_helper'

# RSpec.describe "StaticPages", :type => :request do
#   describe "GET /static_pages" do
#     it "works! (now write some real specs)" do
#       get static_pages_index_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

#5.3.4 GOOD RSPEC MODIFICATION.
describe "Static pages" do
  describe "Home page" do
    before { visit root_path }
    it "should have the content 'Sample App'" do
      # visit '/static_pages/home'
      page.should have_content('Sample App')
    end

  	it "should have the right title" do
  	  # visit '/static_pages/home'
  	  page.should have_title("Ruby")
  	  #Below are depricated functions.
  	end
  end

   describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

    describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end

end