local discordRPC = require("discordRPC") -- Bibliothèque fictive

function updateDiscordPresence()
    local playerName = world.entityName(entity.id())
    local playerPosition = world.entityPosition(entity.id())
    
    local presence = {
        state = "Sur la planète : " .. playerPosition[1] .. "," .. playerPosition[2],
        details = "Joueur : " .. playerName,
        largeImageKey = "starbound_logo",
        largeImageText = "Starbound",
        startTimestamp = os.time()
    }

    discordRPC.updatePresence(presence)
end

-- Mettez à jour le Rich Presence régulièrement, par exemple toutes les 5 minutes
updateDiscordPresence()
