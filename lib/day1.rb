# frozen_string_literal: true

# How many measurements are larger than the previous measurement?
module Day1

  def self.part1(input_file)
    File.read(input_file).each_line.map(&:to_i).each_cons(2).count { _1 < _2 }
  end

end

puts Day1.part1("inputs/day1.txt")
