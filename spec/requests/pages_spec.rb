require 'rails_helper'

describe "CMS Pages" do
	describe "static pages" do

		describe "Home Page" do
			before { visit root_path }
			it { is_expected.to have_title('Who Wrote It')}
			it { is_expected.to have_content('Welcome') }
			it { is_expected.to have_link ('Start')}
		end

	end
end
