#> repopo:system/escape
# 脱出ファンクション

# 脱出の条件を満たしていなければ何もしない
    execute unless entity @s[nbt={SelectedItem: {"id": "minecraft:diamond"}}, team=Hiroshi] run return 1


# ロビーにtp
    tp @s 2 24 0

# 脱出済みタグをつける
    tag @s add Escapee


# 観客にする
    team join Guest @s
    clear @s

# 演出
    tellraw @a [{"selector": "@s", "bold": true, "color": "yellow"}, "が脱出しました"]
    execute as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1
