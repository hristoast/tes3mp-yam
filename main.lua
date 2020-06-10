local YAM = {}

local scriptName = "YAM"

YAM.defaultConfig = {
    btnText = "OK",
    chatOnly = false,
    motd = color.Green .. "This is the default MOTD for YAM!\n\nYou should change it." .. color.Default,
    showInChat = false,
}

YAM.config = DataManager.loadConfiguration(scriptName, YAM.defaultConfig)

YAM.print = function(eventStatus, pid)
    if eventStatus.validDefaultHandler then
        if YAM.config.chatOnly or YAM.config.showInChat then
            tes3mp.SendMessage(pid, YAM.config.motd .. "\n")
        end
        if not YAM.config.chatOnly then
            tes3mp.CustomMessageBox(pid, -1, YAM.config.motd, YAM.config.btnText)
        end
    end
end

customEventHooks.registerHandler("OnPlayerEndCharGen", YAM.print)
customEventHooks.registerHandler("OnPlayerFinishLogin", YAM.print)
