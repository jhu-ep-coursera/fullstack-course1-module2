require 'rspec'
require 'rspec/its'

describe "lesson2" do

  context "check results" do
    result=`ruby module2_lesson2_formative.rb`
    lines=result.split("\n")
    numbers=[]
    #process the last line of output
    values=lines[lines.count-1].split(",").each { |v|
        number=/([0-9]+)/.match(v).to_s.to_i
        numbers << number
    }

    it "unexpected number of output lines" do
      expect(lines.size).to be == 3
    end

    it "unexpected minimum number" do
      numbers.each { |n|
        expect(n).to be >= 5000
      }
    end
    # ensure that the first element in the array is 9999
    it "unexpected maximum number in array" do
        expect(numbers.first).to be == 9999
    end
    # ensure that the last element in the array is 5001
    # remember every element in the array >= 5000
    it "unexpected minimum number in array" do
        expect(numbers.last).to be == 5001
    end
    # ensure that the array contains the correct number of elements
    # taking the last element and dividing by 3; 5001/3=1667
    it "unexpected number of elements" do
        expect(numbers.size).to be == 1667
    end

    it "not modulo 3" do
      numbers.each { |n|
        expect(n % 3).to be == 0
      }
    end

    it "unexpected sort order" do
      lowest=nil
      numbers.each { |n|
        expect(n).to be <= lowest if !lowest.nil?
        lowest=n
      }
    end
  end

  #probably should strip out commented lines before doing this
  context "check implementation" do
    srcCode = File.open("module2_lesson2_formative.rb", "r").read

    it "missing select" do
      expect(srcCode).to include("select")
    end

    it "missing reject" do
      expect(srcCode).to include("reject")
    end

    it "missing sort" do
      expect(srcCode).to include("sort")
    end

    it "missing reverse" do
      expect(srcCode).to include("reverse")
    end
  end
end
