require 'rails_helper'

describe "CMS Pages" do
	describe "static pages" do

		subject { page }

		describe "Home Page" do
			before { visit root_path }
			it { is_expected.to have_title('Who Wrote It Home')}
			it { is_expected.to have_content('Take a Quiz!') }
			it { is_expected.to have_link ('Quiz')}
			it { is_expected.to have_link ('About')}
			it { is_expected.to have_link ('Books')}
		end

		describe "About Page" do
			before { visit about_path }
			it { is_expected.to have_title('Who Wrote It About')}
			it { is_expected.to have_content('Why did hulk') }
			it { is_expected.to have_link ('Quiz')}
			it { is_expected.to have_link ('About')}
			it { is_expected.to have_link ('Books')}
		end
	end
end