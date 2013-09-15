require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home page" do
     before { visit root_path }

    it { should have_selector('h1', :text => 'Welcome')}
    it { should have_selector('title',
                        :text => "Bookshelf | Home")}  
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title',
                        :text => "Bookshelf | Help")}
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', :text => 'About Us')}
    it { should have_selector('title',
                    :text => "Bookshelf | About Us")}
  end

  describe "Terms page" do
    before { visit terms_path }
    it { should have_selector('h1', :text => 'Terms and Conditions')}
    it { should have_selector('title',
                        :text => "Bookshelf | Terms and Conditions")}
  end

  describe "Privacy page" do
    before { visit privacy_path }
    it { should have_selector('h1', :text => 'Privacy')}
    it { should have_selector('title',
                        :text => "Bookshelf | Privacy Policy")}
  end

end
