require 'rails_helper'

RSpec.describe Author, :type => :model do
	let(:author) { FactoryGirl.create(:author)}
	subject { author }

	it { should respond_to(:name) }

	it { should be_valid }

	describe "when name is not present" do
		before { author.name = '' }
		it { should_not be_valid }
	end

	describe "when name is too short" do
		before { author.name = 'short' }
		it { should_not be_valid }
	end

end
