require 'harry_potter'

describe HarryPotter do

  describe 'buy(book)' do

    it 'allows you to purchase a book' do
      expect(subject.buy(1)).to eq 8
    end
  end
end
