describe "Search", :depth => 'shallow' do

  let(:search) { @formula_lab.mix('search') }

  it 'search returns a relevant result' do
    search.for 'elemental selenium tips'
    result = search.result_present? 'Receive a Free, Weekly Tip'
    result.should be_true
  end

end
