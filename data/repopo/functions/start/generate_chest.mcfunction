#> repopo:start/generate_chest
# チェスト生成

#alias vector 4FChestNumber1 44 42 -21

#alias vector 3FChestNumber2 51 35 -40

#alias vector 2FChestNumber3 69 30 -41
#alias vector 2FChestNumber4 42 30 -48
#alias vector 2FChestNumber5 70 30 -22
#alias vector 2FChestNumber6 55 29 -5
#alias vector 2FChestNumber7 24 30 -10

#alias vector 1FChestNumber8 67 22 -87
#alias vector 1FChestNumber9 62 26 -70
#alias vector 1FChestNumber10 79 24 -4
#alias vector 1FChestNumber11 98 24 2
#alias vector 1FChestNumber12 69 24 17
#alias vector 1FChestNumber13 51 23 -15

#alias vector BFChestNumber14 68 18 -65
#alias vector BFChestNumber15 42 20 -51
#alias vector BFChestNumber16 51 18 -38
#alias vector BFChestNumber17 2 18 -56
#alias vector BFChestNumber18 -27 16 -9


# チェスト生成
    execute run setblock 44 42 -21 chest{LootTable: "repopo:chest"} destroy

    execute run setblock 51 35 -40 chest{LootTable: "repopo:chest"} destroy

    execute run setblock 69 30 -41 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 42 30 -48 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 70 30 -22 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 55 29 -5 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 24 30 -10 chest{LootTable: "repopo:chest"} destroy

    execute run setblock 67 22 -87 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 62 26 -70 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 79 24 -4 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 98 24 2 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 69 24 17 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 51 23 -15 chest{LootTable: "repopo:chest"} destroy

    execute run setblock 68 18 -65 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 42 20 -51 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 51 18 -38 chest{LootTable: "repopo:chest"} destroy
    execute run setblock 2 18 -56 chest{LootTable: "repopo:chest"} destroy
    execute run setblock -27 16 -9 chest{LootTable: "repopo:chest"} destroy

# 地下解放感圧版チェスト生成
    execute store result score $UndergroundKeyChestNumber System run random value 1..13

    execute if score $UndergroundKeyChestNumber System matches 1 run setblock 44 42 -21 chest{LootTable: "repopo:underground_key_chest"} destroy
    
    execute if score $UndergroundKeyChestNumber System matches 2 run setblock 51 35 -40 chest{LootTable: "repopo:underground_key_chest"} destroy

    execute if score $UndergroundKeyChestNumber System matches 3 run setblock 69 30 -41 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 4 run setblock 42 30 -48 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 5 run setblock 70 30 -22 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 6 run setblock 55 29 -5 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 7 run setblock 24 30 -10 chest{LootTable: "repopo:underground_key_chest"} destroy

    execute if score $UndergroundKeyChestNumber System matches 8 run setblock 67 22 -87 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 9 run setblock 62 26 -70 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 10 run setblock 79 24 -4 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 11 run setblock 98 24 2 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 12 run setblock 69 24 17 chest{LootTable: "repopo:underground_key_chest"} destroy
    execute if score $UndergroundKeyChestNumber System matches 13 run setblock 51 23 -15 chest{LootTable: "repopo:underground_key_chest"} destroy

# 五階解放羊毛チェスト生成
    execute store result score $5FloorKeyChestNumber System run random value 14..18

    execute if score $5FloorKeyChestNumber System matches 14 run setblock 68 18 -65 chest{LootTable: "repopo:5floor_key_chest"} destroy
    execute if score $5FloorKeyChestNumber System matches 15 run setblock 42 20 -51 chest{LootTable: "repopo:5floor_key_chest"} destroy
    execute if score $5FloorKeyChestNumber System matches 16 run setblock 51 18 -38 chest{LootTable: "repopo:5floor_key_chest"} destroy
    execute if score $5FloorKeyChestNumber System matches 17 run setblock 2 18 -56 chest{LootTable: "repopo:5floor_key_chest"} destroy
    execute if score $5FloorKeyChestNumber System matches 18 run setblock -27 16 -9 chest{LootTable: "repopo:5floor_key_chest"} destroy


# アイテム消す
    kill @e[type=item]
