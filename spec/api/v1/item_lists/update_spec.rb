require 'rails_helper'

RSpec.describe "item_lists#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/item_lists/#{item_list.id}", payload
  end

  describe 'basic update' do
    let!(:item_list) { create(:item_list) }

    let(:payload) do
      {
        data: {
          id: item_list.id.to_s,
          type: 'item_lists',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(ItemListResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { item_list.reload.attributes }
    end
  end
end
