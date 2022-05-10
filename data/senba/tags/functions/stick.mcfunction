
#進捗をロックして再検知加納永徳にする
advancement revoke @s only senba:stick

#人参棒右クリック検知
 execute as @a[scores={senba_stick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function #senba:stick

#スコア訂正
 scoreboard players reset @a[scores={senba_stick=1..}] senba_stick