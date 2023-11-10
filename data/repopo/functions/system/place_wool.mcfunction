#> repopo:system/place_wool
# 羊毛設置処理


# 五階解放者タグ付け
    tag @s add 5FHero


# 演出
    tellraw @a[team=!Demon] {"text": "五階が解放されました", "color": "yellow"}
    execute as @a[team=!Demon] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


# 実績リセット
    advancement revoke @s only repopo:place_wool