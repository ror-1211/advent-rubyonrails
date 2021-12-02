# frozen_string_literal: true

# instructions
module Day2

  REGEX = /(?<command>\w+) (?<value>\d+)/

  def self.part1(input_file)
    horizontal = 0
    depth = 0

    parse(input_file) { |command, value|
      case command
      when "forward" then horizontal += value
      when "up" then depth -= value
      when "down" then depth += value
      else
        fail "unknown line: #{line}"
      end
    }

    horizontal * depth
  end

  def self.part2(input_file)
    horizontal = 0
    depth = 0
    aim = 0

    parse(input_file) { |command, value|
      case command
      when "forward" then
        horizontal += value
        depth += (aim * value)
      when "up" then aim -= value
      when "down" then aim += value
      else
        fail "unknown line: #{line}"
      end
    }

    horizontal * depth
  end

  def self.parse(input_file)
    File
      .read(input_file)
      .each_line
      .map { |line|
        captures = line.match(REGEX).named_captures
        yield(captures["command"], captures["value"].to_i)
      }
  end

end
