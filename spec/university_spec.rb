require 'spec_helper'

describe University do
  context 'constants' do
    it { expect(University).to have_constant(:RAW) }
    it { expect(University).to have_constant(:ALL) }
    it { expect(University).to have_constant(:COUNTRIES) }
    it { expect(University).to have_constant(:NAMES) }
  end

  it '::RAW' do
    expect(University::RAW).not_to be_nil
    expect(University::RAW).to be_a Array
    expect(University::RAW).not_to be_empty
    expect(University::RAW.size).to eql(196)
  end

  it '::ALL' do
    expect(University::ALL).not_to be_nil
    expect(University::ALL).to be_a Array
    expect(University::ALL).not_to be_empty
    expect(University::ALL.size).to eql(16773)
  end

  it '::COUNTRIES' do
    expect(University::COUNTRIES).not_to be_nil
    expect(University::COUNTRIES).to be_a Array
    expect(University::COUNTRIES).not_to be_empty
    expect(University::COUNTRIES.size).to eql(196)
  end

  it '::COUNTRY_NAMES' do
    expect(University::COUNTRIES).not_to be_nil
    expect(University::COUNTRIES).to be_a Array
    expect(University::COUNTRIES).not_to be_empty
    expect(University::COUNTRIES).to include('Botswana')
    expect(University::COUNTRIES).to include('Burkina Faso')
    expect(University::COUNTRIES).to include('Japan')
    expect(University::COUNTRIES.size).to eql(196)
  end

  it '::NAMES' do
    expect(University::NAMES).not_to be_nil
    expect(University::NAMES).to be_a Array
    expect(University::NAMES).not_to be_empty
    expect(University::NAMES.size).to eql(16773)
  end

  context '#by_country' do
    it 'PH' do
      expect(University.by_country('PH')).not_to be_nil
      expect(University.by_country('PH')).not_to be_empty
      expect(University.by_country('PH').size).to eql(274)
    end

    it 'JaPan' do
      expect(University.by_country('JaPan')).not_to be_nil
      expect(University.by_country('JaPan')).not_to be_empty
      expect(University.by_country('JaPan').size).to eql(722)
    end

    it 'china' do
      expect(University.by_country('china')).not_to be_nil
      expect(University.by_country('china')).not_to be_empty
      expect(University.by_country('china').size).to eql(1300)
    end

    it 'Test' do
      expect(University.by_country('Test')).not_to be_nil
      expect(University.by_country('Test')).to be_empty
      expect(University.by_country('Test').size).to eql(0)
    end
  end
end
