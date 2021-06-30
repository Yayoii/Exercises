#文字列の周囲を "+" で枠のように囲んで装飾
# (例) Paize改行入力
# +++++++
# +Paiza+
# +++++++

def kakomi
  input_ary= gets.split("")
  width = input_ary.size + 2
  line = "+" * width
  input_ary.pop #改行文字を取り出す
  puts line
  puts "+"+ input_ary.join + "+"
  puts line
end

kakomi
