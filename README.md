# Mio Solito
いつも使ってるテキスト達だ

## Usage
このテキスト達をフルで使うには別でスコアを作る必要がある。
 "/scoreboard objectives add senba_stick minecraft.used:carrot_on_a_stick"
 "/scoreboard objectives add senba.sneak minecraft.custom:sneak_time"

## スニーク検知
スニークしていると、"senba.sneak"のタグが付与されます。
検知範囲はスコアボードがスニークを読み取れる範囲まで。

## 人参棒右クリック検地
人参棒を聞き手に持った状態で右クリックすれば"function #senba:stick"が読み込ませます。
ファンクションをタグ付けして各自実行して。

## スコアタグ
スコアによるタグ、"senba.number"が付与されます。自動で。
1から順番に付けられていき、同じタグを持つプレイヤーはいません。

## モーション生成機
エリアエフェクトクラウド("senba.motion"タグ付き)の召喚位置によってMOBをMotionによって飛ばします。

## クロスボウチャージモディファイア
"/item modify entity @s weapon senba:charge"で、利き手にあるクロスボウを引きます。空気が装てんされています。

## アイテム間改造用モディファイア
"/item modify entity @s weapon senba:charge"でストレージ、"senba tag"にあるNBTをアイテムに代入します。

## Author
 Senba

## 使用範囲
折込配布可能
自作発言はおやめを
