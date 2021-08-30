require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let(:user) { create(:user) }
  let(:article) { create(:article) }
  let(:article_params) { { title: 'Article two', body: 'this is a test article for RSpec', status: 'public' } }

  before(:each) do
    sign_in(user)
  end

  context 'Get #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end

  context 'Get #show' do
    it 'returns a success response' do
      get :show, params: { id: article.id }
      expect(response).to be_successful
    end
  end

  context 'Get #create' do
    it 'returns a success response' do
      post :create, params: { article: article_params }
      expect(response).to redirect_to(Article.last)
      expect(Article.last.title).to eq('Article two')
    end
  end

  context 'Get #edit' do
    it 'returns a success response' do
      get :edit, params: { id: article.id }
      expect(response).to be_successful
    end
  end

  context 'Get #update' do
    it 'returns a success response' do
      patch :update, params: { id: article.id, article: { title: 'Article three' } }
      expect(response).to redirect_to(Article.last)
      expect(Article.last.title).to eq('Article three')
    end
  end

  context 'Get #destroy' do
    it 'returns a success response' do
      delete :destroy, params: { id: article.id }
      expect(response).to redirect_to(root_path)
      expect(Article.all.count).to eq(0)
    end
  end
end
