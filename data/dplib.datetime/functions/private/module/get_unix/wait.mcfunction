#> dplib.datetime:private/module/get_unix/wait
# @private

scoreboard players add waiting_time dplib.datetime.main 1
execute if score waiting_time dplib.datetime.main matches 400.. run scoreboard players operation request.state dplib.datetime.main = #request.timeout dplib.enum
execute in dplib.datetime:void if data block 0 1 0 SkullOwner.Properties run scoreboard players operation request.state dplib.datetime.main = #request.received dplib.enum