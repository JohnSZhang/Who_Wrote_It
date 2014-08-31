require 'rails_helper'

RSpec.describe Author, :type => :model do
	let(:author) { FactoryGirl.create(:author)}
	subject { author }

	it { should respond_to(:name) }
	it { should respond_to(:nationality) }
	it { should respond_to(:birth) }
	it { should respond_to(:sex) }

	it { should be_valid }

	describe "when name is not present" do
		before { author.name = '' }
		it { should_not be_valid }
	end

end
