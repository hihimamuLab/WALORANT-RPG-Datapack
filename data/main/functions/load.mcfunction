### main:load

#リロード通知
say Reloaded!

#ゲームルール
gamerule doMobSpawning false 
gamerule doMobLoot false 

#チーム(role)
team add fighter "戦士"
team add paladin "パラディン"
team add battle_master "バトルマスター"

team add warrior "重戦士"
team add berserker "凶戦士"
team add warrior_monk "戦闘僧"

team add knight "槍兵"
team add knight "騎士"
team add dark_knight "闇騎士"

team add assassin "暗殺者"
team add silent_killer "サイレントキラー"
team add ninja "忍者"

team add hunter "狩人"
team add ranger "レンジャー"
team add sniper "スナイパー"

team add magician "魔法使い"
team add sorcerer "妖術使い"
team add wizard "魔術師"

#Constants(定数群)作成
scoreboard objectives add Constant dummy
# 値設定 とりあえず1~10
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

#Temporary
scoreboard objectives add Temporary dummy