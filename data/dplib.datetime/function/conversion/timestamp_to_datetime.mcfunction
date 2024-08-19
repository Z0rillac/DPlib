#> dplib.datetime:conversion/timestamp_to_datetime
# Returns the date and time of `$timestamp`.
# ***
# Parameters -> score `dplib.datetime.in` :  
# - `$timestamp` : the timestamp to be converted  
# 
# Output -> score `dplib.datetime.out` :  
# - `$year` : the year  
# - `$month` : the month  
# - `$date` : the day  
# - `$hour` : the hour  
# - `$minutes` : the minute  
# - `$seconds` : the second  
# ***
# Example code :  
# ```mcfunction
# # display the current datetime
# scoreboard players operation $timestamp dplib.datetime.in = unix_timestamp dplib.datetime.main
# function dplib.datetime:conversion/timestamp_to_datetime
# tellraw @a ["",{"text":"year = "},{"score":{"name":"$year","objective":"dplib.datetime.out"}},{"text":"\nmonth = "},{"score":{"name":"$month","objective":"dplib.datetime.out"}},{"text":"\ndate = "},{"score":{"name":"$date","objective":"dplib.datetime.out"}},{"text":"\nhour = "},{"score":{"name":"$hour","objective":"dplib.datetime.out"}},{"text":"\nminutes = "},{"score":{"name":"$minutes","objective":"dplib.datetime.out"}},{"text":"\nseconds = "},{"score":{"name":"$seconds","objective":"dplib.datetime.out"}}]
# ```
# ***
# @input score $timestamp dplib.datetime.in
# @output score $year dplib.datetime.out
# @output score $month dplib.datetime.out
# @output score $date dplib.datetime.out
# @output score $hour dplib.datetime.out
# @output score $minutes dplib.datetime.out
# @output score $seconds dplib.datetime.out
# @public
# @context any

## Datapack Library v1.2
## MIT License
## Copyright (c) 2023 Z0rillac

function dplib.datetime:private/module/conversion/timestamp_to_datetime/run