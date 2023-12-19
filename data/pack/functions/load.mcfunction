### pack:load

#リロード通知
say Reloaded!

#ゲームルール
gamerule doMobSpawning false 
gamerule doMobLoot false 

#スコアボード(status)
#作成
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

#チーム(role)
#作成
team add fighter "戦士"
team add duelist "決闘者"
team add warrior "重戦士"
team add berserker "凶戦士"
team add knight "騎士"
team add dark_knight "闇騎士"
team add assassin "暗殺者"
team add silent_killer "サイレントキラー"
team add hunter "狩人"
team add magician "魔法使い"
team add wizard "魔道者"
team add hit_detection "左クリック検知"
#チームルール
team modify hit_detection collisionRule never