require 'workstation'

describe Workstation do
  describe '#filter' do
    it 'has a method called filter' do
      expect(subject).to respond_to(:filter).with(1).arguments
    end

    it 'can handle an array of 1' do
      expect(subject.filter([1])).to eq [40]
    end

    it 'can handle an array of 2' do
      expect(subject.filter([1, 40])).to eq [40, 40]
    end
  end
end
