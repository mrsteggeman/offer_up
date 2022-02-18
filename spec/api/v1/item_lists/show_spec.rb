require 'rails_helper'

RSpec.describe "item_lists#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/item_lists/#{item_list.id}", params: params
  end

  describe 'basic fetch' do
    let!(:item_list) { create(:item_list) }

    it 'works' do
      expect(ItemListResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('item_lists')
      expect(d.id).to eq(item_list.id)
    end
  end
end
