require './method'

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

display_plan(plans)
chosen_plan = choose_plan(plans)
decided_num = decide_num(chosen_plan)
calucurate_price(decided_num, chosen_plan)