require('helpers')

---------------------------------------------------------------------
--  TODO: You can use this file as the jumping off ponit for your
--  custom addon code.
---------------------------------------------------------------------

function showWelcomeMessage()
    -- We'll get the player object for two reasons:
    --  1. So we can welcome the player by name, and
    --  2. So we don't try to write chat messages if we're not signed in 
    --      as a player. This can happen when signed in to FFXI without
    --      selecting a character yet, or between switching characters.
    --
    local player = windower.ffxi.get_player()
    if not player then
        return
    end

    writeColoredMessage(ChatColors.green, 'Welcome to [%s], %s!':format(
        colorize(ChatColors.yellow, ADDON_NAME, ChatColors.green),
        colorize(ChatColors.blue, player.name, ChatColors.green)
    ))
    writeColoredMessage(ChatColors.gray,
        '  If you haven\'t already done so, be sure to edit the addon-info.lua')
    writeColoredMessage(ChatColors.gray,
        '    file to set your own custom addon information.')
    writeMessage('')
    writeColoredMessage(ChatColors.gray,
        '  Enjoy your Windower addon development experience!')
end

