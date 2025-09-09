# KeepSomeInventory v2.0.1 by PuckiSilver
execute store result score .level pskeep2 store result score .xp pskeep2 store result score #level_squared pskeep2 run xp query @s levels
execute store result score .points pskeep2 run xp query @s points
scoreboard players operation #level_squared pskeep2 *= #level_squared pskeep2
execute if score .level pskeep2 matches 17..31 run scoreboard players operation #level_squared pskeep2 *= #5 pskeep2
execute if score .level pskeep2 matches 32.. run scoreboard players operation #level_squared pskeep2 *= #9 pskeep2
execute if score .level pskeep2 matches 1..16 run scoreboard players operation .xp pskeep2 *= #6 pskeep2
execute if score .level pskeep2 matches 17..31 run scoreboard players operation .xp pskeep2 *= #-81 pskeep2
execute if score .level pskeep2 matches 32.. run scoreboard players operation .xp pskeep2 *= #-325 pskeep2
execute if score .level pskeep2 matches 17.. run scoreboard players operation #level_squared pskeep2 /= #2 pskeep2
execute if score .level pskeep2 matches 17.. run scoreboard players operation .xp pskeep2 /= #2 pskeep2
execute if score .level pskeep2 matches 17..31 run scoreboard players add .xp pskeep2 360
execute if score .level pskeep2 matches 32.. run scoreboard players add .xp pskeep2 2220
scoreboard players operation .xp pskeep2 += #level_squared pskeep2
execute store result storage pskeep2:main drop.xp int 1 run scoreboard players operation .xp pskeep2 += .points pskeep2
function pskeep2:drop/xp with storage pskeep2:main drop
xp set @s 0 levels
xp set @s 0 points
# KeepSomeInventory v2.0.1 by PuckiSilver
