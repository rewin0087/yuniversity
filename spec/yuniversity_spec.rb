require 'spec_helper'

describe YUniversity do
  context 'constants' do
    it { expect(YUniversity).to have_constant(:RAW) }
    it { expect(YUniversity).to have_constant(:ALL) }
    it { expect(YUniversity).to have_constant(:COUNTRIES) }
    it { expect(YUniversity).to have_constant(:NAMES) }
  end

  it '::RAW' do
    expect(YUniversity::RAW).not_to be_nil
    expect(YUniversity::RAW).to be_a Array
    expect(YUniversity::RAW).not_to be_empty
    expect(YUniversity::RAW.size).to eql(196)
  end

  it '::ALL' do
    expect(YUniversity::ALL).not_to be_nil
    expect(YUniversity::ALL).to be_a Array
    expect(YUniversity::ALL).not_to be_empty
    expect(YUniversity::ALL.size).to eql(16773)
  end

  it '::COUNTRIES' do
    expect(YUniversity::COUNTRIES).not_to be_nil
    expect(YUniversity::COUNTRIES).to be_a Array
    expect(YUniversity::COUNTRIES).not_to be_empty
    expect(YUniversity::COUNTRIES.size).to eql(196)
  end

  it '::COUNTRY_NAMES' do
    expect(YUniversity::COUNTRY_NAMES).not_to be_nil
    expect(YUniversity::COUNTRY_NAMES).to be_a Array
    expect(YUniversity::COUNTRY_NAMES).not_to be_empty
    expect(YUniversity::COUNTRY_NAMES).to include('Botswana')
    expect(YUniversity::COUNTRY_NAMES).to include('Burkina Faso')
    expect(YUniversity::COUNTRY_NAMES).to include('Japan')
    expect(YUniversity::COUNTRY_NAMES.size).to eql(196)
  end

  it '::NAMES' do
    expect(YUniversity::NAMES).not_to be_nil
    expect(YUniversity::NAMES).to be_a Array
    expect(YUniversity::NAMES).not_to be_empty
    expect(YUniversity::NAMES.size).to eql(16773)
  end

  context '#find_by_country' do
    it 'PH' do
      expect(YUniversity.find_by_country('PH')).not_to be_nil
      expect(YUniversity.find_by_country('PH')).not_to be_empty
      expect(YUniversity.find_by_country('PH').size).to eql(274)
    end

    it 'JaPan' do
      expect(YUniversity.find_by_country('JaPan')).not_to be_nil
      expect(YUniversity.find_by_country('JaPan')).not_to be_empty
      expect(YUniversity.find_by_country('JaPan').size).to eql(722)
    end

    it 'china' do
      expect(YUniversity.find_by_country('china')).not_to be_nil
      expect(YUniversity.find_by_country('china')).not_to be_empty
      expect(YUniversity.find_by_country('china').size).to eql(1300)
    end

    it 'Test' do
      expect(YUniversity.find_by_country('Test')).not_to be_nil
      expect(YUniversity.find_by_country('Test')).to be_empty
      expect(YUniversity.find_by_country('Test').size).to eql(0)
    end
  end

  context '#find_by_countries' do
    let(:countries) { ['japan', 'korea', 'philippines'] }

    it '[japan, korea, philippines]' do
      expect(YUniversity.find_by_countries(countries)).not_to be_nil
      expect(YUniversity.find_by_countries(countries)).not_to be_empty
      expect(YUniversity.find_by_countries(countries).size).to eql(996)
    end

    it '[] empty' do
      expect(YUniversity.find_by_countries([])).not_to be_nil
      expect(YUniversity.find_by_countries([])).to be_empty
    end
  end
end
