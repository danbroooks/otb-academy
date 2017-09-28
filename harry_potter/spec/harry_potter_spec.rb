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

    context 'multiple books' do
      it 'allows you to purchase a second book' do
        expect(subject.buy([1, 2])).to eq 23.2
        expect(subject.buy([1, 1, 1])).to eq 21.60
        expect(subject.buy([1, 1, 1, 1])).to eq 25.60
        expect(subject.buy([1, 1, 1, 1, 1])).to eq 30.00
        expect(subject.buy([2, 0, 0, 0, 0])).to eq 16.00
        expect(subject.buy([2, 1, 0])).to eq 23.20
        expect(subject.buy([2, 1, 1])).to eq 29.60
      end

      it 'allows you to purchase multiple books and applies a discount' do
        expect(subject.buy([2, 2, 2, 1, 1])).to eq 51.20
      end
    end
  end
end
