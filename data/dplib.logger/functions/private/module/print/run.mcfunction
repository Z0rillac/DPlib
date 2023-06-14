#> dplib.logger:private/module/print/run
# @private

data modify block -30000000 0 1603 front_text.messages[0] set from storage dplib.logger:main root.print_formatter
summon pig 0 -1024 0 {DeathLootTable:"dplib.logger:empty",NoAI:true,Tags:["global.ignore","dplib.logger","dplib.logger.printer"],CustomNameVisible:false}
data modify entity @e[type=pig, tag=dplib.logger.printer, limit=1] CustomName set from block -30000000 0 1603 front_text.messages[0]
tag @e[type=pig, tag=dplib.logger.printer, limit=1] remove dplib.logger.printer
summon minecraft:area_effect_cloud 0 -1024 0 {Radius: 0.5f, Duration: 6, Age: 4, Effects: [{Id: 7, Amplifier: 25b, Duration: 1, ShowParticles: 0b}],Tags:["global.ignore","dplib.logger","dplib.logger.killer"]}