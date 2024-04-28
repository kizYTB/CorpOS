run = shell.run

term.clear()
term.setCursorPos(1,1)

print("-------------------------------")
term.setCursorPos(1,3)
print("-------------------------------")
term.setCursorPos(1,2)
textutils.slowPrint("Demmare du bootloader CorpOS.")

sleep(3)

run("/.bootloader/boot.lua")