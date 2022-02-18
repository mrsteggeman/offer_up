require "rails_helper"

RSpec.describe "item_lists#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/item_lists", params: params
  end

  describe "basic fetch" do
    let!(:item_list1) { create(:item_list) }
    let!(:item_list2) { create(:item_list) }

    it "works" do
      expect(ItemListResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["item_lists"])
      expect(d.map(&:id)).to match_array([item_list1.id, item_list2.id])
    end
  end
end
