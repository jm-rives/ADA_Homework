# hours in years program for ADA Homework week 1 Tues.
# post gist link to https://docs.google.com/spreadsheets/d/1UoQviLSbPBtE1-coegIBnUlC6fLsg2K_NxXRP5jfHVs/edit#gid=1038692670
# How many hours are in a year?
# How many minutes are in a decade?
# How many seconds old are you?
# Ada tells you she's 1,136,086,041.6 seconds old. How old is she in years?

# Stretch - make interactive terminal program

# variables need to be global for functions call to utilize

puts "Please" $hour_in_seconds = 60 * 60 # from Austin to make math clearer #
there are 60 minutes in an hour and 60 sec in each minute $year_in_seconds =
$hour_in_seconds * 24 * 365 #(31,536,000 sec)
# 60 sec in minute, 60 minute in hour, 24 hour in day, 365 day in year
$ada_seconds = 1136086041.6
$minute_in_seconds = 60

def year_to_hours(years)
  $year_in_seconds * years / $hour_in_seconds
end

def decade_to_minutes(decades)
  ($year_in_seconds * (decades * 10)) / 60
end

def year_old_to_seconds(age)
  $year_in_seconds * age
end

def seconds_to_years(seconds)
  (seconds / $hour_in_seconds) / 24 / 365
end
# def ada_seconds_to_years# ($ada_seconds) #value= 1136086041.6
#   age = $ada_seconds / $year_in_seconds
#   return age.round(2)
# end

# BEGIN TESTING
puts $year_in_seconds
puts year_to_hours(1) # should result in 8760
puts decade_to_minutes(1) # should result in 5256000
puts year_old_to_seconds(1) # should result in # 31536000 sec
puts seconds_to_years(31536000) #should result in 1
#puts ada_seconds_to_years()
