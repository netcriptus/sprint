cases = $stdin.readline.to_i

class String
  def to_t9
    key = nil
    self.gsub("\n", "").split("").collect do |c|
      alphabet_number = c.ord - 97

      last_key, key = key, case alphabet_number
      when 0..2
        "2"*(alphabet_number%3 + 1)
      when 3..5
        "3"*(alphabet_number%3 + 1)
      when 6..8
        "4"*(alphabet_number%3 + 1)
      when 9..11
        "5"*(alphabet_number%3 + 1)
      when 12..14
        "6"*(alphabet_number%3 + 1)
      when 15..18
        "7"*((alphabet_number + 1)%4 + 1)
      when 19..21
        "8"*((alphabet_number - 1)%3 + 1)
      when 22..25
        "9"*((alphabet_number + 2)%4 + 1)
      when -65
        "0"
      end

      last_key && last_key[-1] != key[0] ? key : " " + key
    end.join.gsub(/^ /, "")
  end
end

cases.times do |i|
  puts "Case ##{i+1}: #{$stdin.readline.to_t9}"
end
