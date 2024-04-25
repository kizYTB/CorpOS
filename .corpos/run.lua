term.clear()
term.setCursorPos(1,1)

------------------------
--ajouts des variables
------------------------

salias = shell.setAlias
run = shell.run

-------------------------------
--Command Alias
-------------------------------

salias("ll","list")
salias("l","list")
salias("nano","edit")
salias("Snake","/.corpos/software/CraftMAIL/Snake.luaa")
salias("snake","/.corpos/software/CraftMAIL/Snake.lua")
salias("firewolf","/.corpos/software/Firewolf.lua")
salias("firewolf","/.corpos/software/Firewolf.lua")
salias("debug","/.corpos/debug/debug.lua")
salias("help","/.corpos/commands/help.lua")

------------------------------
--1. Propiété de l'ecran
------------------------------

term.clear()
term.setCursorPos(1,1)

------------------------------
--1. Demmarage
-------------------------------

print("Chargement de CorpOS")
term.setCursorPos(1,2)
print("--------------------------------")
term.setCursorPos(1,4)
print("--------------------------------")
term.setCursorPos(1,3)
textutils.slowPrint("################################")

sleep(3)

------------------------------
--2. Propiété de l'ecran
------------------------------

term.clear()
term.setCursorPos(1,1)

------------------------------
--2. Demmarage
-------------------------------

print("------------------------------------------")
textutils.slowPrint("Bienvenue dans CorpOS")
sleep(1)
print("N'oublier pas d'aller passé sur le github pour savoir si il y a des mise a jours !")
print("https://github.com/legeekkylian/CorpOS")
print("------------------------------------------")