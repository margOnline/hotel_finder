require_relative '../../lib/models/hotel.rb'

RSpec.describe Hotel do

  subject { described_class.new }

  describe "#valid?" do
    it "returns true when all required fields are present" do
      subject.name = "Hilton"
      subject.country = "United Kingdom"
      subject.city = "London"
      subject.current_price = "199"
      expect(subject.valid?).to be_truthy
    end

    it "returns false when all required fields are NOT present" do
      expect(subject.valid?).to be_falsey
    end
  end

end