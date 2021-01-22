def display_plan(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 （#{plan[:price]}円）"
  end
end

def choose_plan(plans)
  while true
    print "プラン番号の選択 > "
    chosen_plan = gets.to_i
    break if (1..3) === chosen_plan
    puts "1~3の番号を入力してください"
  end
  plans[chosen_plan - 1]
end

def decide_num(chosen_plan)
  puts <<~TEXT
         #{chosen_plan[:place]}旅行ですね。
  何名で予約されますか？
       TEXT
  while true
    print "人数を入力 > "
    decided_num = gets.to_i
    break if decided_num >= 1
    puts "1以上を入力して下さい。"
  end
  decided_num
end

def calucurate_price(decided_num, chosen_plan)
  puts "#{decided_num}名ですね。"
  calcurated_price = decided_num * chosen_plan[:price]
  if decided_num >= 5
    calcurated_price *= 0.9
    puts "5名以上ですので10%割引となります"
  end
  puts "合計料金は#{calcurated_price.floor}円になります。"
end
