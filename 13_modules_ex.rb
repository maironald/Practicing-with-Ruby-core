$LOAD_PATH << "module_folder"

require "support"
class Decade
include Week
    no_of_yrs = 10
    def no_of_months
        puts Week::FIRST_DAY
        number = 10*12
        puts number
    end
end
d1 = Decade.new
puts Week::FIRST_DAY # Sunday
Week.weeks_in_month  # You have four weeks in a month
Week.weeks_in_year  # You have 52 weeks in a year
d1.no_of_months
# Sunday
# 120