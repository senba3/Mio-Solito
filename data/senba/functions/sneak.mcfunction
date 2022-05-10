#まずは進捗をロックして再検知狩野永徳にする
advancement revoke @s only senba:sneak

#この前与えたタグを消す
tag @s[tag=senba.sneak] remove senba.sneak

#もしスニークしてたらタグを与える
tag @s[scores={senba.sneak=1..}] add senba.sneak

#スニークスコアを減らす
scoreboard players reset @s[scores={senba.sneak=1..}] senba.sneak
