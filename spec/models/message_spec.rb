require 'rails_helper'

RSpec.describe Message, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:sender) }

    it { should belong_to(:item_details) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
