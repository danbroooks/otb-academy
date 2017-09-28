require 'lcd'

describe LCD do

  describe 'convert(num)' do

    it "can print a single digit" do
      expect(subject.convert("0")).to eq([
        ' _ ',
        '| |',
        '|_|',
      ].join("\n"))
    end

    it "can print multiple digits" do
      expect(subject.convert("01")).to eq([
        ' _    ',
        '| |  |',
        '|_|  |',
      ].join("\n"))
    end

    it "can print all the digits" do
      expect(subject.convert("0123456789")).to eq([
        ' _     _  _     _  _  _  _  _ ',
        '| |  | _| _||_||_ |_   ||_||_|',
        '|_|  ||_  _|  | _||_|  ||_| _|',
      ].join("\n"))
    end
  end
end

