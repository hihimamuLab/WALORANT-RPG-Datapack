### pack:load

#リロード通知
say Reloaded!

#ゲームルール
gamerule doMobSpawning false
gamerule doMobLoot false

#設定
advancement revoke @a[advancements={pack:hit_detection=true}] only pack:hit_detection
team add hit_detection
team modify hit_detection collisionRule never