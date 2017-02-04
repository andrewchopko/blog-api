require 'rails_helper'

RSpec.describe Api::PostsController, type: :controller do
  it { should route(:get, '/api/posts').to(action: :index )}
  it { should route(:get, '/api/posts/1').to(action: :show, id: 1 )}

  describe '#create.json' do

    let(:params) do
      {
        name: "Test article name",
        content: "test article content"
      }
    end

    let(:post) { stub_model Post }

    before { expect(Post).to receive(:new).with(:params).and_return(:post) }

    before { expect(:post).to receive(:save!) }

    before { post :create, post: :params, format: :json }

    it { should render_template :create }

  end
end
