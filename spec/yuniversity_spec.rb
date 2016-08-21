require 'spec_helper'

describe YUniversity do
  context 'constants' do
    it { expect(YUniversity).to have_constant(:RAW) }
    it { expect(YUniversity).to have_constant(:ALL) }
  end

  it '::RAW' do
    expect(YUniversity::RAW).not_to be_nil
    expect(YUniversity::RAW).to be_a Array
    expect(YUniversity::RAW).not_to be_empty
    expect(YUniversity::RAW.size).to eql(15592)
  end

  it '::ALL' do
    expect(YUniversity::ALL).not_to be_nil
    expect(YUniversity::ALL).to be_a Array
    expect(YUniversity::ALL).not_to be_empty
    expect(YUniversity::ALL.size).to eql(15592)
  end
end
