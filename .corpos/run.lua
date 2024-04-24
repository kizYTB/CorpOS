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
salias("CraftMAIL","/.corpos/software/CraftMAIL/craftmail.lua")
salias("craftmail","/.corpos/software/CraftMAIL/craftmail.lua")
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
term.setCursorPos(2,1)
print("--------------------------------")
term.setCursorPos(4,1)
print("--------------------------------")
term.setCursorPos(3,1)
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