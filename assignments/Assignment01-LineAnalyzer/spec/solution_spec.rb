require_relative "../module2_assignment"
require 'rspec'
require 'rspec/its'

describe Solution do
  subject { Solution.new }

  it { is_expected.to respond_to(:analyze_file) } 
  it { is_expected.to respond_to(:calculate_line_with_highest_frequency) } 
  it { is_expected.to respond_to(:print_highest_word_frequency_across_lines) } 

  context "#analyze_file" do
    it "creates 3 line analyzers" do
      solution = Solution.new
      expect(solution.analyzers.length).to eq 0 
      solution.analyze_file
      expect(solution.analyzers.length).to eq 3
    end  
  end
  
  context "#calculate_line_with_highest_frequency" do
    it "calculates highest count across lines to be 4" do
      solution = Solution.new
      solution.analyze_file

      expect(solution.highest_count_across_lines).to be nil
      
      solution.calculate_line_with_highest_frequency

      expect(solution.highest_count_across_lines).to be 4
    end  
    it "calculates highest count words across lines to be will, it, really" do
      solution = Solution.new
      solution.analyze_file

      expect(solution.highest_count_words_across_lines).to be nil
      
      solution.calculate_line_with_highest_frequency

      words_found = solution.highest_count_words_across_lines.map(&:highest_wf_words).flatten
      expect(words_found).to match_array ["will", "it", "really"] 
    end  
  end

end
