# frozen_string_literal: true

# How many measurements are larger than the previous measurement?
module Day1

  def self.part1(input_file)
    read(input_file).each_cons(2).count { _1 < _2 }
  end

  def self.part2(input_file)
    read(input_file).each_cons(3).map(&:sum).each_cons(2).count { _1 < _2 }
  end

  def self.read(input_file)
    File.read(input_file).each_line.map(&:to_i)
  end

end
