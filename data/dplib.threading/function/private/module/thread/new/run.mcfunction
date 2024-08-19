#> dplib.threading:private/module/thread/new/run
# @private

function dplib.threading:private/module/hierarchy/setup/run

scoreboard players operation target dplib.threading.main = @s dplib.threading.parent
execute summon marker run function dplib.threading:private/module/thread/new/setup