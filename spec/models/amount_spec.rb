require 'spec_helper'

module Plutus
  describe Amount do
    subject { FactoryGirl.build(:amount) }
    it { is_expected.not_to be_valid }  # construct a child class instead

    describe "validations" do
      it { is_expected.to validate_presence_of(:type) }
      it { is_expected.to validate_presence_of(:amount) }
      it { is_expected.to validate_presence_of(:entry) }
      it { is_expected.to validate_presence_of(:account) }
    end
  end
end
