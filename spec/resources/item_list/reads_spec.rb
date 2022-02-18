require 'rails_helper'

RSpec.describe ItemListResource, type: :resource do
  describe 'serialization' do
    let!(:item_list) { create(:item_list) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(item_list.id)
      expect(data.jsonapi_type).to eq('item_lists')
    end
  end

  describe 'filtering' do
    let!(:item_list1) { create(:item_list) }
    let!(:item_list2) { create(:item_list) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: item_list2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([item_list2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:item_list1) { create(:item_list) }
      let!(:item_list2) { create(:item_list) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            item_list1.id,
            item_list2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            item_list2.id,
            item_list1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
