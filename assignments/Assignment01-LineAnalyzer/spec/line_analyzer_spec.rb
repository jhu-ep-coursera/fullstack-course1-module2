require_relative "../module2_assignment"
require 'rspec'
require 'rspec/its'

describe LineAnalyzer do
  subject { LineAnalyzer.new("test", 1) }

  it { is_expected.to respond_to(:highest_wf_count) } 
  it { is_expected.to respond_to(:highest_wf_words) } 
  it { is_expected.to respond_to(:content) } 
  it { is_expected.to respond_to(:line_number) } 
  it { is_expected.to respond_to(:calculate_word_frequency) } 
  it { is_expected.to have_attributes(content: "test", line_number: 1) } 

  it "calls calculate_word_frequency when created" do
    expect_any_instance_of(LineAnalyzer).to receive(:calculate_word_frequency)
    LineAnalyzer.new("", 1) 
  end

  context "#calculate_word_frequency" do
    subject { LineAnalyzer.new("This is a really really really cool cool you you you", 2) }
    its(:highest_wf_count){ is_expected.to eq 3 }
    its(:highest_wf_words){ is_expected.to include 'really', 'you' }
    its(:content){ is_expected.to eq("This is a really really really cool cool you you you") }
    its(:line_number){ is_expected.to eq(2) }
  end
end