require 'spec_helper'

describe "User pages" do

 subject { page }
  describe "signup page" do
    
    before { visit new_user_registration_path}
    it { should have_selector('h1', :text => 'Sign Up')}
    it { should have_selector('title',
                        :text => "Bookshelf | Sign Up")}   
  end

  describe "profile page" do
	  let(:user) { FactoryGirl.create(:user) }
	  before { visit user_path(user) }
  end

  describe "signup" do
    before { visit new_user_registration_path }
    let(:submit) { "Sign up" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in :email, with: "user@example.com"
        fill_in :password, with: "foobar123"
        fill_in :password_confirmation, with: "foobar123"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(0)
      end
    end
  end


end