#> dplib.logger:private/module/load
# @private

scoreboard objectives add dplib.logger.levels dummy
scoreboard players set off dplib.logger.levels 2147483647
scoreboard players set fatal dplib.logger.levels 50000
scoreboard players set error dplib.logger.levels 40000
scoreboard players set warn dplib.logger.levels 30000
scoreboard players set info dplib.logger.levels 20000
scoreboard players set debug dplib.logger.levels 10000
scoreboard players set trace dplib.logger.levels 5000
scoreboard players set all dplib.logger.levels -2147483648

forceload add -30000000 1603
setblock -30000000 0 1603 oak_wall_sign[facing=south]
data modify storage dplib.logger:main root.level.fatal set value '"FATAL"'
data modify storage dplib.logger:main root.level.error set value '"ERROR"'
data modify storage dplib.logger:main root.level.warn set value '"WARN"'
data modify storage dplib.logger:main root.level.info set value '"INFO"'
data modify storage dplib.logger:main root.level.debug set value '"DEBUG"'
data modify storage dplib.logger:main root.level.trace set value '"TRACE"'