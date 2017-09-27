require 'harry_potter'

describe Shop do

  describe 'buy(book)' do

    context 'one book' do

      it 'allows you to purchase a book' do
        expect(subject.buy([1, 0])).to eq 8
      end

      it 'allows you to purchase multiple copies of the same book' do
        expect(subject.buy([4, 0])).to eq 32
      end
    end

    context 'two books' do

      it 'allows you to purchase a second book' do
        expect(subject.buy([1, 2])).to eq 24
      end
    end
  end

  describe 'discount' do
    it 'allows you to get a discount for your books' do
      expect(subject.discount([0, 1, 0, 0, 0])).to eq(0)
      expect(subject.discount([1, 1, 0, 0, 0])).to eq(5)
      expect(subject.discount([1, 1, 0, 1, 0])).to eq(10)
      expect(subject.discount([1, 1, 1, 1, 0])).to eq(20)
      expect(subject.discount([1, 1, 1, 1, 1])).to eq(25)
    end
  end
end
