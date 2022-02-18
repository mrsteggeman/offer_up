require 'rails_helper'

RSpec.describe "item_lists#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/item_lists/#{item_list.id}"
  end

  describe 'basic destroy' do
    let!(:item_list) { create(:item_list) }

    it 'updates the resource' do
      expect(ItemListResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { ItemList.count }.by(-1)
      expect { item_list.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq('meta' => {})
    end
  end
end
