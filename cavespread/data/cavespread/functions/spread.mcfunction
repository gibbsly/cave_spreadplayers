execute as @s at @s run tp @s ~ 256 ~
execute as @s at @s run spreadplayers ~ ~ 1 16 false @s
execute as @s at @s run tp @s ~ ~-1 ~
execute at @s as @s run function cavespread:castblock
execute at @s as @s run function cavespread:castair
execute at @s as @s unless block ~ ~-1 ~ #cavespread:valid run tellraw @s[tag=csdebug] {"text":"Fail - Reason: invalid landing block"}
execute at @s as @s unless block ~ ~-1 ~ #cavespread:valid run function cavespread:spread
execute at @s as @s unless block ~ ~1 ~ minecraft:air run tellraw @s[tag=csdebug] {"text":"Fail - Reason: no head room"}
execute at @s as @s unless block ~ ~1 ~ minecraft:air run function cavespread:spread
execute at @s as @s if block ~ ~2 ~ minecraft:bedrock run tellraw @s[tag=csdebug] {"text":"Fail - Reason: void"}
execute at @s as @s if block ~ ~2 ~ minecraft:bedrock run function cavespread:spread