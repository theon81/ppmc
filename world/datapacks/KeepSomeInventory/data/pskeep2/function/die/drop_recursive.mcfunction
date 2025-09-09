# KeepSomeInventory v2.0.1 by PuckiSilver
data modify storage pskeep2:main drop.item set from storage pskeep2:main items.left[-1]
execute store result score #is_different pskeep2 run data modify storage pskeep2:main drop.item set from storage pskeep2:main items.all[-1]
execute if score #is_different pskeep2 matches 1 run function pskeep2:drop/item with storage pskeep2:main drop
data remove storage pskeep2:main items.all[-1]
execute if score #is_different pskeep2 matches 0 run data remove storage pskeep2:main items.left[-1]
execute unless data storage pskeep2:main items.left[0] if data storage pskeep2:main items.all[0] run return run function pskeep2:die/drop_all_recursive
execute if data storage pskeep2:main items.all[0] run function pskeep2:die/drop_recursive
# KeepSomeInventory v2.0.1 by PuckiSilver
