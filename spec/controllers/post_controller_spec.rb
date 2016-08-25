require 'rails_helper'

RSpec.describe Api::PostController, type: :controller do
  it { should route(:get, '/api/posts').to(action: :index )}
  it { should route(:get, '/api/posts/1').to(action: :show, id: 1 )}
end
