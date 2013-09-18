describe "Search", :depth => 'shallow' do

  let(:search) { @formula_lab.mix('search') }

  before(:each) do
    search.for 'elemental selenium tips'
    @result = search.result_present?('Receive a Free, Weekly Tip')
  end

  it 'search returns a relevant result' do
    @result.should be_true
  end

  # This example is meant to fail to show what a failure
  # looks like in the HTML report in the evidence directory
  it 'demonstrate a test failure' do
    @result.should be_false
  end

end
