require 'spec_helper'

describe Candidate do

  describe '#roles' do

    it 'returns an array of roles' do
      candidate = Fabricate(:candidate)
      expect(candidate.roles).to eq ["Front-end", "Back-end"]
    end

  end
end
