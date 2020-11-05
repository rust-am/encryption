require 'digest'

puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp

sha256 = Digest::SHA256.new
sha1 = Digest::SHA1.new
sha1.update phrase
md5 = Digest::MD5.new
md5.update phrase

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

way = STDIN.gets.to_i

puts "Вот что получилось:"
puts case way
     when 1 then
       md5.hexdigest
     when 2 then
       sha1.hexdigest
     when 3 then
       sha256.hexdigest phrase
     end
