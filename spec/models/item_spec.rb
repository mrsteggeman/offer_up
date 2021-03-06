require "rails_helper"

RSpec.describe Item, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should have_many(:messages) }

    it { should belong_to(:category) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
