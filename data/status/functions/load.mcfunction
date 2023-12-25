### status:load

# スコアボード(status)
scoreboard objectives add hp dummy "体力"
scoreboard objectives add hp_max dummy "最大体力"
scoreboard objectives add hp_regen dummy "自然回復体力"
scoreboard objectives add mp dummy "マナ"
scoreboard objectives add mp_max dummy "最大マナ"
scoreboard objectives add mp_regen dummy "自然回復マナ"
scoreboard objectives add atk dummy "物攻"
scoreboard objectives add mgc_atk dummy "魔攻"
scoreboard objectives add def dummy "防御力"
scoreboard objectives add spd dummy "速度"
scoreboard objectives add crt dummy "会心率"
scoreboard objectives add level dummy "レベル"
scoreboard objectives add xp dummy "経験値"
scoreboard objectives add next_xp dummy "必要経験値"

scoreboard objectives add mp_bar dummy

#Constants(定数群)作成
scoreboard objectives add Constant dummy
#値設定 とりあえず1~10
scoreboard players set #1 Constant 1
scoreboard players set #2 Constant 2
scoreboard players set #3 Constant 3
scoreboard players set #4 Constant 4
scoreboard players set #5 Constant 5
scoreboard players set #6 Constant 6
scoreboard players set #7 Constant 7
scoreboard players set #8 Constant 8
scoreboard players set #9 Constant 9
scoreboard players set #10 Constant 10
#ToDo 必要な値を適宜書き足していく
scoreboard players set #0 Constant 0
scoreboard players set #20 Constant 20
scoreboard players set #25 Constant 25
scoreboard players set #50 Constant 50
scoreboard players set #80 Constant 80
scoreboard players set #99 Constant 99
scoreboard players set #100 Constant 100
scoreboard players set #150 Constant 150
scoreboard players set #200 Constant 200
scoreboard players set #1000 Constant 1000
scoreboard players set #5000 Constant 5000
scoreboard players set #10000 Constant 10000

#タイマー
scoreboard objectives add mp_regen_speed_timer dummy "MP自然回復タイマー"
scoreboard players set @s mp_regen_speed_timer 0
scoreboard objectives add hp_regen_speed_timer dummy "HP自然回復タイマー"
scoreboard players set @s hp_regen_speed_timer 0

#Temporary
scoreboard objectives add Temporary dummy