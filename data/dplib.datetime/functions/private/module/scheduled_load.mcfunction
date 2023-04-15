#> dplib.datetime:private/module/scheduled_load
# @within dplib.datetime:private/module/load
# @private


scoreboard players operation #last_seconds dplib.datetime.main = local_seconds dplib.datetime.main
scoreboard players operation #debug dplib.temp = local_seconds dplib.datetime.main
scoreboard players operation request.state dplib.datetime.main = #request.sending dplib.enum