class Baker

  def start
    input_ary = gets.split(' ')
    # パンの種類
    @bread_types = input_ary[0].to_i
    # 購入と焼き上げの入力回数を表す整数q
    @buy_or_bake = input_ary[1].to_i
    # パンの値段・在庫を配列にして管理
    @bread_prices = []
    @bread_inventories = []
    @bread_types.times do
      input_bread = gets.split(' ').map { |s| s.to_i }
      @bread_prices << input_bread[0]
      @bread_inventories << input_bread[1]
    end
    # 購入と焼き上げの入力を配列にして管理
    @ary = []
    @buy_or_bake.times do
        @ary << gets.split(' ')
    end
    output
  end
  
  # 在庫が足りているかをチェック
  def inventories_chacker(int)
    @bread_types.times do |j|
      break if @ary[int][j+1].to_i > @bread_inventories[j]
    end
  end
  
  # 購入と焼き上げ入力の処理
  def output
  sum = 0
    @buy_or_bake.times do |i|
      if @ary[i][0] == "buy"
        if inventories_chacker(i).nil? # 在庫が足りない時は-1を出力
          puts '-1'
        else
          @bread_types.times do |j| # 在庫がある時、合計金額出力と在庫を減らす
            sum += @bread_prices[j] * @ary[i][j+1].to_i
            @bread_inventories[j] -= @ary[i][j+1].to_i
          end
          puts sum
          sum = 0
        end
      elsif @ary[i][0] == "bake"
        @bread_types.times do |j|
          @bread_inventories[j] += @ary[i][j+1].to_i
        end
      end
    end
  end
end
  
baker = Baker.new
baker.start
  
  