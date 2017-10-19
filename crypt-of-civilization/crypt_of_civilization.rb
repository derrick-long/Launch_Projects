crypt_of_civilization = ["Comptometer", "box of phonographic records", "plastic savings bank", "set of scales", "toast-o-lator", "sample of aluminum foil", "Donald Duck doll"]
extra = ["container of beer", "Lionel model train set", "Ingraham pocket watch"]
crypt_of_civilization = crypt_of_civilization + extra


puts crypt_of_civilization.inspect


puts crypt_of_civilization.length
puts crypt_of_civilization.first
puts crypt_of_civilization.last
puts crypt_of_civilization[1]
puts crypt_of_civilization[2]
puts crypt_of_civilization[-2]
puts crypt_of_civilization.index("toast-o-lator")

puts crypt_of_civilization.include?("container of beer")
puts crypt_of_civilization.include?("toast-o-lator")
puts crypt_of_civilization.include?("plastic bird")

items = 0
while items < crypt_of_civilization.length
  puts crypt_of_civilization[items]
  items += 1
end

crypt_of_civilization.each do |item|
  puts item
end

crypt_of_civilization.delete("Comptometer")
crypt_of_civilization.delete("set of scales")
crypt_of_civilization.delete("sample of aluminum foil")
puts crypt_of_civilization
