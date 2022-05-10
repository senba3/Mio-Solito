#　 [使い方]
#/execute as @対象 at @s run summon area_effect_cloud ^ ^ ^1 {Tags:[senba.motion]}
#/execute as @対象 at @s run function senba:motion
#の実行でMotionを与えます
#　<拡張一覧>
#"/summon area_effect_cloud ^ ^ ^1 {Tags:[senba.motion]}"にて、
#エリアエフェクトを召喚する位置を変えることでモーションの大きさを変えることができます。
#

#モーションはプレイヤーには出来ないよ

# モーション
 # 必要なものをピックアップ
 scoreboard objectives add senba.dummy dummy
 #滑りやすさ
 execute store result score #turn senba.dummy run data get entity @e[type=area_effect_cloud,tag=senba.motion,limit=1] Duration

 # 計算
 #X
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-X] store result score @s senba.dummy run data get entity @s Pos[0] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-X] as @e[type=area_effect_cloud,tag=senba.motion,limit=1] store result score @s senba.dummy run data get entity @s Pos[0] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-X] run scoreboard players operation @s senba.dummy -= @e[type=area_effect_cloud,tag=senba.motion,limit=1] senba.dummy
 execute if score @s senba.dummy matches 1.. if score @p senba.dummy matches ..-1 run scoreboard players operation @s senba.dummy /= #turn senba.dummy
 execute if score @s senba.dummy matches ..-1 if score @p senba.dummy matches 1.. run scoreboard players operation @s senba.dummy /= #turn senba.dummy
 scoreboard players operation @s senba.dummy += @p senba.dummy
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-X] store result entity @s Motion[0] double -0.015625 run scoreboard players get @s senba.dummy

 #Y
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Y] store result score @s senba.dummy run data get entity @s Pos[1] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Y] as @e[type=area_effect_cloud,tag=senba.motion,limit=1] store result score @s senba.dummy run data get entity @s Pos[1] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Y] run scoreboard players operation @s senba.dummy -= @e[type=area_effect_cloud,tag=senba.motion,limit=1] senba.dummy
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Y] store result entity @s Motion[1] double -0.015625 run scoreboard players get @s senba.dummy

 #Z
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Z] store result score @s senba.dummy run data get entity @s Pos[2] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Z] as @e[type=area_effect_cloud,tag=senba.motion,limit=1] store result score @s senba.dummy run data get entity @s Pos[2] 64
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Z] run scoreboard players operation @s senba.dummy -= @e[type=area_effect_cloud,tag=senba.motion,limit=1] senba.dummy
 execute unless entity @e[type=area_effect_cloud,tag=senba.motion,tag=senba.motion-Z] store result entity @s Motion[2] double -0.015625 run scoreboard players get @s senba.dummy


#キル
kill @e[type=area_effect_cloud,tag=senba.motion]
scoreboard objectives remove senba.dummy