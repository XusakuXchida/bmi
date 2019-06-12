weight = ARGV[0].to_i      #体重 W[kg]
height = ARGV[1].to_i      #身長 H[cm]
target_bmi = ARGV[2].to_i  #目標BMI

require_weight_range = 20 <= weight && weight <= 100       #制約条件
require_heigth_range = 100 <= height && height <= 200
require_bmi_range = 10 <= target_bmi && target_bmi <= 30

unless require_weight_range && require_heigth_range && require_bmi_range
  puts "制約範囲外です"
  return
end

h_square = height ** 2
i = 0
while target_bmi < 10000 * (weight - i) / h_square.to_f
  i += 1
end

puts i
