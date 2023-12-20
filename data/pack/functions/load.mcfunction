### pack:load

#リロード通知
say Reloaded!

#ゲームルール
gamerule doMobSpawning false 
gamerule doMobLoot false 

#スコアボード(status)
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
#スコアボード(calc)
scoreboard objectives add Temporary dummy
scoreboard objectives add Constant dummy

scoreboard players set @a Constant 1

#チーム(role)
team add fighter "ファイター"
team add gladiator "剣闘士"
team add paladin "パラディン"

team add warrior "ウォーリアー"
team add berserker "バーサーカー"
team add warload "ウォーロード"

team add lancer "ランサー"
team add knight "ナイト"
team add dark_knight "ダークナイト"

team add assassin "アサシン"
team add silent_killer "サイレントキラー"
team add ninja "忍者"

team add hunter "ハンター"
team add ranger "レンジャー"
team add sniper "スナイパー"

team add magician "マジシャン"
team add sorcerer "ソーサラー"
team add wizard "ウィザード"

team add hit_detection "左クリック検知"

#チーム設定
team modify hit_detection collisionRule never