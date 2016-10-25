require_relative '../../lib/parsers/parser.rb'

RSpec.describe Parser do

  subject { described_class.new(filename) }

  describe "#initialize" do
    let(:filename) { "/destinations.json"}

    it "returns true when all required fields are present" do
      expect(subject).to be_a(Parser)
    end

  end

end