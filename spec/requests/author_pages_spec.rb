require "rails_helper" 

describe "Author Pages" do 

	subject { page }

	describe "User Page" do
		let(:author) { FactoryGirl.create(:author) }
		before { visit author_path(author) }

		it { should have_title("Who Wrote It | Author") }
		it { should have_content("Sherlock Hummus") }
	end

	describe "All Authors Page" do
		let(:author) { FactoryGirl.create(:author) }
		let(:another_author) { FactoryGirl.create(:another_author) }
		before { visit authors_path }
		
		it { should have_title("Who Wrote It | All Authors") }
		it { should have_content("Sherlock Hummus") }
		it { should have_content("James Joyce") }
	end
	
end