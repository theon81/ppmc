# KeepSomeInventory v2.0.1 by PuckiSilver
data modify storage pskeep2:main drop.item set from storage pskeep2:main items.all[-1]
function pskeep2:drop/item with storage pskeep2:main drop
data remove storage pskeep2:main items.all[-1]
execute if data storage pskeep2:main items.all[0] run function pskeep2:die/drop_all_recursive
# KeepSomeInventory v2.0.1 by PuckiSilver
