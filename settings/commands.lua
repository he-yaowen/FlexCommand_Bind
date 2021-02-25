local _, FlexCommand_Bind = ...

FlexCommand_RegisterCommand("bind", {
    help = "bind a shortcut key to spell, item or macro",
    fn = function(args)
        local key = args["key"]

        if args["action"] then
            FlexCommand_Bind.bind.SetActionBinding(key, args["action"])
        else
            if args["spell"] then
                FlexCommand_Bind.bind.SetSpellBinding(key, args["spell"])
            elseif args["item"] then
                FlexCommand_Bind.bind.SetItemBinding(key, args["item"])
            elseif args["macrotext"] then
                FlexCommand_Bind.bind.SetMacroTextBinding(key, args["macrotext"])
            end
        end
    end
})
