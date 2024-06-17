# Assign hunters randomly to one of three equipment variants
scoreboard players set @r[team=Hunter, scores={hunter_variant=0}] hunter_variant 1
scoreboard players set @r[team=Hunter, scores={hunter_variant=0}] hunter_variant 2
scoreboard players set @r[team=Hunter, scores={hunter_variant=0}] hunter_variant 3

# If there are more hunters without an assigned variant, repeat
execute if entity @r[team=Hunter, scores={hunter_variant=0}] run function hunter:assign_variants