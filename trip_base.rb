puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

#旅行プラン一覧
plans = [
  {name: "沖縄旅行", price: 10000}, 
  {name: "北海道旅行", price: 20000}, 
  {name: "九州旅行", price: 15000}
]

#プランの選択
while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1〜3の番号を入力して下さい。"
end
select_plan = plans[plan_num - 1]
puts "#{select_plan[:name]}ですね。"

#予約人数の選択
puts "何名で予約されますか？"
while true
  print "人数を入力 > "
  reserve_member_num = gets.to_i
  break if reserve_member_num >= 1
  puts "1以上を入力して下さい。"
end
puts "#{reserve_member_num}名ですね。"

#合計金額の計算
total_cost = select_plan[:price] * reserve_member_num
if reserve_member_num >= 5
  total_cost *= 0.9
  puts "5名以上ですので10%割引となります"
end
puts "合計料金は#{total_cost.floor}円になります。"

