### pack:attack_enemy/hitted_handling/beginner_sword/hit_detection


#確認用メッセージ　ToDo:そのうち削除
title @s title "左クリック"
#advancements リセット
advancement revoke @a[advancements={pack:hit_detection=true}] only pack:hit_detection

function pack:attack_enemy/hitted_handling/beginner_sword/rec_hit_detection