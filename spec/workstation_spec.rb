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

    it 'can fix things over maximum' do
      expect(subject.filter([1500, 40])).to eq [1000, 40]
    end
  end

  describe '#initialize' do
    it 'has a default minimum 40' do
      expect(subject.minimum).to eq 40
    end

    it 'can change default minimum' do
      subject = Workstation.new(50)
      expect(subject.minimum).to eq 50
    end

    it 'has a default maximum of 1000' do
      expect(subject.maximum).to eq 1000
    end

  end
end
