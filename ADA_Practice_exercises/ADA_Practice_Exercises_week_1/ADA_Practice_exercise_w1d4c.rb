# ~ NOT WERKING ~ #
# MAKE IT RETURN ONLY 2 DECIMALS PLACES

puts "Please enter the number of hours worked: "

time_worked = gets.chomp.to_f.abs

hourly_wage = 10

overtime_hours = time_worked - 40
time_and_half_hourly_wage = hourly_wage * 1.5

if time_worked <= 40
  straight_time = time_worked * hourly_wage
  puts straight_time.to_f(2)
elsif time_worked >= 60
  puts "Please see manager"
else time_worked >= 41
  over_time =  (40 * hourly_wage) + (time_and_half_hourly_wage * overtime_hours)
  puts over_time.to_f(2)
end
