require 'rails_helper'

RSpec.describe Book, :type => :model do
  let(:book) { FactoryGirl.create(:book)}
  subject { book }

  it { should respond_to(:title) }
  it { should respond_to(:content) }

  it { should be_valid }

  describe "when title is too short" do
    before { book.title = 'x' }
    it { should_not be_valid }
  end

  describe "when content is too short" do
    before { book.content = 'Call me Ishmael' }
    it { should_not be_valid }
  end
end
