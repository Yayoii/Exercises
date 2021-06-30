
# 暗号化キー：空欄も含む
Key = "abcdefghijklmnopqrstuvwxyz .,-"

def caesar_cipher(hint, caesar)
keys = Key.split("")
hints = hint.split("")

  keys.size.times do |n| 
    ary = []
    hints.size.times do |i|
      key_num = (keys.find_index(hints[i]) + n)% keys.size #添字が29を超えたら0からに戻す
      ary << keys[key_num]
    end
    valid_ary = ary.join("")
    if caesar.include?(valid_ary)
      puts "鍵（シフト数）は#{n}回です。"
      break
    end
  end
end

caesar_cipher('person', 'qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj')
