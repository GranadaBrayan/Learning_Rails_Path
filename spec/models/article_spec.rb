require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'has valid factory' do
    create(:user)
    expect(build(:article)).to be_valid
  end

  context 'has valid attributes' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_least(10) }
  end

  context 'has valid associations' do
    it {  is_expected.to belong_to(:user).class_name('User') }
    it {  is_expected.to have_many(:comments).class_name('Comment') }
  end
end
