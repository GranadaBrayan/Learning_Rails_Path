require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:article) { create(:article) }
  let(:comment) { create(:comment) }

  context 'validation test' do
    it 'has factory' do
      expect(create(:user)).to be_persisted
    end

    it 'user articles' do
      expect(user.articles.count).to eq(0)

      article.user = user

      expect(user.articles.count).to eq(1)
    end

    it 'user comments' do
      expect(user.comments.count).to eq(0)

      article.user = user

      comment.article = article

      expect(user.comments.count).to eq(1)
    end

    it 'user followers' do
      expect(user.followers.count).to eq(0)
    end

    it 'user followings' do
      expect(user.followings.count).to eq(0)
    end

    it 'confirms if respond to methods' do
      expect(subject).to respond_to(:articles)
      expect(subject).to respond_to(:comments)
      expect(subject).to respond_to(:followers)
      expect(subject).to respond_to(:followings)
      expect(subject).not_to respond_to(:show_user_articles)
    end
  end
end
