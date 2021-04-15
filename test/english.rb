# 英単語を複数形に変換するプログラム

#入力される単語の数
words_num = gets.to_i

words_num.times do
  word = gets.chomp
  if word.match(/s$|sh$|ch$|o$|x$/)
    puts word + 'es'
  elsif word.match(/f$|fe$/)
    puts word.gsub(/f$|fe$/, 'ves')
  elsif word.match(/[^aiueo]y$/)
    puts word.gsub(/y$/, 'ies')
  else
    puts word + 's'
  end 
end