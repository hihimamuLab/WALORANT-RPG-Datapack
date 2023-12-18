### pack:load

#リロード通知
say Reloaded!

#ゲームルール
gamerule doMobSpawning false
gamerule doMobLoot false

#スコアボード(status)
#作成
scoreboard objectives add hp dummy
scoreboard objectives add hp_max dummy
scoreboard objectives add hp_regen dummy
scoreboard objectives add mp dummy
scoreboard objectives add mp_max dummy
scoreboard objectives add my_regen dummy
scoreboard objectives add atc dummy
scoreboard objectives add mg_atc dummy
scoreboard objectives add def dummy
scoreboard objectives add spd dummy
scoreboard objectives add crt dummy
scoreboard objectives add level dummy
#値設定
# ToDo...

#チーム(role)
#作成
team add fighter "戦士"
team add berserker "重戦士"
team add knight "騎士"
team add assassin "アサシン"
team add hunter "ハンター"
team add hit_detection
#チームルール
team modify hit_detection collisionRule never
# ToDo...

#設定
advancement revoke @a[advancements={pack:hit_detection=true}] only pack:hit_detection
