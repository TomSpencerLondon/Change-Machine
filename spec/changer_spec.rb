require 'spec_helper'

require 'changer.rb'

describe Changer do

  let(:subject) do
     described_class.new
  end

  it '#change returns 1p for 1p' do
    expect(subject.change(1)).to eq [1]
  end

  it 'returns 3 pennies for 3' do
    expect(subject.change(3)).to eq [1, 1, 1]
  end

  it 'returns 5p for 5p' do
    expect(subject.change(5)).to eq [5]
  end
  
  it 'returns 10p for 10p' do
    expect(subject.change(10)).to eq [10]
  end

  it 'returns 20p and 5p for 25' do
    expect(subject.change(25)).to eq [20, 5]
  end

  it 'returns correct change for 24' do
    expect(subject.change(24)).to eq [20, 1, 1, 1, 1]
  end

  it 'returns 3 20p, 3 10p, 1 5p and 4 pennies' do
    expect(subject.change(99)).to eq [20, 20, 20, 20, 10, 5, 1, 1, 1, 1]
  end
end