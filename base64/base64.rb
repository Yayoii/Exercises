require_relative './base_table.rb'

def base(input)
  binary_num = input.unpack1("H*").each_char.map { |a| format("%04b", a.to_i) } #16進数→2進数へ変換
  binary_per_6bit = binary_num.join.scan(/\d{1,6}/) ## 2進数を6ビットごとに分割
  if binary_per_6bit.last.size < 6 #6ビットごとに分割後、足りない部分は0詰め
    binary_per_6bit.push(binary_per_6bit.pop.ljust(6, "0"))
  end
  encoded = binary_per_6bit.map { |b| BASE64_TABLE[b.intern] }.join.scan(/.{1,4}/)
  if encoded.last.size < 4 #4文字ごとに分割後、足りない部分=で詰める
    encoded.push(encoded.pop.ljust(4, "="))
  end
  encoded.join
end

p base("ABCDEFG")       
