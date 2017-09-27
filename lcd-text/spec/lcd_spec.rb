require 'lcd'

describe LCD do

  describe 'convert(num)' do

    it "converts a number to a LCD representation (0)" do
      expect(subject.convert(0)).to eq <<~SQUIGGLY_HEREDOC
      _
     | |
     |_|
      SQUIGGLY_HEREDOC
    end

    it "converts 1 to an LCD representation" do
      expect(subject.convert(1)).to eq <<~SQUIGGLY_HEREDOC

        |
        |
  SQUIGGLY_HEREDOC
    end

    it "converts 2 to an LCD representation" do
      expect(subject.convert(2)).to eq <<~SQUIGGLY_HEREDOC
      _
      _|
     |_
  SQUIGGLY_HEREDOC
    end

    it "converts 3 to an LCD representation" do
      expect(subject.convert(3)).to eq <<~SQUIGGLY_HEREDOC
      _
      _|
      _|
  SQUIGGLY_HEREDOC
    end

    it "converts 4 to an LCD representation" do
      expect(subject.convert(4)).to eq <<~SQUIGGLY_HEREDOC

        |_|
          |
  SQUIGGLY_HEREDOC
    end

    it "converts 5 to an LCD representation" do
      expect(subject.convert(5)).to eq <<~SQUIGGLY_HEREDOC
      _
     |_
      _|
  SQUIGGLY_HEREDOC
    end

    it "converts 6 to an LCD representation" do
      expect(subject.convert(6)).to eq <<~SQUIGGLY_HEREDOC
      _
     |_
     |_|
  SQUIGGLY_HEREDOC
    end

    it "converts 7 to an LCD representation" do
      expect(subject.convert(7)).to eq <<~SQUIGGLY_HEREDOC
      _
       |
       |
  SQUIGGLY_HEREDOC
    end

    it "converts 8 to an LCD representation" do
      expect(subject.convert(8)).to eq <<~SQUIGGLY_HEREDOC
      _
     |_|
     |_|
  SQUIGGLY_HEREDOC
    end

    it "converts 9 to an LCD representation" do
      expect(subject.convert(9)).to eq <<~SQUIGGLY_HEREDOC
      _
     |_|
      _|
  SQUIGGLY_HEREDOC
    end
  end
end
