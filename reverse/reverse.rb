$stdin.readline

def reverse_da_line(line)
  return line.split.reverse.join(" ")
end

case_number = 1

$stdin.each do |line|
  reversed_line = reverse_da_line(line)
  puts "Case ##{case_number}: #{reversed_line}"
  case_number += 1
end
