require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
  	let(:user) { FactoryGirl.create(:user) }
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: 'Sign up') }
  end
end
