# O programa alterna as letras baseado no número de rotações
# fornecido pelo usuário.
# A palavra encriptada pode ser revertida simplesmente inserindo
# ela e atribuindo um valor negativo. Ex.: Ana encriptada com 2
# rotações fica Cpc. Basta executar o código novamente e colocar
# Cpc com rotação -2 e teremos Ana novamente. 

puts "Caesar's Cipher - by CWBADS22"
puts "Escreva o texto a ser encriptado - sem acentos ou caracteres especiais: "
text = gets #recebe o input do usuário

puts "Escreva o número de rotações desejada: "
def caesar_cipher(string = text, shift = gets.to_i) # numero de rotações inserido pelo user
  alphabet   = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter  = non_caps.merge(caps)
  
  string.chars.map { |c| encrypter.fetch(c, " ") }
end

p caesar_cipher(text).join
