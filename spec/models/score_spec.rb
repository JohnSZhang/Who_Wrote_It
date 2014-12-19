require 'rails_helper'

RSpec.describe Score, :type => :model do
  let(:score) { FactoryGirl.create(:score) }
  subject { score }

  it { should respond_to(:name) }
  it { should respond_to(:points) }

  it { should be_valid }

  describe "not good when name is not present" do
    before { score.name = '' }
    it { should_not be_valid }
  end

  describe "not good when negative points" do
    before do
      score.name = 'test'
      score.points = -200
    end
    it { should_not be_valid }
  end

end
