require "implementation"

describe SampleClass do
  it 'returns true' do
    sample = SampleClass.new
    expect(sample.sampleMethod).to be_truthy
  end
end
