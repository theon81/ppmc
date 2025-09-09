# KeepSomeInventory v2.0.1 by PuckiSilver
advancement revoke @s only pskeep2:die
clear @s *[enchantments~[{enchantments: "vanishing_curse"}]]
data modify storage pskeep2:main items.all set from entity @s Inventory
clear @s #pskeep2:drop
data modify storage pskeep2:main items.left set from entity @s Inventory
execute unless data storage pskeep2:main items.left[0] if data storage pskeep2:main items.all[0] run function pskeep2:die/drop_all_recursive
execute if data storage pskeep2:main items.all[0] run function pskeep2:die/drop_recursive
function pskeep2:die/drop_xp
# KeepSomeInventory v2.0.1 by PuckiSilver
