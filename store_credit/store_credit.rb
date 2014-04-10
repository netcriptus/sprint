cases = $stdin.readline.to_i

def find_products(credit, products)
  products.each_with_index do |product, index|
    products[index+1..-1].each_with_index do |next_product, new_index|
      if product + next_product == credit
        return [index, new_index+index+1]
      end
    end
  end
end

cases.times do |i|
  credit = $stdin.readline.to_i
  $stdin.readline
  products = $stdin.readline.split(" ").collect(&:to_i)

  index1, index2 = find_products(credit, products)

  puts "Case ##{i+1}: #{index1+1} #{index2+1}"
end
