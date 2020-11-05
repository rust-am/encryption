require 'digest'

puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp

sha256 = Digest::SHA256.new
md5 = Digest::MD5.new
md5.update phrase

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

way = STDIN.gets.to_i

puts "Вот что получилось:"
puts way == 2 ? (sha256.hexdigest phrase) : (md5.hexdigest)
