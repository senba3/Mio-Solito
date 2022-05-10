#最も最初
scoreboard objectives add senba.number dummy
execute unless score #main senba.number matches 1.. run scoreboard players set #main senba.number 0

#自分にスコアを与える
scoreboard players add #main senba.number 1
scoreboard players operation @s senba.number = #main senba.number
