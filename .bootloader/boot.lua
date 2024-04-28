term.clear()
term.setCursorPos(1,1)

-- Définition des options de démarrage
local bootOptions = {
    { prompt = "Shell", program = "" },
    { prompt = "CorpOS", program = "/.corpos/run.lua" },
    { prompt = "Update", program = "/.corpos/debug/reinstallOS.lua" },
    { prompt = "Uninstall", program = "/test.lua" },
    -- Ajoutez d'autres options ici
}

-- Fonction pour afficher le menu de démarrage et permettre à l'utilisateur de choisir une option
local function startupMenu()
    print("Boot Options:")
    for i, item in ipairs(bootOptions) do
        print(i .. ". " .. item.prompt)
    end
    while true do
        io.write("Choose an option: ")
        local choice = tonumber(io.read())
        if choice and choice >= 1 and choice <= #bootOptions then
            return choice
        else
            print("Invalid option. Please choose a number between 1 and " .. #bootOptions)
        end
    end
end

-- Fonction principale du boot loader
local function main()
    -- Affiche le logo au démarrage
    print("                    7777777")
    print("                  77777777777")
    print("                  7         7")
    print("                 77  0   0  77")
    print("                 77         77")
    print("                 77  00000  77")
    print("                  7         7")
    print("                  77777777777")
    print("                    7777777")

    -- Affiche le menu de démarrage
    local choice = startupMenu()

    -- Exécute l'action correspondant à l'option choisie
    local selectedOption = bootOptions[choice]
    if selectedOption and selectedOption.program then
        shell.run(selectedOption.program) -- Lance le programme correspondant à l'option choisie
    else
        print("Invalid option or program not defined for the selected option.")
    end
end

-- Exécute la fonction principale
main()
