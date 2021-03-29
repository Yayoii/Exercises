class Baker
  input_line = gets.split(' ')
  # パンの種類はn個
  N = input_line[0].to_i
  # クエリの個数を表す整数q
  Q = input_line[1].to_i
  
  def start
    # パンの値段・在庫を配列にして管理
    @bread_prices = []
    @bread_inventories = []
    N.times do
        input_bread = gets.split(' ')
        @bread_prices << input_bread[0].to_i
        @bread_inventories << input_bread[1].to_i
    end
    # クエリの入力を配列にして管理
    @ary = []
    Q.times do
        input_purchase_bake = gets.split(' ')
        @ary << input_purchase_bake
    end
    output
  end
  
  # 在庫が足りているかをチェック
  def inventories_chacker(i)
    N.times do |a|
      break if @ary[i][a+1].to_i > @bread_inventories[a]
    end
  end
  
  # クエリの処理
  def output
  sum = 0
    Q.times do |i|
      if @ary[i][0] == "buy"
        if inventories_chacker(i).nil? # 在庫が足りない時は-1を出力
          puts '-1'
        else
          N.times do |j| # 在庫がある時、合計金額出力と在庫を減らす
            sum += @bread_prices[j] * @ary[i][j+1].to_i
            @bread_inventories[j] -= @ary[i][j+1].to_i
          end
          puts sum
          sum = 0
        end
      elsif @ary[i][0] == "bake" # 在庫増やす処理
        N.times do |k|
          @bread_inventories[k] += @ary[i][k+1].to_i
        end
      end
    end
  end
end
  
baker = Baker.new
baker.start
  
  