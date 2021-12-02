# frozen_string_literal: true

# instructions
module Day2

  REGEX = /(?<command>\w+) (?<value>\d+)/

  def self.part1(input_file)
    horizontal = 0
    depth = 0

    File
      .read(input_file)
      .each_line
      .map { |line|
        captures = line.match(REGEX).named_captures
        value = captures["value"].to_i
        case captures["command"]
        when "forward" then horizontal += value
        when "up" then depth -= value
        when "down" then depth += value
        else
          fail "unknown line: #{line}"
        end
      }

    horizontal * depth
  end

end
