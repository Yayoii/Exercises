# ミニライフゲームの初期盤面と更新ルールを与えたときに、そのミニライフゲームが初期盤面に戻るか否かを判定するプログラム
# 与えられたミニライフゲームがいつか初期盤面に戻るならば "YES" をそうでないならば "NO" を 1 行に出力
# 各マスが左から順に 1 から 10 で番号付けられているとき、 1 のマスの左隣は 10 のマスとし、 10 のマスの右隣は 1 のマスとします。
# 更新ルールの文字列による表現方法は以下
# 左隣のマスが "-" で右隣のマスが "-" のとき T の 1 文字目が更新後の記号になる。
# 左隣のマスが "-" で右隣のマスが "+" のとき T の 2 文字目が更新後の記号になる。
# 左隣のマスが "+" で右隣のマスが "-" のとき T の 3 文字目が更新後の記号になる。
# 左隣のマスが "+" で右隣のマスが "+" のとき T の 4 文字目が更新後の記号になる。

input = gets.chomp.split(' ')
first_board = input[0].split('') # 初期盤面
rule = input[1].split('') # 更新ルール

(2 ** 10).times do |i| # (2 ** 10)通りの配列が考えられる
  first_board.push(first_board[0]).unshift(first_board[9])
  temp_ary = []
  (1..10).each do |i| # 先頭と最後を除いた部分をチェック
    if first_board[i - 1] == '-' && first_board[i + 1] == '-'
      temp_ary << rule[0]
    elsif first_board[i - 1] == '-' && first_board[i + 1] == '+'
      temp_ary << rule[1]
    elsif first_board[i - 1] == '+' && first_board[i + 1] == '-'
      temp_ary << rule[2]
    elsif first_board[i - 1] == '+' && first_board[i + 1] == '+'
      temp_ary << rule[3]
    end
  end
  if input[0] == temp_ary.join # 初期盤面と一致したらループを抜ける
    puts 'YES'
    break
  else
    first_board = temp_ary
  end
  puts 'NO' if i == 2 ** 10 - 1 # (2 ** 10)通りチェックしても一致しなかった場合は NO を出力
end
