
# 暗号化キー：1-29の範囲の数値(空欄も含む)
Key = "abcdefghijklmnopqrstuvwxyz .,-"

def caesar_cipher(hint, caesar)
keys = Key.split("")
hints = hint.split("")

  (0...keys.size).each do |n|
    ary = Array.new
    (0...hints.size).each do |i|
      key_num = (keys.find_index(hints[i])) + n 
      key_num = key_num -  hints.size if key_num >= keys.size #添字が29を超えたら0からに戻す
      ary << keys[key_num]
    end
    valid_ary = ary.join("")
    if caesar.include?(valid_ary)
      print "鍵（シフト数）は#{n}回です。"
      break
    end
  end
end

caesar_cipher('person', 'qdq-gi.q-a ziatmxxitmdqibtqi-ustbi ri.qmoqrcxi.qbubu zir -ibtqi-qp-qaai ripmymsqkir -ibtqi-qy dmxi ri.cnxuoi rruoumxakir -ibtqiqzmobyqzbkii-q.qmxi -imyqzpyqzbi rixmeaki -puzmzoqai -i-qscxmbu zaimzpir -i btq-iymbbq-a;iz -iatmxximzgi.q-a zinqiuzimzgiemgipuao-uyuzmbqpimsmuzabir -ia. za -uzsiacotiimi.qbubu zj')
