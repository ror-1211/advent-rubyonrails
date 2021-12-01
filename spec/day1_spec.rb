# frozen_string_literal: true

require "day1"

RSpec.describe Day1 do

  example "part1" do
    expect(Day1.part1("spec/fixtures/day1.txt")).to eq 7
  end

  example "part2" do
    expect(Day1.part2("spec/fixtures/day1.txt")).to eq 5
  end

end
