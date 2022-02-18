require "rails_helper"

RSpec.describe ItemListResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "item_lists",
          attributes: {},
        },
      }
    end

    let(:instance) do
      ItemListResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { ItemList.count }.by(1)
    end
  end

  describe "updating" do
    let!(:item_list) { create(:item_list) }

    let(:payload) do
      {
        data: {
          id: item_list.id.to_s,
          type: "item_lists",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      ItemListResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { item_list.reload.updated_at }
      # .and change { item_list.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:item_list) { create(:item_list) }

    let(:instance) do
      ItemListResource.find(id: item_list.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { ItemList.count }.by(-1)
    end
  end
end
