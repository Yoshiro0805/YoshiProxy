

function OnTextOverlay(text)
    var = {}
    var[0] = "OnTextOverlay"
    var[1] = text
    var.netid = -1
    SendVarlist(var)
end

function OnConsoleMessage(text)
    var = {}
    var[0] = "OnConsoleMessage"
    var[1] = text
    var.netid = -1
    SendVarlist(var)
end



function FaceSide(side)
    if side == "left" then
        local packet = {}
        packet.type = 0
        packet.pos_x = GetLocal().pos_x
        packet.pos_y = GetLocal().pos_y
        packet.flags = 48
        SendPacketRaw(packet)
        return true
    elseif side == "right" then
        local packet = {}
        packet.type = 0
        packet.pos_x = GetLocal().pos_x
        packet.pos_y = GetLocal().pos_y
        packet.flags = 32
        SendPacketRaw(packet)
        return true
    end
end

function proxy_shortcut1()
    varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Main Commands``|left|5956|
add_spacer|small|
add_smalltext|`7Command : `0/info `0( `3show the status for each command `0)|left|
add_smalltext|`7Command : `0/autosurg or /autos `0( `3Enable / Disable auto-surg `0)|left|
add_smalltext|`7Command : `0/autosurghelper or /autosh `0( `3Enable / Disable surg helper `0)|left|
add_smalltext|`7Command : `0/autocrime or /autoc `0( `3Enable / Disable auto-crime `0)|left|
add_smalltext|`7Command : `0/autostartopia or /autost `0( `3Enable / Disable auto-startopia `0)|left|
add_smalltext|`7Command : `0/modfly `0( `3Enable / Disable modfly `0)|left|
add_smalltext|`7Command : `0/fire ban `0( `3auto-ban troller ( fire lighter ) `0)|left|
add_smalltext|`7Command : `0/rndm `0( `3warp to a random world `0)|left|
add_smalltext|`7Command : `0/spinall `0( `3spin all wheels in world `0)|left|
add_smalltext|`7Command : `0/res `0( `3respawn `0)|left|
add_smalltext|`7Command : `0/balance `0( `3Show total locks in inv `0)|left|
add_smalltext|`7Command : `0/warn [`9 text `0] `0( `3warn your self with custom warning `0)|left|
add_smalltext|`7Command : `0/relog `0( `3fast relog `0)|left|
add_smalltext|`7Command : `0/fd `0( `3Enable / Disable fast drop `0)|left|
add_smalltext|`7Command : `0/ft `0( `3Enable / Disable fast trash `0)|left|
add_smalltext|`7Command : `0/gems `0( `3see total gems in world `0)|left|
add_smalltext|`7Command : `0/ping `0( `3show your current ping `0)|left|
add_smalltext|`7Command : `0/testmod `0( `3test situation if mod joined `0)|left|
add_smalltext|`7Command : `0/nopickup `0( `3Enable / Disable anti-pickup items `0)|left|
add_smalltext|`7Command : `0/cid `0( `3create new account `0)|left|
add_smalltext|`7Command : `0/fc `0( `3force close the proxy `0)|left|
add_smalltext|`7Command : `0/door [`9 id `0] `0( `3join a door using id `0)|left|
add_smalltext|`7Command : `0/pickup [`9 id `0] `0( `3only pickup 1 item `0)|left|
add_smalltext|`7Command : `0/autocollect or /ac `0( `3Enable / Disable autocollect `0)|left|
add_smalltext|`7Command : `0/blink `0( `3Enable / Disable blink skin color `0)|left|
add_smalltext|`7Command : `0/blinkd `0( `3Set blink delay in ms `0)|left|
add_smalltext|`7Command : `0/dropall `0( `3dropp all inv items `0)|left|
add_smalltext|`1Note : `0[`4 Have chance of Shadowban `0]|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut2()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3World Commands``|left|3802|
add_spacer|small|
add_smalltext|`7Command : `!/World|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/pullall `0( `3pull all players in world `0)|left|
add_smalltext|`7Command : `0/kickall `0( `3kick all players in world `0)|left|
add_smalltext|`7Command : `0/banall `0( `3ban all players in world `0)|left|
add_smalltext|`7Command : `0/tradeall `0( `3trade all players in world `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut3()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Wrench Commands``|left|32|
add_spacer|small|
add_smalltext|`7Command : `!/wm|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/wp `0( `3turn on wrench pull `0)|left|
add_smalltext|`7Command : `0/wk `0( `3turn on wrench kick `0)|left|
add_smalltext|`7Command : `0/wb `0( `3turn on wrench ban `0)|left|
add_smalltext|`7Command : `0/woff `0( `3turn wrench mode off `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut4()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Growscan Commands``|left|6016|
add_spacer|small|
add_smalltext|`7Command : `!/gs or /growscan|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/growscan 1 or /gs 1 `0( `3scan placed blocks `0)|left|
add_smalltext|`7Command : `0/growscan 2 or /gs 2 `0( `3scan dropped items `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end


function proxy_shortcut5()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Farming Commands``|left|6950|
add_spacer|small|
add_smalltext|`7Command : `!/ut|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/ut add or /ua `0( `3turn on fast ut adder `0)|left|
add_smalltext|`7Command : `0/ut empty or /ue `0( `3turn on fast ut emptier `0)|left|
add_smalltext|`7Command : `0/ut off or /uoff `0( `3turn off ut mode `0)|left|
add_spacer|small|
add_smalltext|`7Command : `!/gaia|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/gaia add or /ga `0( `3turn on fast gaia adder `0)|left|
add_smalltext|`7Command : `0/gaia empty or /ge `0( `3turn on fast gaia emptier `0)|left|
add_smalltext|`7Command : `0/gaia off or /goff `0( `3turn off gaia mode `0)|left|
add_spacer|small|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end


function proxy_shortcut6()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Join Commands``|left|6|
add_spacer|small|
add_smalltext|`7Command : `0/j pull `0( `3pull player when join `0)|left|
add_smalltext|`7Command : `0/j kick `0( `3kick player when join `0)|left|
add_smalltext|`7Command : `0/j ban `0( `3ban player when join `0)|left|
add_smalltext|`7Command : `0/j off `0( `3turn off join mode `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut7()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Donation Box Commands``|left|1452|
add_spacer|small|
add_smalltext|`7Command : `!/donation|left|
add_spacer|small|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/donation empty or /de `0( `3fast empty donation box `0)|left|
add_smalltext|`7Command : `0/donation add or /da `0( `3fast add donation box `0)|left|
add_smalltext|`7Command : `0/donation off or /doff `0( `3turn off donation box mode `0)|left|
add_quick_exit|
add_spacer|small|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut8()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Vend Commands``|left|2978|
add_spacer|small|
add_smalltext|`7Command : `0/ve `0( `3fast empty vend `0)|left|
add_smalltext|`7Command : `0/va `0( `3fast stocker vend `0)|left|
add_smalltext|`7Command : `0/vb [`9 amount `0] `0( `3fast buy from vend `0)|left|
add_smalltext|`7Command : `0/voff `0( `3turn off vend mode `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcut9()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Spam Commands``|left|6272|
add_spacer|small|
add_smalltext|`7Command : `0/spamt [`9 text `0] `0( `3set a text to spam `0)|left|
add_smalltext|`7Command : `0/spamd [`9 delay `0] `0( `3set delay in seconds `0)|left|
add_smalltext|`7Command : `0// `0( `3start / stop spam `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcu01()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Harvest Commands``|left|1830|
add_spacer|small|
add_smalltext|`7Command : `0/harvestid [`9 id `0] `0( `3set a seed id `0)|left|
add_smalltext|`7Command : `0/harvestdelay [`9 delay `0] `0( `3set a delay in ms `0)|left|
add_smalltext|`7Command : `0/hv `0( `3start / stop harvest `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcu11()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Safe Commands``|left|278|
add_spacer|small|
add_smalltext|`7Command : `0/safe 1 `0( `3collect & ban all & unacces & leave `0)|left|
add_smalltext|`7Command : `0/safe 2 `0( `3collect & unacces & leave `0)|left|
add_smalltext|`7Command : `0/safe 3 `0( `3collect & leave `0)|left|
add_smalltext|`7Command : `0/safe off `0( `3turns off safe commands `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end


function proxy_shortcu13()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Host Commands``|left|758|
add_spacer|small|
add_smalltext|`7Command : `0/spin check `0( `3check is spin real or fake `0)|left|
add_smalltext|`7Command : `0/spin qq `0( `3check qq spin `0)|left|
add_smalltext|`7Command : `0/spin reme `0( `3check reme spin `0)|left|
add_smalltext|`7Command : `0/spin all `0( `3check reme and qq spin `0)|left|
add_smalltext|`7Command : `0/bj `0( `3see total gems collected `0)|left|
add_smalltext|`7Command : `0/bjc `0( `3see total gems collected only for you `0)|left|
add_smalltext|`7Command : `0/settax [`9 amount `0] `0( `3set a tax % `0)|left|
add_smalltext|`7Command : `0/tax [`9 amount `0] `0( `3calculate tax `0)|left|
add_smalltext|`7Command : `0/daw `0( `3drop all wls`0)|left|
add_smalltext|`7Command : `0/dad `0( `3drop all dls `0)|left|
add_smalltext|`7Command : `0/daa `0( `3drop all dls and wls `0)|left|
add_smalltext|`7Command : `0/acp `0( `3auto compress wls `0)|left|
add_smalltext|`7Command : `0/sethost [`9 world `0] `0( `3set a host world `0)|left|
add_smalltext|`7Command : `0/setsave [`9 world `0] `0( `3set a save world `0)|left|
add_smalltext|`7Command : `0/ssaver [`9 name `0] `0( `3set a saver acc `0)|left|
add_smalltext|`7Command : `0/host `0( `3warp to host world `0)|left|
add_smalltext|`7Command : `0/save `0( `3warp to save world `0)|left|
add_smalltext|`7Command : `0/saver `0( `3pull saver acc `0)|left|
add_smalltext|`7Command : `0/sp1 `0( `3set pos 1 `0)|left|
add_smalltext|`7Command : `0/sp2 `0( `3set pos 2 `0) [ `1Optional `0]|left|
add_smalltext|`7Command : `0/sp3 `0( `3set pos 3 `0) [ `1Optional `0]|left|
add_smalltext|`7Command : `0/sp4 `0( `3set pos 4 `0) [ `1Optional `0]|left|
add_smalltext|`7Command : `0/spb `0( `3set original pos `0)|left|
add_smalltext|`7Command : `0/pos1 `0( `3go to pos 1 `0)|left|
add_smalltext|`7Command : `0/pos2 `0( `3go to pos 2 `0)|left|
add_smalltext|`7Command : `0/pos3 `0( `3go to pos 3 `0)|left|
add_smalltext|`7Command : `0/pos4 `0( `3go to pos 4 `0)|left|
add_smalltext|`7Command : `0/pback `0( `3go to original pos ( setposback ) `0)|left|
add_smalltext|`7Command : `0/win1 or /w1 [`9 amount `0] `0( `3drop locks to winner 1 `0)|left|
add_smalltext|`7Command : `0/win2 or /w2 [`9 amount `0] `0( `3drop locks to winner 2 `0)|left|
add_smalltext|`7Command : `0/win3 or /w3 [`9 amount `0] `0( `3drop locks to winner 3 `0)|left|
add_smalltext|`7Command : `0/win4 or /w4 [`9 amount `0] `0( `3drop locks to winner 4 `0)|left|
add_smalltext|`7Command : `0/dt `0( `3Drop tax on position `0)|left|
add_smalltext|`7Command : `0/dt1 `0( `3drop tax to winner 1 `0)|left|
add_smalltext|`7Command : `0/dt2 `0( `3drop tax to winner 2 `0)|left|
add_smalltext|`7Command : `0/dt3 `0( `3drop tax to winner 3 `0)|left|
add_smalltext|`7Command : `0/dt4 `0( `3drop tax to winner 4 `0)|left|
add_smalltext|`7Command : `0/tp or /. `0( `3collect locks from players `0)|left|
add_smalltext|`7Command : `0/cd [`9 amount `0] `0( /cd 120 ( 1 dl & 20 wls) `0) |left|
add_smalltext|`7Command : `0/wl [`9 amount `0]|left|
add_smalltext|`7Command : `0/dl [`9 amount `0]|left|
add_smalltext|`7Command : `0/bgl [`9 amount `0]|left| 
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcu14()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Choose title|left|6276|
add_spacer|small|
add_button|g4g_title|`9G4G Title|noflags|0|0|
add_button|master_title|`9Master Title|noflags|0|0|
add_button|doctor_title|`9Doctor Title|noflags|0|0|
add_button|maxlevel_title|`9Max Level Title|noflags|0|0|
add_button|legend_title|`9Legendary Title|noflags|0|0|
add_button|mods_title|`9Mods Title|noflags|0|0|
add_spacer|small|
add_button|reset_title|`@Reset Title|noflags|0|0|
add_smalltext|`2Shortcuts :|left|
add_smalltext|`7Command : `0/master `0( `3master title `0)|left|
add_smalltext|`7Command : `0/g4g `0( `3grow for good title `0)|left|
add_smalltext|`7Command : `0/doctor `0( `3doctor title `0)|left|
add_smalltext|`7Command : `0/maxlevel `0( `3max level title `0)|left|
add_smalltext|`7Command : `0/oflegend or /legend `0( `3of legend title `0)|left|
add_smalltext|`7Command : `0/title reset `0( `3reset titles to normal `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
return true
end

AddCallback("title_ui_commands","OnPacket", title_ui_commands)

function title_mode(type, packet)
    if packet:find("buttonClicked|legend_title") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pulling all players")
        titlexd = "legend"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3OF LEGEND `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
            GetLocal().name = GetLocal().name.." of Legend``"
        return true
    elseif packet:find("buttonClicked|g4g_title") then
        titlexd = "g4g"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DONOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|donor"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|master_title") then
        titlexd = "master"
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3MASTED `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|master"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|doctor_title") then
        titlexd = "doctor"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DOCTOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            GetLocal().name = "Dr."..GetLocal().name
 			var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|reset_title") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9 removing all titles")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|"
        var.netid = GetLocal().netid
        SendVarlist(var)
        return true
    end
end

AddCallback("title_mode", "OnPacket", title_mode)

function proxy_shortcu15()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Visual Clothes``|left|1784|
add_spacer|small|
add_smalltext|`7Command : `0/saveclothe or /sc `0( `3wear set when joining world `0)|left|
add_smalltext|`7Command : `0/vhat [`9 id `0] `0( `3set visual hat `0)|left|
add_smalltext|`7Command : `0/vshirt [`9 id `0] `0( `3set visual shirt `0)|left|
add_smalltext|`7Command : `0/vpant [`9 id `0] `0( `3set visual pant `0)|left|
add_smalltext|`7Command : `0/vshoes [`9 id `0] `0( `3set visual shoes `0)|left|
add_smalltext|`7Command : `0/vhand [`9 id `0] `0( `3set visual hand `0)|left|
add_smalltext|`7Command : `0/vwing [`9 id `0] `0( `3set visual wings `0)|left|
add_smalltext|`7Command : `0/vhair [`9 id `0] `0( `3set visual hair `0)|left|
add_smalltext|`7Command : `0/vneck [`9 id `0] `0( `3set visual neck `0)|left|
add_smalltext|`7Command : `0/vances [`9 id `0] `0( `3set visual ances `0)|left|
add_smalltext|`7Command : `0/clothe x /clothes `0( `3wear visual set `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function proxy_shortcu16()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3Visual Commands``|left|9228|
add_spacer|small|
add_smalltext|`7Command : `0/flag [`9 id `0]|left|
add_smalltext|`7Command : `0/guild [`9 id `0]|left|
add_smalltext|`7Command : `0/weather `0( `3change weather to random `0)|left|
add_smalltext|`7Command : `0/give [`9 id `0] [`9 count `0]|left|
add_smalltext|`7Command : `0/hide `0( `3hide all players names `0)|left|
add_smalltext|`7Command : `0/name [`9 name `0] `0( `3change your name `0)|left|
add_smalltext|`7Command : `0/inv `0( `3make everyone invisible `0)|left|
add_quick_exit|
end_dialog|proxy_shortcut|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end


function shortcuts_proxy22()
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3YoshiProxy Command List``|left|1790|
add_spacer|small|
add_label_with_icon|small|`!BUY PROXY ? DM `3Yoshiroo#8161|left|4802|
add_spacer|small|
add_label_with_icon|small|`5Current CSN tax : (`3]]..settax_1..[[%`5)|left|7188|
add_label_with_icon|small|`5Current World : `3]]..GetLocal().world..[[|left|1796|
add_spacer|small|
add_label_with_icon|small|`3Check my Discord server!``|left|8224|
add_spacer|small|
add_url_button||`1Join Our Discord Server ! ``|NOFLAGS|https://discord.gg/PmkcJ4k9w6|
add_url_button||`1Msg me on Facebook ! ``|NOFLAGS|https://www.facebook.com/everyonehatesjae|
add_spacer|small|
add_button|proxy_shortcut1|`5Main Commands|noflags|0|0|
add_button|proxy_shortcut2|`!World Commands|noflags|0|0|
add_button|proxy_shortcut3|`5Wrench Commands|noflags|0|0|
add_button|proxy_shortcut4|`!Growscan Commands|noflags|0|0|
add_button|proxy_shortcut5|`5Farming Commands|noflags|0|0|
add_button|proxy_shortcut6|`!Join Commands|noflags|0|0|
add_button|proxy_shortcut7|`5Donation Box Commands|noflags|0|0|
add_button|proxy_shortcut8|`!Vend Commands|noflags|0|0|
add_button|proxy_shortcut9|`5Spam Commands|noflags|0|0|
add_button|proxy_shortcu01|`!Harvest Commands|noflags|0|0|
add_button|proxy_shortcu11|`5Safe Commands|noflags|0|0|
add_button|proxy_shortcu13|`5Host Commands|noflags|0|0|
add_button|proxy_shortcu14|`!Titles Commands|noflags|0|0|
add_button|proxy_shortcu15|`5Visual Clothes Commands|noflags|0|0|
add_button|proxy_shortcu16|`!Visual Commands|noflags|0|0|
add_quick_exit|
end_dialog|lmfao_commands_main_proxy|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end

function shortcuts_proxy(type, packet)
    if packet == ("action|input\n|text|/proxy") then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`3YoshiProxy Command List``|left|1790|
add_spacer|small|
add_label_with_icon|small|`!BUY PROXY ? DM `3Yoshiroo#8161|left|4802|
add_spacer|small|
add_label_with_icon|small|`5Current CSN tax : (`3]]..settax_1..[[%`5)|left|7188|
add_label_with_icon|small|`5Current World : `3]]..GetLocal().world..[[|left|1796|
add_spacer|small|
add_label_with_icon|small|`3Check my Discord server!``|left|8224|
add_spacer|small|
add_url_button||`1Join Our Discord Server ! ``|NOFLAGS|https://discord.gg/PmkcJ4k9w6|
add_url_button||`1Msg me on Facebook ! ``|NOFLAGS|https://www.facebook.com/everyonehatesjae|
add_spacer|small|
add_button|proxy_shortcut1|`5Main Commands|noflags|0|0|
add_button|proxy_shortcut2|`!World Commands|noflags|0|0|
add_button|proxy_shortcut3|`5Wrench Commands|noflags|0|0|
add_button|proxy_shortcut4|`!Growscan Commands|noflags|0|0|
add_button|proxy_shortcut5|`5Farming Commands|noflags|0|0|
add_button|proxy_shortcut6|`!Join Commands|noflags|0|0|
add_button|proxy_shortcut7|`5Donation Box Commands|noflags|0|0|
add_button|proxy_shortcut8|`!Vend Commands|noflags|0|0|
add_button|proxy_shortcut9|`5Spam Commands|noflags|0|0|
add_button|proxy_shortcu01|`!Harvest Commands|noflags|0|0|
add_button|proxy_shortcu11|`5Safe Commands|noflags|0|0|
add_button|proxy_shortcu13|`5Host Commands|noflags|0|0|
add_button|proxy_shortcu14|`!Titles Commands|noflags|0|0|
add_button|proxy_shortcu15|`5Visual Clothes Commands|noflags|0|0|
add_button|proxy_shortcu16|`!Visual Commands|noflags|0|0|
add_quick_exit|
end_dialog|lmfao_commands_main_proxy|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
return true
end
end
AddCallback("shortcuts_proxy","OnPacket", shortcuts_proxy)

function shortcutsxd1(type, packet)
    if packet:find("buttonClicked|proxy_shortcut1") then
        proxy_shortcut1()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut2") then
        proxy_shortcut2()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut3") then
        proxy_shortcut3()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut4") then
        proxy_shortcut4()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut5") then
        proxy_shortcut5()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut6") then
        proxy_shortcut6()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut7") then
        proxy_shortcut7()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut8") then
        proxy_shortcut8()
        return true
    elseif packet:find("buttonClicked|proxy_shortcut9") then
        proxy_shortcut9()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu01") then
        proxy_shortcu01()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu11") then
        proxy_shortcu11()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu13") then
        proxy_shortcu13()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu14") then
        proxy_shortcu14()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu15") then
        proxy_shortcu15()
        return true
    elseif packet:find("buttonClicked|proxy_shortcu16") then
        proxy_shortcu16()
        return true
    elseif packet:find("dialog_name|proxy_shortcut") then
        shortcuts_proxy22()
        return true
    end
end

AddCallback("shortcutsxd1", "OnPacket", shortcutsxd1)

function Ut_commands(type, packet)
    if packet == ("action|input\n|text|/ut") then
        if ut_adder_mode then
            ut_mode_69 = "`3Fast Add"
        elseif ut_emptier_mode then
            ut_mode_69 = "`3Fast Empty"
        elseif not ut_emptier_mode and not ut_adder_mode then
            ut_mode_69 = "`4Disabled"
        end
if ut_of_or_no and ut_adder_mode then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Unstable Tesseract Commands|left|6948|
add_spacer|small
add_textbox|`9Currently UT Mode is `2Enabled `9And is Set To : `3]]..ut_mode_69..[[|left|
add_spacer|small
add_button|UT_add|`2Fast Adder|noflags|0|0|
add_button|UT_empty|`9Fast Emptier|noflags|0|0|
add_spacer|small
add_button|UT_off|`@Turn off UT mode|noflags|0|0|
add_quick_exit|
end_dialog|ut_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif ut_of_or_no and ut_emptier_mode then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Unstable Tesseract Commands|left|6948|
add_spacer|small
add_textbox|`9Currently UT Mode is `2Enabled `9And is Set To : `3]]..ut_mode_69..[[|left|
add_spacer|small
add_button|UT_add|`9Fast Adder|noflags|0|0|
add_button|UT_empty|`2Fast Emptier|noflags|0|0|
add_spacer|small
add_button|UT_off|`@Turn off UT mode|noflags|0|0|
add_quick_exit|
end_dialog|ut_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
else
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Unstable Tesseract Commands|left|6948|
add_spacer|small
add_textbox|`9Currently UT Mode is `4Disabled|left|
add_spacer|small
add_button|UT_add|`9Fast Adder|noflags|0|0|
add_button|UT_empty|`9Fast Emptier|noflags|0|0|
add_spacer|small
add_button|UT_off|`@Turn off UT mode|noflags|0|0|
add_quick_exit|
end_dialog|ut_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("Ut_commands","OnPacket", Ut_commands)

function UT_modes12(type, packet)
    if packet:find("buttonClicked|UT_add") then
        ut_of_or_no = true
        if ut_emptier_mode then
            ut_emptier_mode = false
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
        end
            ut_adder_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast UT adder `3enabled")
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
            AddCallback("UT_mode1", "OnVarlist", UT_mode1)
            AddCallback("UT_mode2", "OnVarlist", UT_mode2)
        return true
    elseif packet:find("buttonClicked|UT_empty") then
        ut_of_or_no = true
        if ut_adder_mode then
            ut_adder_mode = false
            RemoveCallback("UT_mode1")
            RemoveCallback("UT_mode2")
        end
            ut_emptier_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast UT emptier `3enabled")
            AddCallback("UT_mode3", "OnVarlist", UT_mode3)
            AddCallback("UT_mode4", "OnVarlist", UT_mode4)
        return true
    elseif packet:find("buttonClicked|UT_off") then
        ut_of_or_no = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9UT mode is now `3off")
        if ut_adder_mode then
        RemoveCallback("UT_mode1")
        RemoveCallback("UT_mode2")
        ut_adder_mode = false
        end
        if ut_emptier_mode then
        RemoveCallback("UT_mode3")
        RemoveCallback("UT_mode4")
        ut_emptier_mode = false
        end
        return true
    end
end

AddCallback("UT_modes12", "OnPacket", UT_modes12)

function gs_xd(type, packet)
    if packet == ("action|input\n|text|/gs") or packet == ("action|input\n|text|/growscan") then
var = {}
var[0] = "OnDialogRequest"
var[1] = [[
add_label_with_icon|big|`wWorld Stats``|left|6016|
add_spacer|small|
add_textbox|`wThis amazing block can show the stats for the whole world!|left
add_spacer|small|
add_textbox|`wWhich stats would you like to view?|left
add_button|placed_gs|World Blocks|noflags|0|0|
add_button|float_gs|Floating Items|noflags|0|0|
add_quick_exit|
end_dialog|grow_scaxn|`0Cancel|`0Back|
]]
var.netid = -1
SendVarlist(var)
return true
end
end

AddCallback("gs_xd","OnPacket", gs_xd)

function growscan_mode(type, packet)
    if packet:find("buttonClicked|placed_gs") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Scaning placed blocks")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k,v in pairs(GetTiles()) do
            id = v.fg
            if store1[v.fg] == nil then
                store1[v.fg] = {id = v.fg, qty = 1}
            else
                store1[v.fg].qty = store1[v.fg].qty + 1
            end
            if store1[v.bg] == nil then
                store1[v.bg] = {id = v.bg, qty = 1}
            else
                store1[v.bg].qty = store1[v.bg].qty + 1
            end
        end
        
        placedshit = "add_spacer|small|"
        for _,tile in pairs(store1) do
            count = round(tile.qty)
            idplaced = math.floor(tile.id)
            placedshit =
                placedshit ..
                "\nadd_label_with_icon|small|`0"  ..GetIteminfo(idplaced).name.." `0: "..count.."``|left|" .. tostring(tile.id)
        end
                             
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[
set_default_color|`o
add_label_with_icon|big|`0Placed Items``|left|6016
]]..placedshit..[[
add_quick_exit|
end_dialog|grow_scan|`0Back|`4Back|
]]
varlist.netid = -1
SendVarlist(varlist)
        return true

        
    elseif packet:find("buttonClicked|float_gs") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Scaning dropped items")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k, v in pairs(GetObjects()) do
            id = v.id
            if store1[v.id] == nil then
                store1[v.id] = {id = v.id, qty = v.count}
            else
                store1[v.id].qty = store1[v.id].qty + v.count
            end
        end
        
        droppedshit = "add_spacer|small|"
        for _, object in pairs(store1) do
            count = round(object.qty)
            xx = math.floor(object.id)
                droppedshit =
                    droppedshit ..
                "\nadd_label_with_icon|small|`0"  ..GetIteminfo(xx).name.." `0: "..count.."``|left|" .. tostring(object.id)
        end
        
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[
set_default_color|`o
add_label_with_icon|big|`0Floating Items `0``|left|6016
]]..droppedshit..[[
add_quick_exit|
end_dialog|grow_scan|`0Back|`4Back|
]]
varlist.netid = -1
SendVarlist(varlist)
        return true
    end
end

AddCallback("growscan_mode", "OnPacket", growscan_mode)

function gs_back(type, packet)
    if packet:find("dialog_name|grow_scan") then
        var = {}
var[0] = "OnDialogRequest"
var[1] = [[
add_label_with_icon|big|`wWorld Stats``|left|6016|
add_spacer|small|
add_textbox|`wThis amazing block can show the stats for the whole world!|left
add_spacer|small|
add_textbox|`wWhich stats would you like to view?|left
add_button|placed_gs|World Blocks|noflags|0|0|
add_button|float_gs|Floating Items|noflags|0|0|
add_quick_exit|
end_dialog|grow_scaxn|`0Cancel|`0Back|
]]
var.netid = -1
SendVarlist(var)
        return true
    end
end

AddCallback("gs_back", "OnPacket", gs_back)

function gs1(type, packet)
    if packet == ("action|input\n|text|/gs 1") or packet == ("action|input\n|text|/growscan 1")then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Scaning placed blocks")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k,v in pairs(GetTiles()) do
            id = v.fg
            if store1[v.fg] == nil then
                store1[v.fg] = {id = v.fg, qty = 1}
            else
                store1[v.fg].qty = store1[v.fg].qty + 1
            end
            if store1[v.bg] == nil then
                store1[v.bg] = {id = v.bg, qty = 1}
            else
                store1[v.bg].qty = store1[v.bg].qty + 1
            end
        end
        
        placedshit = "add_spacer|small|"
        for _,tile in pairs(store1) do
            count = round(tile.qty)
            idplaced = math.floor(tile.id)
            placedshit =
                placedshit ..
                "\nadd_label_with_icon|small|`0"  ..GetIteminfo(idplaced).name.." `0: "..count.."``|left|" .. tostring(tile.id)
        end
        
        varlist = {}
        varlist[0] = "OnDialogRequest"
        varlist[1] = "set_default_color|`o\nadd_label_with_icon|big|`0Placed Items `0``|left|6016\n"..placedshit.."\nadd_quick_exit"
        varlist.netid = -1
        SendVarlist(varlist)
        return true
    end
end
    
AddCallback("gs_1","OnPacket", gs1)

function gs2(type, packet)
    if packet == ("action|input\n|text|/gs 2") or packet == ("action|input\n|text|/growscan 2")then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Scaning dropped items")
        function round(n)
            return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
        end
        
        store1 = {}
        
        for k, v in pairs(GetObjects()) do
            id = v.id
            if store1[v.id] == nil then
                store1[v.id] = {id = v.id, qty = v.count}
            else
                store1[v.id].qty = store1[v.id].qty + v.count
            end
        end
        
        droppedshit = "add_spacer|small|"
        for _, object in pairs(store1) do
            count = round(object.qty)
            xx = math.floor(object.id)
                droppedshit =
                    droppedshit ..
                "\nadd_label_with_icon|small|`0"  ..GetIteminfo(xx).name.." `0: "..count.."``|left|" .. tostring(object.id)
        end
        
        varlist = {}
        varlist[0] = "OnDialogRequest"
        varlist[1] = "set_default_color|`o\nadd_label_with_icon|big|`0Floating items `0``|left|6016\n"..droppedshit.."\nadd_quick_exit"
        varlist.netid = -1
        SendVarlist(varlist)
        return true
    end
end
    
AddCallback("gs_2","OnPacket", gs2)


function join_commands(type, packet)
    if packet == ("action|input\n|text|/join") then
        if set_mod_join == "pull" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Join Commands|left|6|
add_spacer|small
add_textbox|`9Currently Join Mode is `2Enabled `9And is Set To : `3]]..set_mod_join..[[|left|
add_spacer|small
add_button|join_pull|`2Join Pull|noflags|0|0|
add_button|join_kick|`9Join Kick|noflags|0|0|
add_button|join_ban|`9Join Ban|noflags|0|0|
add_spacer|small|
add_button|join_off|`@Turn Off Join Mode|noflags|0|0|
add_quick_exit|
end_dialog|join_commands|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif set_mod_join == "kick" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Join Commands|left|6|
add_spacer|small
add_textbox|`9Currently Join Mode is `2Enabled `9And is Set To : `3]]..set_mod_join..[[|left|
add_spacer|small
add_button|join_pull|`9Join Pull|noflags|0|0|
add_button|join_kick|`2Join Kick|noflags|0|0|
add_button|join_ban|`9Join Ban|noflags|0|0|
add_spacer|small|
add_button|join_off|`@Turn Off Join Mode|noflags|0|0|
add_quick_exit|
end_dialog|join_commands|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif set_mod_join == "ban" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Join Commands|left|6|
add_spacer|small
add_textbox|`9Currently Join Mode is `2Enabled `9And is Set To : `3]]..set_mod_join..[[|left|
add_spacer|small
add_button|join_pull|`9Join Pull|noflags|0|0|
add_button|join_kick|`9Join Kick|noflags|0|0|
add_button|join_ban|`2Join Ban|noflags|0|0|
add_spacer|small|
add_button|join_off|`@Turn Off Join Mode|noflags|0|0|
add_quick_exit|
end_dialog|join_commands|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif set_mod_join == "off" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Join Commands|left|6|
add_spacer|small|
add_textbox|`9Currently Join Mode is `4Disabled|left|
add_spacer|small|
add_button|join_pull|`9Join Pull|noflags|0|0|
add_button|join_kick|`9Join Kick|noflags|0|0|
add_button|join_ban|`9Join Ban|noflags|0|0|
add_spacer|small|
add_button|join_off|`2Turn Off Join Mode|noflags|0|0|
add_quick_exit|
end_dialog|join_commands|`4Cancel|`2Okay|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("join_commands","OnPacket", join_commands)

function join_ui_mode(type, packet)
    if packet:find("buttonClicked|join_pull") then
        set_mod_join = "pull"
        OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
        function when_join(vlist)
            if vlist[0]=="OnSpawn" then
                a = vlist[1]:match("name|(`.[^`]+)")
                name = a:sub(3)
                SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
            end
        end
        AddCallback("when_join","OnVarlist", when_join)
        return true
    elseif packet:find("buttonClicked|join_off") then
        set_mod_join = "off"
        OnConsoleMessage("`0[ `3Yoshiro `0] `9turning off join mode")
        RemoveCallback("when_join")
        return true
    elseif packet:find("buttonClicked|join_ban") then
        set_mod_join = "ban"
        OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
        function when_join(vlist)
            if vlist[0]=="OnSpawn" then
                a = vlist[1]:match("name|(`.[^`]+)")
                name = a:sub(3)
                SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
            end
        end
        AddCallback("when_join","OnVarlist", when_join)
        return true
    elseif packet:find("buttonClicked|join_kick") then
        set_mod_join = "kick"
        OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
        function when_join(vlist)
            if vlist[0]=="OnSpawn" then
                a = vlist[1]:match("name|(`.[^`]+)")
                name = a:sub(3)
                SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
            end
        end
        AddCallback("when_join","OnVarlist", when_join)
        return true
    end
end

AddCallback("join_ui_mode", "OnPacket", join_ui_mode)

mode_wm = "off"

function wm(type, packet)
if packet == ("action|input\n|text|/wm") then
if mode_wm == "off" then
type_wm = "`4Disabled"
else
type_wm = "`2Enabled"
end
if type_wm == "`2Enabled" and mode_wm == "pull" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `2pull  |staticYellowFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_wm == "`2Enabled" and mode_wm == "kick" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `2kick  |staticYellowFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_wm == "`2Enabled" and mode_wm == "ban" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `2Enabled `9And is Set To : `3]]..mode_wm..[[|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `2ban  |staticYellowFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`@Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
else
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Wrench Mode|left|32|
add_spacer|small
add_textbox|`9Currently Wrench Mode is `4Disabled|left|
add_spacer|small
add_button_with_icon|wrench_pull|  `9pull  |staticBlueFrame|32|
add_button_with_icon|wrench_kick|  `9kick  |staticBlueFrame|32|
add_button_with_icon|wrench_ban|  `9ban  |staticBlueFrame|32|
add_button_with_icon||END_LIST|noflags|0|0|
add_spacer|small
add_button|wrench_off|`2Turn off wrench mode|noflags|0|0|
add_quick_exit|
end_dialog|wrench_modesxd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("wm","OnPacket", wm)
  
function Wrench_mode(type, packet)
    if packet:find("buttonClicked|wrench_pull") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3pull")
        mode_wm = "pull"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/pull "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    elseif packet:find("buttonClicked|wrench_kick") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3kick")
        mode_wm = "kick"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/kick "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)  
        return true
    elseif packet:find("buttonClicked|wrench_ban") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3ban")
        mode_wm = "ban"
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/ban "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    elseif packet:find("buttonClicked|wrench_off") then
        mode_wm = "off"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode is `3off")
        RemoveCallback("Wrench") 
        return true
    end
end

AddCallback("Wrench_mode", "OnPacket", Wrench_mode)

function Gaia_commands(type, packet)
    if packet == ("action|input\n|text|/gaia") then
if gaia_of_or_no and gaia_adder_mode then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Gaia's Beacon Commands|left|6946|
add_spacer|small
add_textbox|`9Currently GAIA Mode is `2Enabled `9And is Set To : `3Fast Add|left|
add_spacer|small
add_button|GAIA_add|`2Fast Adder|noflags|0|0|
add_button|GAIA_empty|`9Fast Emptier|noflags|0|0|
add_spacer|small
add_button|GAIA_off|`@Turn off GAIA mode|noflags|0|0|
add_quick_exit|
end_dialog|gaia_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif gaia_of_or_no and gaia_emptier_mode then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Gaia's Beacon Commands|left|6946|
add_spacer|small
add_textbox|`9Currently GAIA Mode is `2Enabled `9And is Set To : `3Fast Empty|left|
add_spacer|small
add_button|GAIA_add|`9Fast Adder|noflags|0|0|
add_button|GAIA_empty|`2Fast Emptier|noflags|0|0|
add_spacer|small
add_button|GAIA_off|`@Turn off GAIA mode|noflags|0|0|
add_quick_exit|
end_dialog|gaia_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
else
    varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Gaia's Beacon Commands|left|6946|
add_spacer|small
add_textbox|`9Currently GAIA Mode is `4Disabled|left|
add_spacer|small
add_button|GAIA_add|`9Fast Adder|noflags|0|0|
add_button|GAIA_empty|`9Fast Emptier|noflags|0|0|
add_spacer|small
add_button|GAIA_off|`@Turn off GAIA mode|noflags|0|0|
add_quick_exit|
end_dialog|gaia_mode_xd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("Gaia_commands","OnPacket", Gaia_commands)
function GAIA_modes12(type, packet)
    if packet:find("buttonClicked|GAIA_add") then
        ga_of_or_no = true
        if ga_emptier_mode then
            ga_emptier_mode = false
            RemoveCallback("GA_mode3")
            RemoveCallback("GA_mode4")
        end
            ga_adder_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast GAIA adder `3enabled")
            RemoveCallback("GA_mode3")
            RemoveCallback("GA_mode4")
            AddCallback("GA_mode1", "OnVarlist", GA_mode1)
            AddCallback("GA_mode2", "OnVarlist", GA_mode2)
        return true
    elseif packet:find("buttonClicked|GAIA_empty") then
        ga_of_or_no = true
        if ga_adder_mode then
            ga_adder_mode = false
            RemoveCallback("GA_mode1")
            RemoveCallback("GA_mode2")
        end
            ga_emptier_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast GAIA emptier `3enabled")
            AddCallback("GA_mode3", "OnVarlist", GA_mode3)
            AddCallback("GA_mode4", "OnVarlist", GA_mode4)
        return true
    elseif packet:find("buttonClicked|GAIA_off") then
        ga_of_or_no = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9GAIA mode is now `3off")
        if ga_adder_mode then
            RemoveCallback("GA_mode1")
            RemoveCallback("GA_mode2")
            ga_adder_mode = false
            end
            if ga_emptier_mode then
            RemoveCallback("GA_mode3")
            RemoveCallback("GA_mode4")
            ga_emptier_mode = false
        end
        return true
    end
end

AddCallback("GAIA_modes12", "OnPacket", GAIA_modes12)

function world_commands(type, packet)
    if packet == ("action|input\n|text|/world") then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!World Commands|left|3802|
add_spacer|small
add_button|world_pull|`9Pull all players|noflags|0|0|
add_button|world_kick|`9Kick all players|noflags|0|0|
add_button|world_trade|`9Trade all players|noflags|0|0|
add_button|world_ban|`9Ban all players|noflags|0|0|
add_button|world_unban|`@Unban World|noflags|0|0|
add_quick_exit|
end_dialog|World_commands|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
return true
end
end

AddCallback("world_commands","OnPacket", world_commands)

function world_mode(type, packet)
    if packet:find("buttonClicked|world_pull") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pulling all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/pull " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_kick") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9kicking all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/kick " .. player.name:sub(3, -3))
        end 
        return true
    elseif packet:find("buttonClicked|world_trade") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9trading all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/trade " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_ban") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9baning all players")
        for _,player in pairs(GetPlayers()) do
            SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
        end
        return true
    elseif packet:find("buttonClicked|world_unban") then
        SendPacket(2, "action|input\n|text|/uba")
        return true
    end
end

AddCallback("world_mode", "OnPacket", world_mode)

function info_commands(type, packet)
    if packet == ("action|input\n|text|/info") then
        if autosurg == true then
            autosurg_status = "`2Enabled"
        else
            autosurg_status = "`4Disabled"
        end
        
        if autosurghelper == true then
            autosurghelper_status = "`2Enabled"
        else
            autosurghelper_status = "`4Disabled"
        end
        
        if autocrime == true then
            autocrime_status = "`2Enabled"
        else
            autocrime_status = "`4Disabled"
        end
        
        if autostartopia == true then
            autostartopia_status = "`2Enabled"
        else
            autostartopia_status = "`4Disabled"
        end
        
        if mod_fly == true then
            mod_fly_status = "`2Enabled"
        else
            mod_fly_status = "`4Disabled"
        end
        
        if fd_mode == true then
            fd_mode_status = "`2Enabled"
        else
            fd_mode_status = "`4Disabled"
        end
        
        if ft_mode == true then
            ft_mode_status = "`2Enabled"
        else
            ft_mode_status = "`4Disabled"
        end
        
        if nopickup == true then
            nopickup_status = "`2Enabled"
        else
            nopickup_status = "`4Disabled"
        end
        
        if NO_PICKUP == true then
            NO_PICKUP_status = "`2Enabled"
        else
            NO_PICKUP_status = "`4Disabled"
        end
        
        if autocollect == true then
            autocollect_status = "`2Enabled"
        else
            autocollect_status = "`4Disabled"
        end
        
        if blinking == true then
            blinking_status = "`2Enabled"
        else
            blinking_status = "`4Disabled"
        end
        
        if mode_wm == "off" then
            mode_wm_status = "`4Disabled"
        else
            mode_wm_status = "`2Enabled"
        end
        
        if ut_of_or_no == true then
            ut_of_or_no_status = "`2Enabled"
        else
            ut_of_or_no_status = "`4Disabled"
        end
        
        if gaia_of_or_no == true then
            gaia_of_or_no_status = "`2Enabled"
        else
            gaia_of_or_no_status = "`4Disabled"
        end
        
        if set_mod_join == "off" or set_mod_joinx2 == "off" then
            set_mod_join_status = "`4Disabled"
        else
            set_mod_join_status = "`2Enabled"
        end
        
        if mode_donation_boxes == "off" then
            mode_donation_boxes_status = "`4Disabled"
        else
            mode_donation_boxes_status = "`2Enabled"
        end
        
        if vend_modexd == true then
            vend_modexd_status = "`2Enabled"
        else
            vend_modexd_status = "`4Disabled"
        end
        
        if spamming == true then
            spamming_status = "`2Enabled"
        else
            spamming_status = "`4Disabled"
        end
        
        if harvesting == true then
            harvesting_status = "`2Enabled"
        else
            harvesting_status = "`4Disabled"
        end
        
        if casino_help_when_join == "1" then
            casino_help_when_join_status = "ban & unacces & leave"
            elseif casino_help_when_join == "2" then
                casino_help_when_join_status = "unacces & leave"
            elseif casino_help_when_join == "3" then
                casino_help_when_join_status = "leave"
            else 
                casino_help_when_join_status = "`4Disabled"
        end
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`7Command Information``|left|1790|
add_spacer|small|
add_smalltext|`9auto-surg : ]]..autosurg_status..[[|left|
add_smalltext|`9auto-Surg Helper : ]]..autosurghelper_status..[[|left|
add_smalltext|`9Auto-Crime : ]]..autocrime_status..[[|left|
add_smalltext|`9Auto-Startopia : ]]..autostartopia_status..[[|left|
add_smalltext|`9Mod Fly : ]]..mod_fly_status..[[|left|
add_smalltext|`9Fast Drop : ]]..fd_mode_status..[[|left|
add_smalltext|`9Fast Trash : ]]..ft_mode_status..[[|left|
add_smalltext|`9Anti-Pickup : ]]..nopickup_status..[[|left|
add_smalltext|`9Auto-Collect : ]]..autocollect_status..[[|left|
add_smalltext|`9Blink Mode : ]]..blinking_status..[[|left|
add_smalltext|`9Wrench Mode : ]]..mode_wm_status..[[|left|
add_smalltext|`9UT Mode : ]]..ut_of_or_no_status..[[|left|
add_smalltext|`9GAIA Mode : ]]..gaia_of_or_no_status..[[|left|
add_smalltext|`9Join Mode : ]]..set_mod_join_status..[[|left|
add_smalltext|`9Donation Box Mode : ]]..mode_donation_boxes_status..[[|left|
add_smalltext|`9Vend Mode : ]]..vend_modexd_status..[[|left|
add_smalltext|`9Auto-Spam : ]]..spamming_status..[[|left|
add_smalltext|`9Auto-Harvest : ]]..harvesting_status..[[|left|
add_smalltext|`9Mod-Detector: `3]]..casino_help_when_join_status..[[|left|
add_quick_exit|
end_dialog|info_main_cmd|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)        
    return true
    end
end
    
AddCallback("info_commands","OnPacket", info_commands)

function donation_check_uid(type, packet)
    if packet == ("action|input\n|text|/donation") then
        if mode_donation_boxes == "off" then
            type_donation_box = "`4Disabled"
        else
            type_donation_box = "`2Enabled"
        end
if type_donation_box == "`4Disabled" and mode_donation_boxes1 == "Donation_Off" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Donation Box Commands|left|1452|
add_spacer|small
add_textbox|`9Currently Donation Mode is `4Disabled|left|
add_spacer|small
add_button|empty_xd_donations|`9Fast Empty Donation Box|noflags|0|0|
add_button|add_xd_donations|`9Fast Donate Items|noflags|0|0|
add_spacer|small
add_button|off_xd_donations|`2Turn off donation mode|noflags|0|0|
add_quick_exit|
end_dialog|donate_world_ui|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_donation_box == "`2Enabled" and mode_donation_boxes == "Donation_Empty" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Donation Box Commands|left|1452|
add_spacer|small
add_textbox|`9Currently Donation Mode is `2Enabled `9And is Set To : `3Fast Empty|left|
add_spacer|small
add_button|empty_xd_donations|`2Fast Empty Donation Box|noflags|0|0|
add_button|add_xd_donations|`9Fast Donate Items|noflags|0|0|
add_spacer|small
add_button|off_xd_donations|`@Turn off donation mode|noflags|0|0|
add_quick_exit|
end_dialog|donate_world_ui|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
elseif type_donation_box == "`2Enabled" and mode_donation_boxes == "Donation_Add" then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Donation Box Commands|left|1452|
add_spacer|small
add_textbox|`9Currently Donation Mode is `2Enabled `9And is Set To : `3Fast Add|left|
add_spacer|small
add_button|empty_xd_donations|`9Fast Empty Donation Box|noflags|0|0|
add_button|add_xd_donations|`2Fast Donate Items|noflags|0|0|
add_spacer|small
add_button|off_xd_donations|`@Turn off donation mode|noflags|0|0|
add_quick_exit|
end_dialog|donate_world_ui|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
end
return true
end
end

AddCallback("donation_check_uid","OnPacket", donation_check_uid)

auto_put_donationbox_mode = false

function auto_put_donationbox(varlist)
    if auto_put_donationbox_mode then
        if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|give_item|||") then
            SendPacket(2, "action|dialog_return\ndialog_name|give_item\nitemID|"..varlist[1]:match("embed_data|itemID|(%d+)").."|\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|give\ncount|"..varlist[1]:match("add_text_input|count|Count:|(%d+)").."\nsign_text|")
            return true
        end
    end
end
AddCallback("auto_put_donationbox", "OnVarlist", auto_put_donationbox)

function auto_put_donationbox_hook_xd(type, packet)
    if packet == ("action|input\n|text|/donation add") or packet == ("action|input\n|text|/da") then
        if auto_put_donationbox_mode == true then
            mode_donation_boxes = "off"
            mode_donation_boxes1 = "Donation_Off"
            auto_empty_donationbox_mode = false
            auto_put_donationbox_mode = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast empty donation `3disabled")
        elseif auto_put_donationbox_mode == false then
            mode_donation_boxes = "Donation_Add"
            auto_empty_donationbox_mode = false
            auto_put_donationbox_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast empty donation `3enabled")
        end
    return true
end
end

AddCallback("auto_put_donationbox_hook_xd","OnPacket", auto_put_donationbox_hook_xd)

auto_empty_donationbox_mode = false

function auto_empty_donationbox(varlist)
    if auto_empty_donationbox_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|donation_box_edit|Cancel||") then
        SendPacket(2, "action|dialog_return\ndialog_name|donation_box_edit\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|clear")
        return true
    end
    end
end
AddCallback("auto_empty_donationbox", "OnVarlist", auto_empty_donationbox)

function auto_empty_donationbox_hook_xd(type, packet)
    if packet == ("action|input\n|text|/donation empty") or packet == ("action|input\n|text|/de")then
        if auto_empty_donationbox_mode == true then
            mode_donation_boxes = "off"
            mode_donation_boxes1 = "Donation_Off"
            auto_empty_donationbox_mode = false
            auto_put_donationbox_mode = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast empty donation `3disabled")
        elseif auto_empty_donationbox_mode == false then
            mode_donation_boxes = "Donation_Empty"
            auto_put_donationbox_mode = false
            auto_empty_donationbox_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast empty donation `3enabled")
        end
    return true
end
end

AddCallback("auto_empty_donationbox_hook_xd","OnPacket", auto_empty_donationbox_hook_xd)

function donationoff(type, packet)
    if packet == ("action|input\n|text|/donation off") or packet == ("action|input\n|text|/doff") then
        mode_donation_boxes = "off"
        mode_donation_boxes1 = "Donation_Off"
        auto_empty_donationbox_mode = false
        auto_put_donationbox_mode = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Donation Box mode is now `3disabled")
        return true
    end
end

AddCallback("donationoff","OnPacket", donationoff)

function donation_modes_69(type, packet)
    if packet:find("buttonClicked|empty_xd_donations") then
        mode_donation_boxes = "Donation_Empty"
        auto_put_donationbox_mode = false
        auto_empty_donationbox_mode = true
        function auto_empty_donationbox(varlist)
            if auto_empty_donationbox_mode then
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|donation_box_edit|Cancel||") then
                SendPacket(2, "action|dialog_return\ndialog_name|donation_box_edit\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|clear")
                return true
            end
            end
        end
        AddCallback("auto_empty_donationbox", "OnVarlist", auto_empty_donationbox)
        return true
    elseif packet:find("buttonClicked|add_xd_donations") then
        mode_donation_boxes = "Donation_Add"
        auto_empty_donationbox_mode = false
        auto_put_donationbox_mode = true
        function auto_put_donationbox(varlist)
            if auto_put_donationbox_mode then
                if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|give_item|||") then
                    SendPacket(2, "action|dialog_return\ndialog_name|give_item\nitemID|"..varlist[1]:match("embed_data|itemID|(%d+)").."|\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|give\ncount|"..varlist[1]:match("add_text_input|count|Count:|(%d+)").."\nsign_text|")
                    return true
                end
            end
        end
        AddCallback("auto_put_donationbox", "OnVarlist", auto_put_donationbox)
        return true
    elseif packet:find("buttonClicked|off_xd_donations") then
        mode_donation_boxes = "off"
        mode_donation_boxes1 = "Donation_Off"
        auto_empty_donationbox_mode = false
        auto_put_donationbox_mode = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Donation Box mode is now `3disabled")
        return true
    end
end

AddCallback("donation_modes_69", "OnPacket", donation_modes_69)

mode_donation_boxes = "off"

function title_ui_commands(type, packet)
    if packet == ("action|input\n|text|/titles") then
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = [[set_default_color|`o
add_label_with_icon|big|`!Choose title|left|6276|
add_spacer|small|
add_button|g4g_title|`9G4G Title|noflags|0|0|
add_button|master_title|`9Master Title|noflags|0|0|
add_button|doctor_title|`9Doctor Title|noflags|0|0|
add_button|maxlevel_title|`9Max Level Title|noflags|0|0|
add_button|legend_title|`9Legendary Title|noflags|0|0|
add_button|mods_title|`9Moderator Title|noflags|0|0|
add_spacer|small|
add_button|reset_title|`@Reset Title|noflags|0|0|
add_quick_exit|
end_dialog|World_commands|`0Cancel|`0Back|
]]
varlist.netid = -1
SendVarlist(varlist)
return true
end
end

AddCallback("title_ui_commands","OnPacket", title_ui_commands)

function title_mode(type, packet)
    if packet:find("buttonClicked|legend_title") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pulling all players")
        titlexd = "legend"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3OF LEGEND `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
            GetLocal().name = GetLocal().name.." of Legend``"
        return true
    elseif packet:find("buttonClicked|g4g_title") then
        titlexd = "g4g"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DONOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|donor"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|master_title") then
        titlexd = "master"
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3MASTED `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|master"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|doctor_title") then
        titlexd = "doctor"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DOCTOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            GetLocal().name = "Dr."..GetLocal().name
             var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
            elseif packet:find("buttonClicked|maxlevel_title") then
        titlexd = "maxlevel"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3MAX LEVEL `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|maxLevel"
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
            elseif packet == ("buttonClicked|mods_title") then
        titlexd = "mods"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `2MODERATOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            GetLocal().name = "`#@" ..GetLocal().name
            var = {}
            var[0] = "OnGuildDataChanged"
            var[1] = "ph|mods"
            var[2] = 0
            var[3] = 5956
            var.netid = GetLocal().netid
            SendVarlist(var)
        return true
    elseif packet:find("buttonClicked|reset_title") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9 removing all titles")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|"
        var.netid = GetLocal().netid
        SendVarlist(var)
        return true
end
end

AddCallback("title_mode", "OnPacket", title_mode)


function hide_dialog(varlist)
    if varlist[0]:find("OnDialogRequest") and varlist[1]:find("end_dialog|drop_item|Cancel|OK|")then
        return true
    end
end

function string.removeColors(varlist)
    return varlist:gsub("`.", "")
end

autocp = false
function auto_cp(type, packet)
    if packet:find("action|input\n|text|/acp") then
            if autocp then
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto compress mode is `3off")
                autocp = false
               else 
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto compress mode is `3on")
                autocp = true
               end
               RunThread(function()
                auto_compre()
               end)
        return true
        end
    end
AddCallback("auto_cp", "OnPacket", auto_cp)

function auto_compre()
    while autocp do
        Sleep(500)
        for _,item in pairs(GetInventory()) do
            if item.id == 242 then
                if item.count >= 100 then
                    local packet = {}
                    packet.type = 10
                    packet.int_data = 242
                    SendPacketRaw(packet)
                    Sleep(500)
                end
            end
        end
    end
end

function cdrop_drop(type, packet)
    if packet:find("action|input\n|text|/cd") then
        amount = packet:gsub("action|input\n|text|/cd", "")
        RunThread(function()
            cdrop_delayed()
        end)
    return true
    end
end
AddCallback("cdrop_drop", "OnPacket", cdrop_drop)


function cdrop_delayed()
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = amount // 100 -- calculate dls to drop
    wl_to_drop = amount % 100 -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3Yoshiro `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3Yoshi GT `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3Yoshi GT `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

-- wl

function dropwl(type, packet)
    if packet:find("action|input\n|text|/wl") then
          amount = packet:gsub("action|input\n|text|/wl", "")
          RunThread(function()
            cwl_delayed()
    end)
          return true
    end
end

AddCallback("cdrop_wl","OnPacket", dropwl)

function cwl_delayed()
    wl_command_inv = math.floor(GetItemCount(242))
    if wl_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough wls.")
        OnTextOverlay("`9No enough wls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    local wl = 0
    wl = amount
    amount = tonumber(amount)
    for _,item in pairs(GetInventory()) do
        if item.id == 242 then
          if item.count < amount then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough wls.")
            OnTextOverlay("`9No enough wls.")
            RemoveCallback("Hide_Drop")
            return true
          else
      OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping`3" ..wl.. " `9wls")
      OnTextOverlay("`9Dropping`3" ..wl.. " `9wls")
      SendPacket(2, "action|drop\n|itemID|242")
      SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|" .. wl)
      Sleep(1000)
      RemoveCallback("Hide_Drop")
          end
        end
    end
end
end

-- dl

function dropdl(type, packet)
    if packet:find("action|input\n|text|/dl") then
        amount = packet:gsub("action|input\n|text|/dl", "")
          RunThread(function()
            cdl_delayed()
    end)
          return true
        end
    end

AddCallback("cdrop_dl","OnPacket", dropdl)

function cdl_delayed()
    dl_command_inv = math.floor(GetItemCount(1796))
    if dl_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough dls.")
        OnTextOverlay("`9No enough dls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    local dl = 0
    dl = amount
    amount = tonumber(amount)
    for _,item in pairs(GetInventory()) do
      if item.id == 1796 then
        if item.count < amount then
          OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough dls.")
          OnTextOverlay("`9No enough dls.")
          RemoveCallback("Hide_Drop")
          return true
        else
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping`3" ..dl.. " `9dls")
    OnTextOverlay("`9Dropping`3" ..dl.. " `9dls")
    SendPacket(2, "action|drop\n|itemID|1796")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|" .. dl)
      Sleep(1000)
      RemoveCallback("Hide_Drop")
          end
        end
    end
end
end

-- bgl

function dropbgl(type, packet)
    if packet:find("action|input\n|text|/bgl") then
        amount = packet:gsub("action|input\n|text|/bgl", "")
          RunThread(function()
            cbgl_delayed()
    end)
          return true
        end
    end

AddCallback("cdrop_bgl","OnPacket", dropbgl)

function cbgl_delayed()
    bgl_command_inv = math.floor(GetItemCount(7188))
    if bgl_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough bgls.")
        OnTextOverlay("`9No enough bgls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    local bgl = 0
    bgl = amount
    amount = tonumber(amount)
    for _,item in pairs(GetInventory()) do
      if item.id == 7188 then
        if item.count < amount then
          OnConsoleMessage("`0[ `3YoshiGT  `0] `9No enough bgls.")
          OnTextOverlay("`9No enough bgls.")
          RemoveCallback("Hide_Drop")
          return true
        else
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping`3" ..bgl.. " `9bgls")
    OnTextOverlay("`9Dropping`3" ..bgl.. " `9bgls")
    SendPacket(2, "action|drop\n|itemID|7188")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|" .. bgl)
      Sleep(1000)
      RemoveCallback("Hide_Drop")
          end
        end
    end
end
end



function daw(type, packet)
    if packet == ("action|input\n|text|/daw") then
        RunThread(function()
            daw_xd()
        end)
    return true
    end
end

AddCallback("drop_all_wls","OnPacket", daw)

function daa(type, packet)
    if packet == ("action|input\n|text|/daa") then
        RunThread(function()
            daw_xd()
            dad_xd()
            dab_xd()
        end)
    return true
    end
end
AddCallback("droping_all_wldls","OnPacket", daa)

function daw_xd()
    daw_command_inv = math.floor(GetItemCount(242))
    if daw_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9You don't have wls.")
        OnTextOverlay("`9No enough wls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    for _,item in pairs(GetInventory()) do
        if item.id == 242 then
        daw_count1 = item.count
        daw_count = math.floor(daw_count1)
    end
    end
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..daw_count.. " `9wls")
    OnTextOverlay("`9Dropping `3" ..daw_count.. " `9wls")
    SendPacket(2, "action|drop\n|itemID|242")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..daw_count1)
    Sleep(500)
    RemoveCallback("Hide_Drop")
end
end


function dad(type, packet)
    if packet == ("action|input\n|text|/dad") then
        RunThread(function()
            dad_xd()
        end)
    return true
    end
end

AddCallback("drop_all_dls","OnPacket", dad)

function dad_xd()
    dad_command_inv = math.floor(GetItemCount(1796))
    if dad_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9You don't have dls.")
        OnTextOverlay("`9No enough dls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    for _,item in pairs(GetInventory()) do
        if item.id == 1796 then
        dad_count1 = item.count
        dad_count = math.floor(dad_count1)
    end
    end
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..dad_count.. " `9dls")
    OnTextOverlay("`9Dropping `3" ..dad_count.. " `9dls")
    SendPacket(2, "action|drop\n|itemID|1796")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dad_count1)
    Sleep(500)
    RemoveCallback("Hide_Drop")
end
end

function dab_xd()
    dab_command_inv = math.floor(GetItemCount(7188))
    if dab_command_inv == 0 then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9You don't have bgls.")
        OnTextOverlay("`9No enough bgls.")
    else
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    for _,item in pairs(GetInventory()) do
        if item.id == 7188 then
        dab_count1 = item.count
        dab_count = math.floor(dab_count1)
    end
    end
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..dab_count.. " `9bgls")
    OnTextOverlay("`9Dropping `3" ..dab_count.. " `9bgls")
    SendPacket(2, "action|drop\n|itemID|7188")
    SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..dab_count1)
    Sleep(500)
    RemoveCallback("Hide_Drop")
end
end


function sethost(type, packet)
        if packet:find("action|input\n|text|/sethost") then
            sethost_world1 = packet:gsub("action|input\n|text|/sethost", "")
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Host world set to :`3"..sethost_world1)
          return true
        end
    end

AddCallback("sethost","OnPacket", sethost)

function setsave(type, packet)
    if packet:find("action|input\n|text|/setsave") then
        setsave_world = packet:gsub("action|input\n|text|/setsave", "")
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Save world set to :`3"..setsave_world)
          return true
        end
    end

AddCallback("setsave","OnPacket", setsave)

function setwarn(type, packet)
    if packet:find("action|input\n|text|/warn") then
        setwarn_text = packet:gsub("action|input\n|text|/warn", "")
            var2 = {}
            var2[0] = "OnAddNotification"
            var2[1] = "interface/atomic_button.rttex"
            var2[2] = setwarn_text
            var2[3] = "audio/hub_open.wav"
            var2[4] = 0
            var2.netid = -1
            SendVarlist(var2)
            return true
        end
    end

AddCallback("setwarn","OnPacket", setwarn)

function doorxxx(type, packet)
    if packet:find("action|input\n|text|/door ") then
        door_id = packet:gsub("action|input\n|text|/door " , "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Joining door id : `3"..door_id)
    world = GetLocal().world
    SendPacket(3, "action|join_request\nname|"..world.."|"..door_id.."\ninvitedWorld|0")
        return true
        end
        end
    
AddCallback("warp_door","OnPacket", doorxxx)

x_pos1, x_pos2, x_pos3, x_pos4, x_posback = -1, -1, -1, -1, -1
y_pos1, y_pos2, y_pos3, y_pos4, y_posback = -1, -1, -1, -1, -1

function pos1(type, packet)
    if packet == ("action|input\n|text|/setpos1") or packet == ("action|input\n|text|/sp1") then
        x_pos1 = math.floor(GetLocal().pos_x / 32)
        y_pos1 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pos 1 set to `3"..x_pos1.." `9,`3"..y_pos1)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
            Possessions = {{x_pos1, y_pos1}, {x_pos2, y_pos2}, {x_pos3, y_pos3}, {x_pos4, y_pos4}}
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos1 * 32 + 16, y_pos1 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    return true
    end
end
    
AddCallback("pos1","OnPacket", pos1)

function pos2(type, packet)
    if packet == ("action|input\n|text|/setpos2") or packet == ("action|input\n|text|/sp2") then
        x_pos2 = math.floor(GetLocal().pos_x / 32)
        y_pos2 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pos 2 set to `3"..x_pos2.." `9,`3"..y_pos2)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos2","OnPacket", pos2)

function pos3(type, packet)
    if packet == ("action|input\n|text|/setpos3") or packet == ("action|input\n|text|/sp3") then
        x_pos3 = math.floor(GetLocal().pos_x / 32)
        y_pos3 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pos 3 set to `3"..x_pos3.." `9,`3"..y_pos3)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos3","OnPacket", pos3)

function pos4(type, packet)
    if packet == ("action|input\n|text|/setpos4") or packet == ("action|input\n|text|/sp4") then
        x_pos4 = math.floor(GetLocal().pos_x / 32)
        y_pos4 = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9pos 4 set to `3"..x_pos4.." `9,`3"..y_pos4)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 354
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
    return true
    end
end
    
AddCallback("pos4","OnPacket", pos4)

function posback(type, packet)
    if packet == ("action|input\n|text|/setposback") or packet == ("action|input\n|text|/spb") then
        x_posback = math.floor(GetLocal().pos_x / 32)
        y_posback = math.floor(GetLocal().pos_y / 32)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9host pos set to `3"..x_posback.." `9,`3"..y_posback)
        local var = {}
        var[0] = "OnParticleEffect"
        var[1] = 356
        var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
    return true
    end
end

AddCallback("posback","OnPacket", posback)

function back(type, packet)
    if packet == ("action|input\n|text|/pback") then
        if x_posback == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_posback, y_posback)
        end
    return true
    end
end
    
AddCallback("back","OnPacket", back)

function tp_pos1(type, packet)
    if packet == ("action|input\n|text|/pos1") then
        if x_pos1 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos1, y_pos1)
        end
    return true
    end
end
    
AddCallback("tp_pos1","OnPacket", tp_pos1)

function tp_pos2(type, packet)
    if packet == ("action|input\n|text|/pos2") then
        if x_pos2 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos2, y_pos2)
        end
    return true
    end
end
    
AddCallback("tp_pos2","OnPacket", tp_pos2)

function tp_pos3(type, packet)
    if packet == ("action|input\n|text|/pos3") then
        if x_pos3 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos3, y_pos3)
        end
    return true
    end
end
    
AddCallback("tp_pos3","OnPacket", tp_pos3)

function tp_pos4(type, packet)
    if packet == ("action|input\n|text|/pos4") then
        if x_pos4 == -1 then
            OnTextOverlay("`4Pos Not Set")
        else
        FindPath(x_pos4, y_pos4)
        end
    return true
    end
end
    
AddCallback("tp_pos4","OnPacket", tp_pos4)

function cdrop_delayed_win1()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos1 * 32 + 16, y_pos1 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos1, y_pos1)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = amount // 100 -- calculate dls to drop
    wl_to_drop = amount % 100 -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        Sleep(500)
        FindPath(x_posback, y_posback)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Drop `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Drop `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function cdrop_delayed_win2()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos2 * 32 + 16, y_pos2 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos2, y_pos2)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = amount // 100 -- calculate dls to drop
    wl_to_drop = amount % 100 -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        Sleep(500)
        FindPath(x_posback, y_posback)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function cdrop_delayed_win3()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos3 * 32 + 16, y_pos3 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos3, y_pos3)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = amount // 100 -- calculate dls to drop
    wl_to_drop = amount % 100 -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        Sleep(500)
        FindPath(x_posback, y_posback)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function cdrop_delayed_win4()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos4 * 32 + 16, y_pos4 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos4, y_pos4)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = amount // 100 -- calculate dls to drop
    wl_to_drop = amount % 100 -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        Sleep(500)
        FindPath(x_posback, y_posback)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function win1(type, packet)
    if packet:find("action|input\n|text|/win1") then
        amount = packet:gsub("action|input\n|text|/win1", "")
  if x_pos1 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
  RunThread(function()
    cdrop_delayed_win1()
end)
end
  return true
  end
  end
  
AddCallback("win1", "OnPacket", win1)

function w1(type, packet)
    if packet:find("action|input\n|text|/w1") then
        amount = packet:gsub("action|input\n|text|/w1", "")
  if x_pos1 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
  RunThread(function()
    cdrop_delayed_win1()
end)
end
  return true
  end
  end
  
AddCallback("w1", "OnPacket", w1)

function win2(type, packet)
    if packet:find("action|input\n|text|/win2") then
        amount = packet:gsub("action|input\n|text|/win2", "")
  if x_pos2 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
        RunThread(function()
            cdrop_delayed_win2()
        end)
end
  return true
  end
  end
  
AddCallback("win2", "OnPacket", win2)

function w2(type, packet)
    if packet:find("action|input\n|text|/w2") then
        amount = packet:gsub("action|input\n|text|/w2", "")
  if x_pos2 == -1 then
    OnTextOverlay("`4Pos Not Set")
    else
        RunThread(function()
            cdrop_delayed_win2()
        end)
end
  return true
  end
  end
  
AddCallback("w2", "OnPacket", w2)

function win3(type, packet)
    if packet:find("action|input\n|text|/win3") then
        amount = packet:gsub("action|input\n|text|/win3", "")
    if x_pos3 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
            RunThread(function()
                cdrop_delayed_win3()
            end)
end
    return true
    end
    end
    
AddCallback("win3", "OnPacket", win3)

function w3(type, packet)
    if packet:find("action|input\n|text|/w3") then
        amount = packet:gsub("action|input\n|text|/w3", "")
    if x_pos3 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
            RunThread(function()
                cdrop_delayed_win3()
            end)
end
    return true
    end
    end
    
AddCallback("w3", "OnPacket", w3)

function win4(type, packet)
    if packet:find("action|input\n|text|/win4") then
        amount = packet:gsub("action|input\n|text|/win4", "")
    if x_pos4 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
        RunThread(function()
            cdrop_delayed_win4()
        end)
end
    return true
    end
    end

AddCallback("win4", "OnPacket", win4)

function w4(type, packet)
    if packet:find("action|input\n|text|/w4") then
        amount = packet:gsub("action|input\n|text|/w4", "")
    if x_pos4 == -1 then
        OnTextOverlay("`4Pos Not Set")
        else
        RunThread(function()
            cdrop_delayed_win4()
        end)
end
    return true
    end
    end

AddCallback("w4", "OnPacket", w4)


function fake_donate_wl(type, packet)
    if packet:find("action|input\n|text|/donatewl") then
        count_fake_wl = packet:gsub("action|input\n|text|/donatewl", "")
            var = {}
            var[0] = "OnTalkBubble"
            var[1] = GetLocal().netid
            var[2] = "`7[```5[``"..GetLocal().name.." places`5"..count_fake_wl.."`` `2World Lock`` into the Donation Box`5]```7]``"
            var[3] = 0
            var[4] = 0
            var.netid = -1
            SendVarlist(var)
            
            OnConsoleMessage("`7[```5[``"..GetLocal().name.." places`5"..count_fake_wl.."`` `2World Lock`` into the Donation Box`5]```7]``")
          return true
        end
      end
  
AddCallback("fake_donate_wl","OnPacket", fake_donate_wl)

function fake_donate_dl(type, packet)
    if packet:find("action|input\n|text|/donatedl") then
        count_fake_dl = packet:gsub("action|input\n|text|/donatedl", "")
            var = {}
            var[0] = "OnTalkBubble"
            var[1] = GetLocal().netid
            var[2] = "`7[```5[``"..GetLocal().name.." places`5"..count_fake_dl.."`` `2Diamond Lock`` into the Donation Box`5]```7]``"
            var[3] = 0
            var[4] = 0
            var.netid = -1
            SendVarlist(var)
            
            OnConsoleMessage("`7[```5[``"..GetLocal().name.." places`5"..count_fake_dl.."`` `2Diamond Lock`` into the Donation Box`5]```7]``")
          return true
        end
      end
  
AddCallback("fake_donate_dl","OnPacket", fake_donate_dl)

function fake_donate_bgl(type, packet)
    if packet:find("action|input\n|text|/donatebgl") then
        count_fake_bgl = packet:gsub("action|input\n|text|/donatebgl", "")
            var = {}
            var[0] = "OnTalkBubble"
            var[1] = GetLocal().netid
            var[2] = "`7[```5[``"..GetLocal().name.." places`5"..count_fake_bgl.."`` `2Blue Gem Lock`` into the Donation Box`5]```7]``"
            var[3] = 0
            var[4] = 0
            var.netid = -1
            SendVarlist(var)
            
            OnConsoleMessage("`7[```5[``"..GetLocal().name.." places`5"..count_fake_bgl.."`` `2Blue Gem Lock`` into the Donation Box`5]```7]``")            
          return true
        end
      end
  
AddCallback("fake_donate_bgl","OnPacket", fake_donate_bgl)

function random_world(type, packet)
    if packet == ("action|input\n|text|/rndm") then
        totTxt = ""
        for i = 1,19 do
        totTxt = totTxt..string.char(math.random(97,122))
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9warping to "..totTxt)
        SendPacket(3, "action|join_request\nname|" .. totTxt)
    return true
    end
end
    
AddCallback("random_world","OnPacket", random_world)

function cid(type, packet)
    if packet == ("action|input\n|text|/cid") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Making new account..")
        SendPacket(2, "action|growid")
    return true
    end
end
    
AddCallback("cid","OnPacket", cid)

function drop_tax(type, packet)
    if packet == ("action|input\n|text|/dt") then
        if x_pos1 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
                RunThread(function()
                    dt_xd()
                end)
    end
    return true
    end
end

AddCallback("drop_tax","OnPacket", drop_tax)

function dt_xd()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { math.floor(GetLocal().tile_x) * 32 + 16, math.floor(GetLocal().tile_y) * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(math.floor(GetLocal().tile_x), math.floor(GetLocal().tile_y))
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = drop_tax % 10000 // 100 -- calculate dls to drop
    wl_to_drop = ((drop_tax% 10000) % 100) -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(math.floor(GetLocal().tile_x), math.floor(GetLocal().tile_y))
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(math.floor(GetLocal().tile_x), math.floor(GetLocal().tile_y))
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(math.floor(GetLocal().tile_x), math.floor(GetLocal().tile_y))
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function drop_tax1(type, packet)
    if packet == ("action|input\n|text|/dt1") then
        if x_pos1 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
                RunThread(function()
                    dt1_xd()
                end)
    end
    return true
    end
end

AddCallback("drop_tax1","OnPacket", drop_tax1)

function dt1_xd()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos1 * 32 + 16, y_pos1 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos1, y_pos1)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = drop_tax % 10000 // 100 -- calculate dls to drop
    wl_to_drop = ((drop_tax% 10000) % 100) -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function drop_tax2(type, packet)
    if packet == ("action|input\n|text|/dt2") then
        if x_pos2 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
                RunThread(function()
                    dt2_xd()
                end)
    end
    return true
    end
end

AddCallback("drop_tax2","OnPacket", drop_tax2)

function dt2_xd()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos2 * 32 + 16, y_pos2 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos2, y_pos2)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = drop_tax % 10000 // 100 -- calculate dls to drop
    wl_to_drop = ((drop_tax% 10000) % 100) -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function drop_tax3(type, packet)
    if packet == ("action|input\n|text|/dt3") then
        if x_pos3 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
                RunThread(function()
                    dt3_xd()
                end)
    end
    return true
    end
end

AddCallback("drop_tax3","OnPacket", drop_tax3)

function dt3_xd()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos3 * 32 + 16, y_pos3 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos3, y_pos3)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = drop_tax % 10000 // 100 -- calculate dls to drop
    wl_to_drop = ((drop_tax% 10000) % 100) -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function drop_tax4(type, packet)
    if packet == ("action|input\n|text|/dt4") then
        if x_pos4 == -1 then
            OnTextOverlay("`4Pos Not Set")
            else
                RunThread(function()
                    dt4_xd()
                end)
    end
    return true
    end
end

AddCallback("drop_tax4","OnPacket", drop_tax4)

function dt4_xd()
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos4 * 32 + 16, y_pos4 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    function Hide_Drop(varlist, packet)
        if varlist[0]:find("OnDialogRequest") then
            return true
        end
    end
    
    AddCallback("Hide_Drop", "OnVarlist", Hide_Drop)
    FindPath(x_pos4, y_pos4)
    if face_when_drop == "right" then
        FaceSide("right")
    else
        FaceSide("left")
    end
    dl_count = 0
    wl_count = 0
    for _, item in pairs(GetInventory()) do
        if item.id == 242 then -- count wls
            wl_count = wl_count + item.count
        elseif item.id == 1796 then -- count dls
            dl_count = dl_count + item.count
        end
    end
    dl_to_drop = drop_tax % 10000 // 100 -- calculate dls to drop
    wl_to_drop = ((drop_tax% 10000) % 100) -- calculate wls to drop
    if dl_count < dl_to_drop then -- check if enough DLs to drop
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Not enough DLs to drop")
        OnTextOverlay("`9Not enough DLs to drop `3"..dl_to_drop.. " `9DLS")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return false
    elseif wl_count < wl_to_drop then -- check if enough WLS to drop
        local packet = {}
        packet.type = 10 
        packet.int_data = 1796
        SendPacketRaw(packet)
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    else -- drop items
        if dl_to_drop > 0 then -- drop dls
            SendPacket(2, "action|drop\n|itemID|1796")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..dl_to_drop)
            Sleep(50)
        end
        if wl_to_drop > 0 then -- drop wls
            SendPacket(2, "action|drop\n|itemID|242")
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..wl_to_drop)
            Sleep(50)
        end
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        OnTextOverlay("`9Dropping `3" ..wl_to_drop.. " `9wls and `3"..dl_to_drop.. " `9dls")
        FindPath(x_posback, y_posback)
        Sleep(1000)
        RemoveCallback("Hide_Drop")
        return true
    end
end

function res(type, packet)
    if packet == ("action|input\n|text|/res") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9respawning")
        SendPacket(2, "action|respawn")
    return true
    end
end
    
AddCallback("respawn","OnPacket", res)

face_when_drop = "right"

function faceside1(type, packet)
    if packet == ("action|input\n|text|/side right") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Side for dropping is set to `3RIGHT")
        face_when_drop = "right"
    return true
    end
end

AddCallback("faceside1","OnPacket", faceside1)

function faceside2(type, packet)
    if packet == ("action|input\n|text|/side left") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Side for dropping is set to `3LEFT")
        face_when_drop = "left"
    return true
    end
end

AddCallback("faceside2","OnPacket", faceside2)

function auto_compress(type, packet)
    if packet == ("action|input\n|text|/compress")then
        for _,item in pairs(GetInventory()) do
            if item.id == 242 then
                if item.count >= 100 then
                    local packet = {}
                    packet.type = 10
                    packet.int_data = 242
                    SendPacketRaw(packet)
                end
            end
        end
    return true
    end
end

AddCallback("auto_compress","OnPacket", auto_compress)

function auto_compress(type, packet)
    if packet == ("action|input\n|text|/cp")then
        for _,item in pairs(GetInventory()) do
            if item.id == 242 then
                if item.count >= 100 then
                    local packet = {}
                    packet.type = 10
                    packet.int_data = 242
                    SendPacketRaw(packet)
                end
            end
        end
    return true
    end
end

AddCallback("auto_compress","OnPacket", auto_compress)


function balance(type, packet)
    if packet == ("action|input\n|text|/balance") then
        wl_balance = math.floor(GetItemCount(242))
        dl_balance = math.floor(GetItemCount(1796))
        bgl_balance = math.floor(GetItemCount(7188))
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9WL : `3"..wl_balance.." `1& `9DL : `3"..dl_balance.." `1& `9BGL : `3"..bgl_balance)
        OnAddNotification("`9WL : `3"..wl_balance.." `1& `9DL : `3"..dl_balance.." `1& `9BGL : `3"..bgl_balance)
        OnTalkBubble("`9WL : `3"..wl_balance.." `1& `9DL : `3"..dl_balance.." `1& `9BGL : `3"..bgl_balance)
    return true
    end
end
    
AddCallback("balance","OnPacket", balance)

function relog(type, packet)
    if packet == ("action|input\n|text|/relog") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9reloging")
        relog_world = GetLocal().world
        SendPacket(3, "action|quit_to_exit")
        SendPacket(3, "action|join_request\nname|"..relog_world.."\ninvitedWorld|0")
        return true
    end
end
    
AddCallback("relog","OnPacket", relog)

afk = false

function auto_afk(type, packet)
    if packet:find("action|input\n|text|/afk") then
            if afk then
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Afk mode is `3off")
                afk = false
               else 
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Afk mode is `3on")
                afk = true
               end
               RunThread(function()
                afk_rel()
               end)
        return true
        end
    end
AddCallback("auto_afk", "OnPacket", auto_afk)

function afk_rel()
    while afk do
        Sleep(180000)
        relog_world = GetLocal().world
        SendPacket(3, "action|quit_to_exit")
        SendPacket(3, "action|join_request\nname|"..relog_world.."\ninvitedWorld|0")
    end
end

back_world = GetLocal().world
function back_warp(type, packet)
    if packet:find("action|input\n|text|/back") then
        function world_warp()
            SendPacket(3, "action|join_request\nname|"..back_world.."\ninvitedWorld|0")
        end
    end
end
AddCallback("back_warp", "OnPacket", back_warp)



mod_fly = false

function modfly(type, packet)
    if packet == ("action|input\n|text|/modfly") then
        if mod_fly == false then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9mod fly is now `3enabled")
        EditToggle("ModFly", true)
        mod_fly = true
        elseif mod_fly == true then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9mod fly is now `3disabled")
            EditToggle("ModFly", false)
            EditToggle("Antibounce", false)
            mod_fly = false
        end
        return true
    end
end
    
AddCallback("modfly","OnPacket", modfly)


hat_change = 0
shirt_change = 0
pant_change = 0
shoes_change = 0
hand_change = 0
wing_change = 0
hair_change = 0
neck_change = 0
ances_chnage = 0

save_set_modes = false

function sccd1(type, packet)
    if packet == ("action|input\n|text|/sc") then
        if save_set_modes == false then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9save set when joning world is `3enabled")
        function save_clothe_when_enter69(varlist)
            if varlist[0]:find("OnMagicCompassTrackingItemIDChanged") then
                SendPacket(2,"action|setSkin\ncolor|3033464831")
                var2 = {}
                var2[0] = "OnSetClothing"
                var2[1] =  {hat_change, shirt_change, pant_change}
                var2[2] =  {shoes_change , 0, hand_change}
                var2[3] = {wing_change, hair_change, neck_change}
                var2[4] = 3033464831
                var2[5] =  {ances_chnage, 0, 0}
                var2.netid = GetLocal().netid
                SendVarlist(var2)
            return true
            end
        end
    AddCallback("save_clothe_when_enter69", "OnVarlist", save_clothe_when_enter69)        
    save_set_modes = true
        elseif save_set_modes == true then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9safe set when joning world is `3disabled")
            RemoveCallback("save_clothe_when_enter69")
            save_set_modes = false
        end
        return true
    end
end
    
AddCallback("sccd1","OnPacket", sccd1)

save_title_modes = false
function std1(type, packet)
    if packet == ("action|input\n|text|/st") then
        if save_title_modes == false then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9save title when joning world is `3enabled")
        function save_title_when_enter69(varlist)
            if varlist[0]:find("OnMagicCompassTrackingItemIDChanged") then
    if titlexd == "legend" then
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|doctor"
        var.netid = GetLocal().netid
        SendVarlist(var)
        GetLocal().name = GetLocal().name.." of Legend``"
    elseif titlexd == "maxlevel" then
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|maxLevel"
        var.netid = GetLocal().netid
        SendVarlist(var)
    elseif titlexd == "master" then
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|master"
        var.netid = GetLocal().netid
        SendVarlist(var)
    elseif titlexd == "g4g" then
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|donor"
        var.netid = GetLocal().netid
        SendVarlist(var)
    elseif titlexd == "doctor" then
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        GetLocal().name = "Dr."..GetLocal().name
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|doctor"
        var.netid = GetLocal().netid
        SendVarlist(var)
    elseif titlexd == "none" then
    var = {}
    var[0] = "OnCountryState"
    var[1] = "jo|"
    var.netid = GetLocal().netid
    SendVarlist(var)
    end
end
end
    AddCallback("save_title_when_enter69", "OnVarlist", save_title_when_enter69)

save_title_modes = true
    elseif save_title_modes == true then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9safe title when joning world is `3disabled")
            RemoveCallback("save_title_when_enter69")
            save_title_modes = false
        end
        return true
    end
end
    
AddCallback("std1","OnPacket", std1)

function new_clothes()
    local var = {}
    var[0] = "OnParticleEffect"
    var[1] = 73
    var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
    var[3] = 0
    var[4] = 0
    var.netid = -1

    SendVarlist(var)
  SendPacket(2,"action|setSkin\ncolor|3033464831")
  var2 = {}
  var2[0] = "OnSetClothing"
  var2[1] =  {hat_change, shirt_change, pant_change}
  var2[2] =  {shoes_change , 0, hand_change}
  var2[3] = {wing_change, hair_change, neck_change}
  var2[4] = 3033464831
  var2[5] =  {ances_chnage, 0, 0}
  var2.netid = GetLocal().netid
  SendVarlist(var2)
  var23 = {}
  var23[0] = "OnPlayPositioned"
  var23[1] = "audio/change_clothes.wav"
  var23.netid = GetLocal().netid
  SendVarlist(var23)
end

function ances_chnage(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vances") then
      ances_chnage = text:gsub("/vances", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Ances :`3"..ances_chnage)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("ances_chnage","OnPacket", ances_chnage)

function neck_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vneck") then
      neck_change = text:gsub("/vneck", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Neck :`3"..neck_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("neck_change","OnPacket", neck_change)

function hair_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhair") then
      hair_change = text:gsub("/vhair", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Hair :`3"..hair_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hair_change","OnPacket", hair_change)

function wing_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vwing") then
      wing_change = text:gsub("/vwing", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Wings :`3"..wing_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("wing_change","OnPacket", wing_change)

function hand_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhand") then
      hand_change = text:gsub("/vhand", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Hand :`3"..hand_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hand_change","OnPacket", hand_change)

function shoes_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vshoes") then
      shoes_change = text:gsub("/vshoes", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Shoes :`3"..shoes_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("shoes_change","OnPacket", shoes_change)

function pant_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vpant") then
      pant_change = text:gsub("/vpant", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Pants :`3"..pant_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("pant_change","OnPacket", pant_change)

function shirt_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vshirt") then
      shirt_change = text:gsub("/vshirt", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Shirt :`3"..shirt_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("shirt_change","OnPacket", shirt_change)

function hat_change(type, packet)
  if packet:find("action|input") then
  text = packet:gsub("action|input\n|text|", "")
    if text:find("/vhat") then
      hat_change = text:gsub("/vhat", "")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Hat :`3"..hat_change)
    new_clothes() 
    return true
    end
  end
end
  
AddCallback("hat_change","OnPacket", hat_change)

function set_save_clothes(type, packet)
  if packet == ("action|input\n|text|/clothe") or packet == ("action|input\n|text|/clothes") then
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Changing clothes")
    new_clothes()
    local var = {}
    var[0] = "OnParticleEffect"
    var[1] = 73
    var[2] = { GetLocal().pos_x + 10, GetLocal().pos_y + 15}
    var[3] = 0
    var[4] = 0
    var.netid = -1

    SendVarlist(var)
  return true
  end
end
  
AddCallback("set_save_clothes","OnPacket", set_save_clothes)

function start_stop_check_gems(type, packet)
    if packet == ("action|input\n|text|/bj") then
        if gems_checker then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9BJ gems checker is `3off")
            gems_checker = false
           else
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9BJ gems checker is `3on")
            gems_checker = true
        end
           RunThread(function()
                   setgems()
           end)
    return true
    end
end
AddCallback("start_stop_check_gems","OnPacket", start_stop_check_gems)

gems_checker = false

function setgems()
    while gems_checker do
        if GetLocal().world ~= "EXIT" then
        Local_Gems = GetLocal().gems
        Sleep(1000)
        if Local_Gems ~= GetLocal().gems then
        Sleep(1000)
        SendPacket (2,"action|input\ntext|`2+"..math.floor(GetLocal().gems -Local_Gems).." `9Gems Collected")
        Sleep(100)
        end
    end
    end
end


function start_stop_check_gems1(type, packet)
    if packet == ("action|input\n|text|/bjc") then
        if gems_checker then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9BJ gems checker is `3off")
            gems_checker1 = false
           else
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9BJ gems checker is `3on")
            gems_checker1 = true
        end
           RunThread(function()
                   setgems1()
           end)
    return true
    end
end
AddCallback("start_stop_check_gems1","OnPacket", start_stop_check_gems1)

gems_checker1 = false

function setgems1()
    while gems_checker1 do
        if GetLocal().world ~= "EXIT" then
        Local_Gems = GetLocal().gems
        Sleep(1000)
        if Local_Gems ~= GetLocal().gems then
        Sleep(500)
        var = {}
        var[0] = "OnTalkBubble"
        var[1] = GetLocal().netid
        var[2] = "`9Collected `2+"..math.floor(GetLocal().gems -Local_Gems).." `9Gems"
        var[3] = 0
        var[4] = 0
        var.netid = -1
        SendVarlist(var)
        end
        end
    end
end


vend_modexd = false

function ve(type, packet)
    if packet == ("action|input\n|text|/ve") then
        vend_modexd = true
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9vend mode set to `3empty")
        function vend_mode(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|pullstock")
                return true
            end
        end
        AddCallback("vend_mode", "OnVarlist", vend_mode)
    return true
    end
end
    
AddCallback("ve","OnPacket", ve)

function va(type, packet)
    if packet == ("action|input\n|text|/va") then
        vend_modexd = true
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9vend mode set to `3add")
        function vend_mode(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|addstock")
                return true
            end
            end
        AddCallback("vend_mode", "OnVarlist", vend_mode)
    return true
    end
end
    
AddCallback("va","OnPacket", va)

vend_buy = false

function set_vb(type, packet)
    if packet:find("action|input\n|text|/vb") then
        vend_modexd = true
        set_vb_123 = packet:gsub("action|input\n|text|/vb", "")
            set_vb = tonumber(set_vb_123)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Amount to buy : `3"..set_vb.."")
                vend_buy = true
                function vend_mode(varlist)
                    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Close|Buy|") then
                        x_buy = varlist[1]:match("embed_data|tilex|(%d+)")
                        y_buy = varlist[1]:match("embed_data|tiley|(%d+)")
                        expectitem_buy = varlist[1]:match("embed_data|expectitem|(%d+)")
                        expectprice_buy = varlist[1]:match('expectprice|[%d%-]+'):match('%|.*'):sub(2)
                        SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..x_buy.."|\ntiley|"..y_buy.."|\nexpectprice|"..expectprice_buy.."|\nexpectitem|"..expectitem_buy.."|\nbuycount|"..set_vb)
                        return true
                    end
                end
                AddCallback("vend_mode", "OnVarlist", vend_mode)

                function buy_vend_2(varlist)
                    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|vending|Cancel|OK|") then
                        x_buy = varlist[1]:match("embed_data|tilex|(%d+)")
                        y_buy = varlist[1]:match("embed_data|tiley|(%d+)")
                        expectitem_buy = varlist[1]:match("embed_data|expectitem|(%d+)")
                        buy_count = varlist[1]:match("embed_data|buycount|(%d+)")
                        expectprice_buy = varlist[1]:match('expectprice|[%d%-]+'):match('%|.*'):sub(2)
                        SendPacket(2, "action|dialog_return\ndialog_name|vending\ntilex|"..x_buy.."|\ntiley|"..y_buy.."|\nverify|1|\nbuycount|"..buy_count.."|\nexpectprice|"..expectprice_buy.."|\nexpectitem|"..expectitem_buy.."|")
                        return true
                    end
                end
                AddCallback("buy_vend_2", "OnVarlist", buy_vend_2)
                
            return true
        end
    end
AddCallback("set_vb","OnPacket", set_vb)

function voff(type, packet)
    if packet == ("action|input\n|text|/voff") then
        vend_modexd = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9vend mode is now `3off")
        RemoveCallback("vend_mode")
        if vend_buy then
        RemoveCallback("buy_vend_2")
        end
        return true
    end
end

AddCallback("voff","OnPacket", voff)

function start_stop_collect(type, packet)
    if packet == ("action|input\n|text|/autocollect") or packet == ("action|input\n|text|/ac") then
        if collectrange then
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9autocollect is `3off")
            collectrange = false
           else
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9autocollect is `3on")
            collectrange = true
        end
    return true
    end
end
AddCallback("start_stop_collect","OnPacket", start_stop_collect)

collectrange = false
function collectrange()
    erdx = math.floor(GetLocal().pos_x // 32)
    erdy = math.floor(GetLocal().pos_y // 32)
    for y = 8, -8, -1 do
        for x = 8, -8, -1 do
            collect(erdx + x, erdy + y)
        end
    end
end



function wp(type, packet)
    if packet == ("action|input\n|text|/wp") then
        mode_wm = "pull"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3pull")
        function hook(var)
            netid = var[1]:match("netID|(%d+)")
            if var[1]:find("add_button|report_player|") then
            SendPacket(2, "action|dialog_return\ndialog_name|popup\nnetID|"..netid.."|\nnetID|"..netid.."|\nbuttonClicked|pull")
            OnTextOverlay("`0Successfully `5Pulled")
            return true
            end
        end
        AddCallback("hook", "OnVarlist", hook)            
        return true
    end
end

AddCallback("wp","OnPacket", wp)

function pullusername(username)
    for _, item in pairs(GetPlayers()) do
        if item.name == username then
            pullnetid(item.netid)
        end
    end
end

function wk(type, packet)
    if packet == ("action|input\n|text|/wk") then
        mode_wm = "kick"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3kick")
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/kick "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)     
        return true
    end
end

AddCallback("wk","OnPacket", wk)

function wb(type, packet)
    if packet == ("action|input\n|text|/wb") then
        mode_wm = "ban"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode set to `3ban")
        function Wrench(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|report_player|") then
                x = varlist[1]:removeColors()
                x2 = x:match("add_label_with_icon|big|(%w+)")
                SendPacket(2, "action|input\n|text|/ban "..x2)
            return true
            end
        end
        AddCallback("Wrench", "OnVarlist", Wrench)
        return true
    end
end

AddCallback("wb","OnPacket", wb)

function woff(type, packet)
    if packet == ("action|input\n|text|/woff") then
        mode_wm = "off"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9wrench mode is now `3off")
        RemoveCallback("hook") 
        return true
    end
end

AddCallback("woff","OnPacket", woff)

ut_adder_mode = false

function UT_adder(varlist)
    if ut_adder_mode then
        function UT_mode1(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_block|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_block\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|additem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("UT_mode1", "OnVarlist", UT_mode1)
        
        function UT_mode2(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemaddedtosucker|Close|Add|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemaddedtosucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoadd|"..varlist[1]:match("have (%d+)").."")
                return true
            end
        end
        AddCallback("UT_mode2", "OnVarlist", UT_mode2)
    end
end
AddCallback("UT_adder", "OnVarlist", UT_adder)

ut_emptier_mode = false

function UT_emptier(varlist)
    if ut_emptier_mode then
        function UT_mode3(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_block|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_block\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|retrieveitem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("UT_mode3", "OnVarlist", UT_mode3)
        
        function UT_mode4(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemremovedfromsucker|Close|Retrieve|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemremovedfromsucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoremove|"..varlist[1]:match("Amount:|(%d+)").."")
                return true
            end
        end
        AddCallback("UT_mode4", "OnVarlist", UT_mode4)
    end
end
AddCallback("UT_emptier", "OnVarlist", UT_emptier)

function ut_adder_hook(type, packet)
    if packet == ("action|input\n|text|/ut add") or packet == ("action|input\n|text|/ua") then
        ut_of_or_no = true
        if ut_emptier_mode then
            ut_emptier_mode = false
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
        end
            ut_adder_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast UT adder `3enabled")
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
            AddCallback("UT_mode1", "OnVarlist", UT_mode1)
            AddCallback("UT_mode2", "OnVarlist", UT_mode2)
        return true
    end
end

AddCallback("ut_adder_hook","OnPacket", ut_adder_hook)

function ut_emptier_hook(type, packet)
    if packet == ("action|input\n|text|/ut empty") or packet == ("action|input\n|text|/ue") then
        ut_of_or_no = true
        if ut_adder_mode then
            ut_adder_mode = false
            RemoveCallback("UT_mode1")
            RemoveCallback("UT_mode2")
        end
            ut_emptier_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast UT emptier `3enabled")
            AddCallback("UT_mode3", "OnVarlist", UT_mode3)
            AddCallback("UT_mode4", "OnVarlist", UT_mode4)
            return true
        end
end

AddCallback("ut_emptier_hook","OnPacket", ut_emptier_hook)

function ut_on_off(type, packet)
    if packet == ("action|input\n|text|/ut off") or packet == ("action|input\n|text|/uoff") then
        ut_of_or_no = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9UT mode is now `3off")
        if ut_adder_mode then
        RemoveCallback("UT_mode1")
        RemoveCallback("UT_mode2")
        ut_adder_mode = false
        end
        if ut_emptier_mode then
        RemoveCallback("UT_mode3")
        RemoveCallback("UT_mode4")
        end
        return true
    end
end

AddCallback("ut_on_off","OnPacket", ut_on_off)


gaia_adder_mode = false

function GAIA_adder(varlist)
    if gaia_adder_mode then
        function GAIA_mode1(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_seed|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_seed\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|additem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("GA_mode1", "OnVarlist", GA_mode1)
        
        function GAIA_mode2(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemaddedtosucker|Close|Add|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemaddedtosucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoadd|"..varlist[1]:match("have (%d+)").."")
                return true
            end
        end
        AddCallback("GA_mode2", "OnVarlist", GA_mode2)
    end
end
AddCallback("GAIA_adder", "OnVarlist", GAIA_adder)

ga_emptier_mode = false

function GAIA_emptier(varlist)
    if ga_emptier_mode then
        function GAIA_mode3(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemsucker_seed|Close|Update|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemsucker_seed\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nbuttonClicked|retrieveitem\nchk_enablesucking|1")
                return true
            end
        end
        AddCallback("GA_mode3", "OnVarlist", GA_mode3)
        
        function GAIA_mode4(varlist)
            if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|itemremovedfromsucker|Close|Retrieve|") then
                SendPacket(2, "action|dialog_return\ndialog_name|itemremovedfromsucker\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nitemtoremove|"..varlist[1]:match("Amount:|(%d+)").."")
                return true
            end
        end
        AddCallback("GA_mode4", "OnVarlist", GA_mode4)
    end
end
AddCallback("GAIA_emptier", "OnVarlist", GAIA_emptier)

function gaia_adder_hook(type, packet)
    if packet == ("action|input\n|text|/gaia add") or packet == ("action|input\n|text|/ga") then
        ga_of_or_no = true
        if ga_emptier_mode then
            ga_emptier_mode = false
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
        end
            gaia_adder_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast GAIA adder `3enabled")
            RemoveCallback("UT_mode3")
            RemoveCallback("UT_mode4")
            AddCallback("GA_mode1", "OnVarlist", GA_mode1)
            AddCallback("GA_mode2", "OnVarlist", GA_mode2)
            return true
        end
end

AddCallback("gaia_adder_hook","OnPacket", gaia_adder_hook)

function gaia_emptier_hook(type, packet)
    if packet == ("action|input\n|text|/gaia empty") or packet == ("action|input\n|text|/ge") then
        ga_of_or_no = true
        if ga_adder_mode then
            ga_adder_mode = false
            RemoveCallback("GA_mode1")
            RemoveCallback("GA_mode2")
        end
            ga_emptier_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast GAIA emptier `3enabled")
            AddCallback("GA_mode3", "OnVarlist", GA_mode3)
            AddCallback("GA_mode4", "OnVarlist", GA_mode4)
            return true
        end
end

AddCallback("gaia_emptier_hook","OnPacket", gaia_emptier_hook)


function gaia_on_off(type, packet)
    if packet == ("action|input\n|text|/gaia off") or packet == ("action|input\n|text|/goff") then
        ga_of_or_no = false
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9GAIA mode is now `3off")
        if ga_adder_mode then
        RemoveCallback("GA_mode1")
        RemoveCallback("GA_mode2")
        ga_adder_mode = false
        end
        if ga_emptier_mode then
        RemoveCallback("GA_mode3")
        RemoveCallback("GA_mode4")
        end
        return true
    end
end

AddCallback("gaia_on_off","OnPacket", gaia_on_off)



auto_ban_fire_maker_mode = false

function auto_ban_fire_maker(varlist)
    if auto_ban_fire_maker_mode then
        function fireban(v)
            if v[0] == "OnTalkBubble" and v[2]:find("`4MWAHAHAHA!!") then
                netid = v[1]
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9Player with a netid of `3"..netid.." `9placed a pocket lighter !")
                pkt = [[action|wrench
                |netid|]]..netid
                pkt2 = [[action|dialog_return
                dialog_name|popup
                netID|]]..netid..[[|
                netID|]]..netid..[[|
                buttonClicked|worldban]]
                SendPacket(2, pkt)
                SendPacket(2, pkt2)
                return true
            end
        end
        AddCallback("fire", "OnVarlist", fireban)
    end
end
AddCallback("auto_ban_fire_maker", "OnVarlist", auto_ban_fire_maker)

function auto_ban_fire_maker_hook_xd(type, packet)
    if packet == ("action|input\n|text|/fire ban") then
        if auto_ban_fire_maker_mode == true then
            auto_ban_fire_maker_mode = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9auto ban fire maker `3disabled")
        RemoveCallback("fire")
        elseif auto_ban_fire_maker_mode == false then
            auto_ban_fire_maker_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9auto ban fire maker `3enabled")
        AddCallback("fire","OnVarlist", fire)
        end
    return true
end
end

AddCallback("auto_ban_fire_maker_hook_xd","OnPacket", auto_ban_fire_maker_hook_xd)

fd_mode = false

function fd(varlist)
    if fd_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|drop_item|Cancel|OK|") then
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|"..varlist[1]:match("itemID|(%d+)").."|\ncount|"..varlist[1]:match("count||(%d+)").."")
        return true
    end
    end
end
AddCallback("fd", "OnVarlist", fd)

function fd_hook_xd(type, packet)
    if packet == ("action|input\n|text|/fd") then
        if fd_mode == true then
            fd_mode = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast drop `3disabled")
        RemoveCallback("fd")
        elseif fd_mode == false then
            fd_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast drop `3enabled")
        AddCallback("fd","OnVarlist", fd)
        end
    return true
end
end

AddCallback("fd_hook_xd","OnPacket", fd_hook_xd)


ft_mode = false

function ft(varlist)
    if ft_mode then
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|trash_item|Cancel|OK|") then
        SendPacket(2, "action|dialog_return\ndialog_name|trash_item\nitemID|"..varlist[1]:match("embed_data|itemID|(%d+)").."|\ncount|"..varlist[1]:match("you have (%d+)"))
        return true
    end
    end
end
AddCallback("ft", "OnVarlist", ft)

function ft_hook_xd(type, packet)
    if packet == ("action|input\n|text|/ft") then
        if ft_mode == true then
            ft_mode = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast trash `3disabled")
        RemoveCallback("ft")
        elseif ft_mode == false then
            ft_mode = true
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9fast trash `3enabled")
        AddCallback("ft","OnVarlist", ft)
        end
    return true
end
end

AddCallback("ft_hook_xd","OnPacket", ft_hook_xd)

set_mod_joinx2 = "off"

function set_mod_join2(type, packet)
    if packet:find("action|input\n|text|/j ") then
        set_mod_joinx2 = packet:gsub("action|input\n|text|/j ", "")
            if set_mod_joinx2 == "ban" then
                set_mod_join = "ban"
                OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx2 == "kick" then
                set_mod_join = "kick"
                OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
            if set_mod_joinx2 == "pull" then
                set_mod_join = "pull"
                OnConsoleMessage("`0[ `3Yoshiro `0] `9join command set to : `3"..set_mod_join)
                function when_join(vlist)
                    if vlist[0]=="OnSpawn" then
                        a = vlist[1]:match("name|(`.[^`]+)")
                        name = a:sub(3)
                        SendPacket(2,"action|input\n|text|/"..set_mod_join.." " .. name:lower())
                    end
                end
                AddCallback("when_join","OnVarlist", when_join)
            end
                if set_mod_joinx2 == "off" then
                    set_mod_join = "off"
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9turning off join mode")
                    RemoveCallback("when_join")
                end
          return true
        end
    end
AddCallback("set_mod_join2","OnPacket", set_mod_join2)


function ssave(type, packet)
    if packet:find("action|input\n|text|/ssaver") then
        ssaver_name = packet:gsub("action|input\n|text|/ssaver ", "")
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Saver acc set to :`3"..ssaver_name)
        return true
    end
end
AddCallback("ssave","OnPacket", ssave)

function saver(type, packet)
    if packet == ("action|input\n|text|/saver") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Pulling `9Saver acc")
        SendPacket(2,"action|input\n|text|/pull " ..ssaver_name)
    return true
    end
end
AddCallback("saver","OnPacket", saver)

function fake_ban(type, packet)
    if packet == ("action|input\n|text|/gift") then
        SendPacket(3, "action|quit_to_exit")
        ban_name = GetLocal().name
        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "Reality flickers as you begin to wake up. (`$Ban`` mod added, `$730 days`` left)"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnAddNotification"
        var2[1] = "interface/atomic_button.rttex"
        var2[2] = "Warning from `4System``: You've been `4BANNED`` from `wGrowtopia`` for 730 days"
        var2[3] = "audio/hub_open.wav"
        var2[4] = 0
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "Warning from `4System``: You've been `4BANNED`` from `wGrowtopia`` for 730 days"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "`#** ```$The Ancients`` have used `#Ban`` on `w"..ban_name.."``! `#**``"
        var2.netid = -1
        SendVarlist(var2)

        var2 = {}
        var2[0] = "OnConsoleMessage"
        var2[1] = "`4** `$"..ban_name.."`` AUTO-BANNED BY SYSTEM **`` (`$/rules`` to view rules)"
        var2.netid = -1
        SendVarlist(var2)
    return true
    end
end

    
    
AddCallback("fake_ban","OnPacket", fake_ban)

function spinall(type, packet)
    if packet == ("action|input\n|text|/spinall") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Spinning all wheels")
local function Hit(x, y)
    local p = {}
    p.type = 3
    p.int_data = 3704
    p.int_x = x
    p.int_y = y
    p.pos_x = GetLocal().pos_x
    p.pos_y = GetLocal().pos_y
    SendPacketRaw(p)
end
local nocrash = {};
for i, v in pairs(GetTiles()) do
    if v.fg == 758 then
        table.insert(nocrash, {x = v.pos_x, y = v.pos_y})
    end
end
local d = function()
    for __, pos in pairs(nocrash) do
        Hit(pos.x, pos.y)
        Sleep(200)
        if GetLocal().name == "NULL" then return end
    end
end
RunThread(function()
    d()
end)
    return true
    end
end
    
AddCallback("spinall","OnPacket", spinall)


autocrime = false

function auto_crime(type, packet)
    if packet == ("action|input\n|text|/autocrime") or packet == ("action|input\n|text|/autoc") then
        if autocrime then
            autocrime = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-crime `3Stopped")
            RemoveCallback("crime")
        return true
        else
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-crime `3Started")
            autocrime = true
            function crime(var)
                if var[0]:find("OnDialogRequest") then
                    if var[1]:find("Devil Ham``%'s `2Crush`` card `4melted") then
                        liq = "yes"
                    end
                    if var[1]:find("Ms%. Terry") and var[1]:find("Ban Hammer") then
                        ban = "yes"
                    end
            
                    if var[1]:find("|Battle%!|")  then
                        x = var[1]:match("tilex|(%d+)")
                        y = var[1]:match("tiley|(%d+)")
                        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Villian : `3" .. var[1]:match("add_textbox|(.*)`` is"))
            
                        if var[1]:find("Crime in Progress") then
                            c1 = 2298
                            c2 = 2308
                            c3 = 2320
                            c4 = 2324
                            c5 = 2332
                        end
                        if var[1]:find("Jimmy Snow") then
                            use1 = c5
                            use2 = c4
                            use3 = c3
                        elseif var[1]:find("Big Bertha") then
                            use1 = c1
                            use2 = c4
                            use3 = c3
                        elseif var[1]:find("Shockinator") then
                            use1 = c4
                            use2 = c3
                            use3 = c1
                        elseif var[1]:find("The Firebug") then
                            use1 = c2
                            use2 = c1
                            use3 = c5
                        elseif var[1]:find("Generic Thug") or var[1]:find("Kat 5") then
                            use1 = c4
                            use2 = c3
                            use3 = c2
                        elseif var[1]:find("Professor Pummel") then
                            c1 = 2296
                            c2 = 2298
                            c3 = 2300
                            c4 = 2320
                            c5 = 2324
                            use1 = c3
                            use2 = c2
                            use3 = c1
                        elseif var[1]:find("Z%. Everett Koop") then
                            c1 = 2296
                            c2 = 2298
                            c3 = 2300
                            c4 = 2320
                            c5 = 2324
                            use1 = c3
                            use2 = c1
                            use3 = c2
                        elseif var[1]:find("Dr%. Destructo") then
                            c1 = 2298
                            c2 = 2308
                            c3 = 2310
                            c4 = 2314
                            c5 = 2316
                            step = "0"
                            use1 = c1
                            use2 = c3
                            use3 = c5
                        elseif var[1]:find("Dragon Hand") or var[1]:find("Almighty Seth") then
                            c1 = 2308
                            c2 = 2312
                            c3 = 2314
                            c4 = 2326
                            c5 = 2328
                            use1 = c5
                            use2 = c4
                            use3 = 6969
                        elseif var[1]:find("Devil Ham") then
                            c1 = 2298
                            c2 = 2332
                            c3 = 2334
                            c4 = 2336
                            c5 = 2338
                            use1 = c1
                            use2 = c4
                            use3 = c5
                            use4 = c3
                            use5 = c2
            
                            liq = "no"
                            step = "1"
                        elseif var[1]:find("Ms%. Terry") then
                            c1 = 2294
                            c2 = 2316
                            c3 = 2322
                            c4 = 2328
                            c5 = 2338
                            use1 = c1
                            use2 = c2
                            use3 = c3
                            use4 = c4
                            use5 = c5
                            ban = "no"
                        end
            
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .."|\ntiley|" ..y .."|\nstate|0||\nbuttonClicked|button_ok\n\nc" ..c1 .. "|1\nc" .. c2 .. "|1\nc" .. c3 .. "|1\nc" .. c4 .. "|1\nc" .. c5 .. "|1\n")
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Devil Ham") then
                        if liq == "no" then
                            if var[1]:find("c" .. use1) then
                                use = use1
                            else
                                use = "passturn"
                            end
                        elseif var[1]:find("c" .. use2) and step == "0" then
                            step = "1"
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        elseif var[1]:find("c" .. use4) then
                            use = use4
                        elseif var[1]:find("c" .. use5) then
                            use = use5
                        else
                            use = "passturn"
                        end
            
                        OnTextOverlay("`9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Ms%. Terry") then
                        if var[1]:find("is going to play `%d") then
                            if var[1]:match("is going to play `(%d)") == "2" then
                                use = use1
                            elseif var[1]:match("is going to play `(%d)") == "4" then
                                use = use2
                            elseif var[1]:match("is going to play `(%d)") == "9" then
                                use = use4
                            elseif var[1]:match("is going to play `(%d)") == "1" then
                                use = use5
                            end
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        elseif var[1]:find("c" .. use5) and ban=="yes" then
                            use = use5
                        elseif var[1]:find("c" .. use1) then
                            use = use1
                        elseif var[1]:find("c" .. use4) then
                            use = use4
                        elseif var[1]:find("c" .. use5) then
                            use = use5
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        else
                            use = "passturn"
                        end
            
                        OnTextOverlay("`9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") and var[1]:find("Dr%. Destructo") then
                        if var[1]:find("c" .. use1) and step == "0" then
                            use = use1
                            step = "1"
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        else
                            use = "passturn"
                        end
                        OnTextOverlay("`9Please wait..")
                        SendPacket(2,"action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    elseif var[1]:find("Fighting Crime") then
                        if var[1]:find("c" .. use1) then
                            use = use1
                        elseif var[1]:find("c" .. use2) then
                            use = use2
                        elseif var[1]:find("c" .. use3) then
                            use = use3
                        else
                            use = "passturn"
                        end
            
                        OnTextOverlay("`9Please wait..")
                        SendPacket(2, "action|dialog_return\ndialog_name|crime_edit\ntilex|" ..x .. "|\ntiley|" .. y .. "|\nstate|1||\nbuttonClicked|c" .. use)
                    end
                    return true
                end
                return false
            end
            
            AddCallback("crime", "OnVarlist", crime)

            return true
        end
    end
    end
AddCallback("auto_crime","OnPacket", auto_crime)

autosurg = false

hide_surg = false

function auto_surg(type, packet)
    if packet == ("action|input\n|text|/autosurg") or packet == ("action|input\n|text|/autos") then
        if autosurg then
            autosurg = false
            OnConsoleMessage("`0[ `3Yoshiro `0] `9Auto-surg `3Stopped")
            RemoveCallback("surg")
            if hide_surg == true then
            RemoveCallback("hide_surg")
            end
        return true
        else
            RunThread(function()
                auto_surg_thread()
        end)
        return true
    end
end
end
AddCallback("auto_surg","OnPacket", auto_surg)

function auto_surg_thread()

function hide_surg(varlist)
    hide_surg = true
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|surge|Cancel|Okay!|") then
        SendPacket(2, "action|dialog_return\ndialog_name|surge\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."")
        return true
    end
end
AddCallback("hide_surg", "OnVarlist", hide_surg)

autosurg = true
tool = ""
itool = 0
OnConsoleMessage("`0[ `3Yoshiro `0] `9Auto-surg `3Started")
function auto()
   if tool == "Sponge" then
      itool = 1258
   elseif tool == "Splint" then
      itool = 1268
   elseif tool == "Antibiotic" then
      itool = 1266
   elseif tool == "Antiseptic" then
      itool = 1264  
   elseif tool == "Anesthetic" then
      itool = 1262
   elseif tool == "Scalpel" then
      itool = 1260
   elseif tool == "Stitches" then
      itool = 1270
   elseif tool == "Lab kit" then
      itool = 4318
   elseif tool == "Pins" then
      itool = 4308
   elseif tool == "Clamp" then
      itool = 4314
   elseif tool == "Transfusion" then
      itool = 4310
   elseif tool == "Ultrasound" then
      itool = 4316
   elseif tool == "Defibrillator" then
      itool = 4312
   elseif tool == "Fix it" then
      itool = 1296
   end
   SendPacket(2, "action|dialog_return\ndialog_name|surgery\nbuttonClicked|tool"..itool)
   Sleep(100)
   OnConsoleMessage("`0[ `3Yoshiro `0] `9"..tool)
end

function surg(var)
   if var[0] == "OnDialogRequest" and var[1]:find("`4The patient wakes up!") and var[1]:find("tool1262") then
      tool = "Anesthetic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("`4The patient screams and flails!") and var[1]:find("tool1262") then
      tool = "Anesthetic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `4Heart stopped!(.+)") and var[1]:find("tool4312") then
      tool = "Defibrillator"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `6Coming to(.+)") and var[1]:find("tool1262") then
      tool = "Anesthetic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Pulse: `4(.+)") and var[1]:find("tool4310") then
      tool = "Transfusion"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `4(%d+)(.+)") and var[1]:find("tool1266") then
      tool = "Antibiotic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `4(%d+)(.+)") and var[1]:find("tool4318") then
      tool = "Lab kit"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `6(%d+)(.+)") and var[1]:find("tool1266") then
      tool = "Antibiotic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `6(%d+)(.+)") and var[1]:find("tool4318") then
      tool = "Lab kit"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `3(%d+)(.+)") and var[1]:find("tool1266") then
      tool = "Antibiotic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `3(%d+)(.+)") and var[1]:find("tool4318") then
      tool = "Lab kit"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `4very quickly!(.+)") and var[1]:find("tool4314") then
      tool = "Clamp"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `4very quickly!(.+)") and var[1]:find("tool1270") then
      tool = "Stitches"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is `6losing blood!(.+)") and var[1]:find("tool4314") then
      tool = "Clamp"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is `6losing blood!(.+)") and var[1]:find("tool1270") then
      tool = "Stitches"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Incisions: `20(.+)") and var[1]:find("tool1296") then
      tool = "Fix it"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Incisions: `30(.+)") and var[1]:find("tool1296") then
      tool = "Fix it"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("The patient has not been diagnosed.") and var[1]:find("tool4316") then
      tool = "Ultrasound"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `4Awake(.+)") and var[1]:find("tool1262") then
      tool = "Anesthetic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) broken``") and var[1]:find("tool1268") then
      tool = "Splint"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) broken``") and var[1]:find("tool1268") then
      tool = "Splint"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient broke his arm.") and var[1]:find("tool1270") then
      tool = "Stitches"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `3Awake(.+)") and var[1]:find("tool1262") then
      tool = "Anesthetic"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Pulse: `6(.+)") and var[1]:find("tool4310") then
      tool = "Transfusion"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("`4You can't see what you are doing!(.+)") and var[1]:find("tool1258") then
      tool = "Sponge"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("tool1296") and var[1]:find("tool1270") then
      tool = "Stitches"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `6(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `6(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `6(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `6(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `4(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `4(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `4(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `4(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) shattered(.+)") and var[1]:find("tool4308") then
      tool = "Pins"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) shattered(.+)") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient broke his leg.") and var[1]:find("tool1270") then
      tool = "Stitches"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `3slowly.(.+)") and var[1]:find("tool4314") then
      tool = "Clamp"
      auto()
      return true
   elseif var[0]:find("OnDialogRequest") and var[1]:find("tool1260") then
      tool = "Scalpel"
      auto()
      return true
   end
   return false
end
AddCallback("surg","OnVarlist", surg)
end


autosurghelper = false

function auto_surg_helper(type, packet)
    if packet == ("action|input\n|text|/autosurghelper") or packet == ("action|input\n|text|/autosh") then
        if autosurghelper then
            autosurghelper = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-surg Helper `3Stopped")
            RemoveCallback("surg")
            if hide_surg == true then
                RemoveCallback("hide_surg")
                end
        return true
        else
            if hide_surg == true then
                RemoveCallback("hide_surg")
                end
            RunThread(function()
                auto_surg_helper_thread()
        end)
        return true
    end
end
end
AddCallback("auto_surg_helper","OnPacket", auto_surg_helper)

function auto_surg_helper_thread()
autosurghelper = true
tool = ""
itool = 0
OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-surg Helper `3Started")
function auto()
   if tool == "Sponge" then
      itool = 1258
   elseif tool == "Splint" then
      itool = 1268
   elseif tool == "Antibiotic" then
      itool = 1266
   elseif tool == "Antiseptic" then
      itool = 1264  
   elseif tool == "Anesthetic" then
      itool = 1262
   elseif tool == "Scalpel" then
      itool = 1260
   elseif tool == "Stitches" then
      itool = 1270
   elseif tool == "Lab kit" then
      itool = 4318
   elseif tool == "Pins" then
      itool = 4308
   elseif tool == "Clamp" then
      itool = 4314
   elseif tool == "Transfusion" then
      itool = 4310
   elseif tool == "Ultrasound" then
      itool = 4316
   elseif tool == "Defibrillator" then
      itool = 4312
   elseif tool == "Fix it" then
      itool = 1296
   end
   OnConsoleMessage("`0[ `3YoshiGT  `0] `9"..tool)
   MessageBox("Surgery Helper", "Use "..tool)
end

function surg(var)
    if var[0] == "OnDialogRequest" and var[1]:find("`4The patient wakes up!") and var[1]:find("tool1262") then
        tool = "Anesthetic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("`4The patient screams and flails!") and var[1]:find("tool1262") then
        tool = "Anesthetic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `4Heart stopped!(.+)") and var[1]:find("tool4312") then
        tool = "Defibrillator"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `6Coming to(.+)") and var[1]:find("tool1262") then
        tool = "Anesthetic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Pulse: `4(.+)") and var[1]:find("tool4310") then
        tool = "Transfusion"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `4(%d+)(.+)") and var[1]:find("tool1266") then
        tool = "Antibiotic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `4(%d+)(.+)") and var[1]:find("tool4318") then
        tool = "Lab kit"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `6(%d+)(.+)") and var[1]:find("tool1266") then
        tool = "Antibiotic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `6(%d+)(.+)") and var[1]:find("tool4318") then
        tool = "Lab kit"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `3(%d+)(.+)") and var[1]:find("tool1266") then
        tool = "Antibiotic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Temp: `3(%d+)(.+)") and var[1]:find("tool4318") then
        tool = "Lab kit"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `4very quickly!(.+)") and var[1]:find("tool4314") then
        tool = "Clamp"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `4very quickly!(.+)") and var[1]:find("tool1270") then
        tool = "Stitches"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is `6losing blood!(.+)") and var[1]:find("tool4314") then
        tool = "Clamp"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is `6losing blood!(.+)") and var[1]:find("tool1270") then
        tool = "Stitches"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Incisions: `20(.+)") and var[1]:find("tool1296") then
        tool = "Fix it"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Incisions: `30(.+)") and var[1]:find("tool1296") then
        tool = "Fix it"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("The patient has not been diagnosed.") and var[1]:find("tool4316") then
        tool = "Ultrasound"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `4Awake(.+)") and var[1]:find("tool1262") then
        tool = "Anesthetic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) broken``") and var[1]:find("tool1268") then
        tool = "Splint"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) broken``") and var[1]:find("tool1268") then
        tool = "Splint"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient broke his arm.") and var[1]:find("tool1270") then
        tool = "Stitches"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Status: `3Awake(.+)") and var[1]:find("tool1262") then
        tool = "Anesthetic"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Pulse: `6(.+)") and var[1]:find("tool4310") then
        tool = "Transfusion"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("`4You can't see what you are doing!(.+)") and var[1]:find("tool1258") then
        tool = "Sponge"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("tool1296") and var[1]:find("tool1270") then
        tool = "Stitches"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `6(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `6(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `6(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `6(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `4(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+), `4(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `4(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+), `4(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `6(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) shattered(.+)") and var[1]:find("tool4308") then
        tool = "Pins"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Bones: `4(.+) shattered(.+)") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient broke his leg.") and var[1]:find("tool1270") then
        tool = "Stitches"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("Patient is losing blood `3slowly.(.+)") and var[1]:find("tool4314") then
        tool = "Clamp"
        auto()
     elseif var[0]:find("OnDialogRequest") and var[1]:find("tool1260") then
        tool = "Scalpel"
        auto()
   end
   return false
end
AddCallback("surg","OnVarlist", surg)
end

autostartopia = false

function auto_startopia(type, packet)
    if packet == ("action|input\n|text|/autostartopia") or packet == ("action|input\n|text|/autost") then
        if autostartopia then
            autostartopia = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-startopia `3Stopped")
            RemoveCallback("startopia")
        return true
        else
            RunThread(function()
                auto_startopia_thread()
        end)
        return true
    end
end
end
AddCallback("auto_startopia","OnPacket", auto_startopia)

function auto_startopia_thread()
autostartopia = true
step = 0
Mission = 0
OnConsoleMessage("`0[ `3YoshiGT  `0] `9Auto-startopia `3Started")

function Drone()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6532")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Tactical Drone")
    Sleep(50)
end

function Teleporter()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6526")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Teleporter Charge")
    Sleep(50)
end

function Doc()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6534")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Stellar Documents")
    Sleep(50)
end

function Scan()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6530")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Quadriscanner")
    Sleep(50)
end

function Torp()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6540")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Growton Torpedo")
    Sleep(50)
end

function Dip()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6538")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Cyborg Diplomat")
    Sleep(50)
end

function Sup()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6536")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Star Supplies")
    Sleep(50)
end

function Giga()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6528")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Gigablaster")
    Sleep(50)
end

function Shield()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6518")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9HyperShields")
    Sleep(50)
end

function AI()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6520")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9AI Brain")
    Sleep(50)
end

function Gala()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6522")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Galactibolt")
    Sleep(50)
end

function Meds()
    SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|tool6524")
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Space Meds")
    Sleep(50)
end

function startopia(var)
   if var[0] == "OnDialogRequest" and var[1]:find("end_dialog|startopia") and var[1]:find("Health") then
      if var[1]:find("add_label_with_icon|big|`w(%w+) Data") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 4 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 4 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3" .. var[1]:match("add_label_with_icon|big|`w(%w+) Data") .. " Data")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wSet a Course") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Set a Course")
            end
            Drone()
            return true
         end
      elseif
         var[1]:find("add_label_with_icon|big|`wOutpost Attack")
         or var[1]:find("add_label_with_icon|big|`wOne Angry Ship")
      then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Torp()
               elseif step == 2 then
                  Dip()
               elseif step == 3 or step == 5 then
                  Teleporter()
               elseif step == 4 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Torp()
               elseif step == 2 then
                  Dip()
               elseif step == 3 or step == 5 then
                  Teleporter()
               elseif step == 4 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               if var[1]:find("Outpost Attack") then
                  OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Outpost Attack")
               elseif var[1]:find("One Angry Ship") then
                  OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3One Angry Ship")
               end
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wStarachnid Attack") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 then
                  Torp()
               elseif step == 2 then
                  Sup()
               elseif step == 4 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 then
                  Torp()
               elseif step == 2 then
                  Sup()
               elseif step == 4 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Starachnid Attack")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`w(%w+) Attack") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Shield()
               elseif step == 2 or step == 3 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Shield()
               elseif step == 2 or step == 3 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3" .. var[1]:match("add_label_with_icon|big|`w(%w+) Attack") .. " Attack")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wLife Pod") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Scan()
               elseif step == 2 then
                  Meds()
               elseif step == 3 then
                  Sup()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Teleporter()
               elseif step == 1 then
                  Scan()
               elseif step == 2 then
                  Meds()
               elseif step == 3 then
                  Sup()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Life Pod")
            end
            Teleporter()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wBoarding Party") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 2 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Scan()
               elseif step == 1 or step == 2 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Boarding Party")
            end
            Scan()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wExperimental Salvage") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 2 or step == 3 then
                  Teleporter()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 2 or step == 3 then
                  Teleporter()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Experimental Salvage")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wDark Ship") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Teleporter()
               elseif step == 2 then
                  AI()
               elseif step == 3 or step == 4 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Teleporter()
               elseif step == 2 then
                  AI()
               elseif step == 3 or step == 4 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Dark Ship")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`w(%w+) Hunt") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 4 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 4 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3" .. var[1]:match("add_label_with_icon|big|`w(%w+) Hunt") .. " Hunt")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wWindy Days") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Windy Days")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wAncient Temple") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Dip()
               elseif step == 2 then
                  Sup()
               elseif step == 3 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Dip()
               elseif step == 2 then
                  Sup()
               elseif step == 3 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Ancient Temple")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wA Challenge") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 2 or step == 3 or step == 4 then
                  Shield()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 2 or step == 3 or step == 4 then
                  Shield()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3A Challenge?!")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wMiner Rescue") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Drone()
               elseif step == 2 or step == 4 or step == 5 then
                  Teleporter()
               elseif step == 3 then
                  Scan()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Gala()
               elseif step == 1 then
                  Drone()
               elseif step == 2 or step == 4 or step == 5 then
                  Teleporter()
               elseif step == 3 then
                  Scan()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Miner Rescue")
            end
            Gala()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wHunter and Prey") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  AI()
               elseif step == 2 or step == 4 then
                  Teleporter()
               elseif step == 3 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  AI()
               elseif step == 2 or step == 4 then
                  Teleporter()
               elseif step == 3 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Hunter and Prey")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wGiant Skeleton") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  AI()
               elseif step == 2 then
                  Shield()
               elseif step == 3 then
                  Sup()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  AI()
               elseif step == 2 then
                  Shield()
               elseif step == 3 then
                  Sup()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Giant Skeleton")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wShadow Stalkers") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 or step == 7 then
                  Teleporter()
               elseif step == 2 or step == 6 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Giga()
               elseif step == 8 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 5 or step == 7 then
                  Teleporter()
               elseif step == 2 or step == 6 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Giga()
               elseif step == 8 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Shadow Stalkers")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wPlanet Calamity") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 or step == 6 then
                  Teleporter()
               elseif step == 2 then
                  AI()
               elseif step == 4 then
                  Shield()
               elseif step == 5 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 or step == 6 then
                  Teleporter()
               elseif step == 2 then
                  AI()
               elseif step == 4 then
                  Shield()
               elseif step == 5 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Planet Calamity")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wA Strange One") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Dip()
               elseif step == 2 then
                  Gala()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Dip()
               elseif step == 2 or step == 6 then
                  Gala()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3A Strange One")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wTasty Cakes") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 6 then
                  Teleporter()
               elseif step == 2 or step == 4 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 5 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 6 then
                  Teleporter()
               elseif step == 2 or step == 4 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 5 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Tasty Cakes")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wTaking Aim") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Taking Aim")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wBad Taste") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Dip()
               elseif step == 2 then
                  Giga()
               elseif step == 3 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Teleporter()
               elseif step == 1 then
                  Dip()
               elseif step == 2 then
                  Doc()
               elseif step == 3 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Bad Taste")
            end
            Teleporter()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wSolar Impact!") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 or step == 7 then
                  Gala()
               elseif step == 2 or step == 6 then
                  Meds()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Drone()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Shield()
               elseif step == 1 then
                  Gala()
               elseif step == 2 then
                  Meds()
               elseif step == 3 then
                  AI()
               elseif step == 4 then
                  Drone()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Solar Impact!")
            end
            Shield()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wJunk Punks") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Drone()
               elseif step == 2 then
                  Torp()
               elseif step == 3 then
                  AI()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  AI()
               elseif step == 1 then
                  Drone()
               elseif step == 2 then
                  Torp()
               elseif step == 3 then
                  AI()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Junk Punks")
            end
            AI()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wCryonite Crisis") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 9 then
                  Teleporter()
               elseif step == 1 or step == 3 then
                  Scan()
               elseif step == 2 then
                  Giga()
               elseif step == 4 or step == 5 then
                  AI()
               elseif step == 6 then
                  Shield()
               elseif step == 7 then
                  Gala()
               elseif step == 8 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 or step == 9 then
                  Teleporter()
               elseif step == 1 or step == 3 then
                  Scan()
               elseif step == 2 then
                  Giga()
               elseif step == 4 or step == 5 then
                  AI()
               elseif step == 6 then
                  Shield()
               elseif step == 7 then
                  Gala()
               elseif step == 8 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Cryonite Crisis")
            end
            Teleporter()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wSalvage Run") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 3 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Salvage Run")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wShip Rescue") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Drone()
               elseif step == 2 or step == 5 then
                  Teleporter()
               elseif step == 3 then
                  Scan()
               elseif step == 4 then
                  Meds()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Gala()
               elseif step == 1 then
                  Drone()
               elseif step == 2 or step == 5 then
                  Teleporter()
               elseif step == 3 then
                  Scan()
               elseif step == 4 then
                  Meds()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Ship Rescue")
            end
            Gala()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wSkeleton Crew") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Scan()
               elseif step == 2 then
                  AI()
               elseif step == 3 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Teleporter()
               elseif step == 1 then
                  Scan()
               elseif step == 2 then
                  AI()
               elseif step == 3 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Skeleton Crew")
            end
            Teleporter()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wGhost Ship") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Dip()
               elseif step == 4 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Dip()
               elseif step == 4 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Ghost Ship")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wPit o' Trouble") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 4 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 5 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 4 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 5 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Pit o' Trouble")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wClose Encounter") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 then
                  AI()
               elseif step == 2 or step == 3 then
                  Dip()
               elseif step == 4 then
                  Scan()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 5 then
                  AI()
               elseif step == 2 or step == 3 then
                  Dip()
               elseif step == 4 then
                  Scan()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Close Encounter")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wEscape Pod") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 6 then
                  Meds()
               elseif step == 1 then
                  Drone()
               elseif step == 4 or step == 7 then
                  Scan()
               elseif step == 2 then
                  Shield()
               elseif step == 3 or step == 8 then
                  Teleporter()
               elseif step == 5 then
                  Giga()
               elseif step == 9 then
                  Torp()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 or step == 6 then
                  Meds()
               elseif step == 1 then
                  Drone()
               elseif step == 4 or step == 7 then
                  Scan()
               elseif step == 2 then
                  Shield()
               elseif step == 3 or step == 8 then
                  Teleporter()
               elseif step == 5 then
                  Giga()
               elseif step == 9 then
                  Torp()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Escape Pod")
            end
            Meds()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wPrevent War") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Drone()
               elseif step == 2 then
                  Dip()
               elseif step == 3 then
                  Teleporter()
               elseif step == 4 then
                  Doc()
               elseif step == 5 then
                  Gala()
               elseif step == 6 then
                  Sup()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Shield()
               elseif step == 1 then
                  Drone()
               elseif step == 2 then
                  Dip()
               elseif step == 3 then
                  Teleporter()
               elseif step == 4 then
                  Doc()
               elseif step == 5 then
                  Gala()
               elseif step == 6 then
                  Sup()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Prevent War")
            end
            Shield()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wMining Colony Rescue") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Teleporter()
               elseif step == 2 then
                  Dip()
               elseif step == 3 then
                  Meds()
               elseif step == 4 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Teleporter()
               elseif step == 2 then
                  Dip()
               elseif step == 3 then
                  Meds()
               elseif step == 4 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Mining Colony Rescue")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wMining Colony Delivery") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 4 then
                  Sup()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 4 then
                  Sup()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Mining Colony Delivery")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`w(%w+) Duel") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Shield()
               elseif step == 2 or step == 4 then
                  Torp()
               elseif step == 3 then
                  AI()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Shield()
               elseif step == 2 or step == 4 then
                  Torp()
               elseif step == 3 then
                  AI()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3" .. var[1]:match("add_label_with_icon|big|`w(%w+) Duel") .. " Duel")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`wMining Colony Delivery") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Sup()
               elseif step == 4 then
                  Giga()
               elseif step == 5 then
                  Doc()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Sup()
               elseif step == 4 then
                  Giga()
               elseif step == 5 then
                  Doc()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3".. var[1]:match("add_label_with_icon|big|`w(%w.-) Extermination").. " Extermination")
            end
            Drone()
            return true
         end
      elseif var[1]:find("add_label_with_icon|big|`w(%w.-) Delivery") then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 4 then
                  Sup()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 5 then
                  Teleporter()
               elseif step == 2 then
                  Scan()
               elseif step == 3 then
                  Giga()
               elseif step == 4 then
                  Sup()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3".. var[1]:match("add_label_with_icon|big|`w(%w.-) Delivery").. " Delivery")
            end
            Drone()
            return true
         end
      elseif
         var[1]:find("add_label_with_icon|big|`wWho's There")
         or var[1]:find("add_label_with_icon|big|`wShe's Gonna Blow")
      then
         if var[1]:find("Skill Success") or var[1]:find("Skill Fail") then
            if var[1]:find("Skill Success") then
               step = step + 1
               if step == 1 then
                  Teleporter()
               elseif step == 2 or step == 4 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 5 then
                  Giga()
               end
            elseif var[1]:find("Skill Fail") then
               if step == 0 then
                  Drone()
               elseif step == 1 or step == 6 then
                  Teleporter()
               elseif step == 2 or step == 4 then
                  Scan()
               elseif step == 3 then
                  AI()
               elseif step == 5 then
                  Giga()
               end
            end
            return true
         else
            step = 0
            if Mission == 0 then
               if var[1]:find("|`wWho's There") then
                  OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3Who's There?")
               else
                  OnConsoleMessage("`0[ `3YoshiGT  `0] `9Mission : `3She's Gonna Blow!")
               end
            end
            Drone()
            return true
         end
      end
   elseif var[0] == "OnDialogRequest" and var[1]:find("Starship Helm") then
      SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|beginvoyage")
      return true
   elseif var[0] == "OnDialogRequest" and var[1]:find("It is a good day to flee!") then
      SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|failmission")
      OnConsoleMessage("`0[ `4fail `0]")
      return true
   elseif var[0] == "OnTalkBubble" and var[2]:find("You received") then
      return false
   elseif var[0] == "OnDialogRequest" and var[1]:find("The voyage continues!") then
      SendPacket(2, "action|dialog_return\ndialog_name|startopia\nbuttonClicked|finishmission")
      OnConsoleMessage("`0[ `2Success `0]")
      step = 0
      Mission = 0
      return true
   elseif var[0] == "OnDialogRequest" and var[1]:find("end_dialog|startopia") then
      return false
   end
   return false
end
AddCallback("startopia","OnVarlist", startopia)
end



function gemsx(type, packet)
    if packet == ("action|input\n|text|/gems") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9counting gems..")
        count = 0
        for _, obj in pairs(GetObjects()) do
        if obj.id == 112  then
        count = count + obj.count
        end
        end

        count = math.floor(count)

        var2 = {}
        var2[0] = "OnTextOverlay"
        var2[1] = "`9 gems in world is : "..count
        var2.netid = -1
        SendVarlist(var2)
    return true
    end
end
    
AddCallback("gemsx","OnPacket", gemsx)

settax_1 = 5

function settax(type, packet)
    if packet:find("action|input\n|text|/settax") then
        settax_main = packet:gsub("action|input\n|text|/settax", "")
            settax_1 = tonumber(settax_main)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9tax set to : `3"..settax_1.."%")
          return true
        end
    end

AddCallback("settax","OnPacket", settax)

function tax(type, packet)
    if packet:find("action|input\n|text|/tax") then
        tax_1_1 = packet:gsub("action|input\n|text|/tax", "")
            tax_1 = tonumber(tax_1_1)
            real_tax = settax_1 * ( tax_1 / 100 )
            real_tax = math.floor(real_tax)
            tax_1_1 = math.floor(tax_1_1)
            drop_tax = tax_1_1 - real_tax
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9amount to drop : `3"..tax_1_1 - real_tax)
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9amount to keep : `3"..real_tax)
            var2 = {}
            var2[0] = "OnTextOverlay"
            var2[1] = "     `3Tax calculator`0\n`9Amount taken : `3"..tax_1.."\n`9amount to drop : `3"..drop_tax.."\n`9amount to keep : `3"..real_tax
            var2.netid = -1
            SendVarlist(var2)
          return true
        end
    end

AddCallback("tax","OnPacket", tax)


set_spam_text = "Set your spam text and delay !"
set_spam_delay = 7
spamming = false
function setspam()
    if set_spam_delay > 2 then
        while spamming do
            SendPacket(2, "action|input\n|text|`"..math.random(1,9)..set_spam_text)
            Sleep(set_spam_delay * 1000)
        end
    elseif set_spam_delay <= 2 then
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9delay cant be less than 2 !")
    end
end

function auto_spam_stop(varlist)
    if varlist[0] == "OnConsoleMessage" and varlist[1]:find("Spam detected!") then
        spamming = false
        OnConsoleMessage("`4Spam is Detected `9Please wait for 5seconds before to chat")
        OnTextOverlay("`4Spam is Detected `9Please wait for 5 seconds before to chat")
        return true
    end
end
AddCallback("auto_spam_stop","OnVarlist", auto_spam_stop)

function set_spam_text(type, packet)
    if packet:find("action|input\n|text|/spamt ") then
        set_spam_text = packet:gsub("action|input\n|text|/spamt ", "")
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9spam text set to :`3 "..set_spam_text)
          return true
        end
    end
    
AddCallback("set_spam_text","OnPacket", set_spam_text)


function set_spam_delay1(type, packet)
    if packet:find("action|input\n|text|/spamd") then
        set_spam_delay = packet:gsub("action|input\n|text|/spamd", "")
            set_spam_delay = tonumber(set_spam_delay)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9spam delay set to : `3"..set_spam_delay.." `9Seconds ")
          return true
        end
    end

AddCallback("set_spam_delay1","OnPacket", set_spam_delay1)

function start_stop_spam(type, packet)
        if packet == ("action|input\n|text|//") then
            if spamming then
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9spam is `3off")
                spamming = false
               else
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9spam is `3on")
                spamming = true
            end
               RunThread(function()
                       setspam()
               end)
        return true
        end
    end
AddCallback("start_stop_spam","OnPacket", start_stop_spam)

function dropall(type, packet)
    if packet == ("action|input\n|text|/dropall") then
        RunThread(function()
            dropallxd()
        end)
    return true
    end
end
    
AddCallback("dropall","OnPacket", dropall)

function dropallxd()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9dropping all items..")
    for k,v in ipairs(GetInventory()) do
        SendPacket(2 ,"action|drop\n|itemID|"..v.id)
        SendPacket(2 ,"action|dialog_return\ndialog_name|drop_item\nitemID|"..v.id.."|\ncount|"..v.count)
        Sleep(50)
    end
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9`9dropped all items")
end

set_harvest_id = 243
set_harvest_delay = "100000"
harvesting = false
function setharvest()   
    while harvesting do
        for _, tile in pairs(GetTiles()) do
            if tile.fg == set_harvest_id then
                if tile.ready then
                    FindPath(tile.pos_x, tile.pos_y)
                    Sleep(set_harvest_delay)
                    pkt = {}
                    pkt.type = 3
                    pkt.int_data = 18
                    pkt.pos_x = GetLocal().pos_x
                    pkt.pos_y = GetLocal().pos_y
                    pkt.int_x = tile.pos_x
                    pkt.int_y = tile.pos_y
                    SendPacketRaw(pkt)
                end
            end
        end
    end
end

function set_harvest_id(type, packet)
    if packet:find("action|input\n|text|/harvestid") then
        set_harvest_id123 = packet:gsub("action|input\n|text|/harvestid", "")
            set_harvest_id123 = tonumber(set_harvest_id123)
            if (set_harvest_id123) then
                set_harvest_id = tonumber(set_harvest_id123)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9harvest id set to : `3"..GetIteminfo(set_harvest_id).name)
            return true
        end
    end
end

AddCallback("set_harvest_id","OnPacket", set_harvest_id)

function set_harvest_delay(type, packet)
    if packet:find("action|input\n|text|/harvestdelay") then
        set_harvest_delay123 = packet:gsub("action|input\n|text|/harvestdelay", "")
            set_harvest_delay123 = tonumber(set_harvest_delay123)
            if set_harvest_delay123 >= 150 then
            set_harvest_delay = tonumber(set_harvest_delay123)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9harvest delay set to : `3"..set_harvest_delay.." `9Mili-Seconds ")
                return true
            else
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9delay cant be less than 150 !")
            return true
        end
    end
end

AddCallback("set_harvest_delay","OnPacket", set_harvest_delay)

function start_stop_harvest(type, packet)
        if packet == ("action|input\n|text|/hv") then
            if harvesting then
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9harvest is `3off")
                harvesting = false
               else
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9harvest is `3on")
                harvesting = true
            end
               RunThread(function()
                       setharvest()
               end)
        return true
        end
    end
AddCallback("start_stop_harvest","OnPacket", start_stop_harvest)

function inv(type, packet)
    if packet == ("action|input\n|text|/inv") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9redcuing lag..")
        for _,player in pairs(GetPlayers()) do
            var2 = {}
            var2[0] = "OnSetClothing"
            var2[1] =  {0,0,0}
            var2[2] =  {0,0,0}
            var2[3] = {0,0,0}
            var2[4] = 2
            var2[5] =  {0, 0, 0}
            var2.netid = player.netid
            SendVarlist(var2)
        end
    return true
    end
end

AddCallback("inv","OnPacket", inv)

function weatherlol(type, packet)
    if packet == ("action|input\n|text|/weather") then
        x =  math.random(1,66)
        var = {}
        var[0] = "OnSetCurrentWeather"
        var[1] = x
        var.netid = -1
        SendVarlist(var)
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9changing weather value to : `3"..x)
    return true
    end
end

AddCallback("change_weather","OnPacket", weatherlol)

function guildxx(type, packet)
    if packet:find("action|input\n|text|/guild ") then
        guildxxid = packet:gsub("action|input\n|text|/guild ", "")
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9changing guild to `3" ..guildxxid)
            guildxxid = tonumber(guildxxid)
            var = {}
            var[0] = "OnGuildDataChanged"
            var[1] = 1
            var[2] = 1 
            var[3] = guildxxid
            var[4] = 0 -- 1 to 3 ( ge gc gl )
            var.netid = GetLocal().netid
            SendVarlist(var)
          return true
        end
      end

AddCallback("chnage_guild","OnPacket", guildxx)

function cahngenamexx(type, packet)
    if packet:find("action|input\n|text|/name ") then
        cahngenamexx1 = packet:gsub("action|input\n|text|/name ", "")
          cahnge_name = 0
          cahnge_name = cahngenamexx1

          OnConsoleMessage("`0[ `3YoshiGT  `0] `9name changed to `9"..cahnge_name.."")
          var = {}
          var[0] = "OnNameChanged"
          var[1] = cahnge_name
          var.netid = GetLocal().netid
          SendVarlist(var)
          return true
        end
      end
  
AddCallback("chnage_name","OnPacket", cahngenamexx)

function testmod2(type, packet)
if packet == ("action|input\n|text|/testmod") then
if casino_help_when_join == "1" then
ban_unacces_leave()
elseif casino_help_when_join == "2" then
unacces_leave()
elseif casino_help_when_join == "3" then
leave()
elseif casino_help_when_joinxd == "2" then
unacces_leave()
else 
OnConsoleMessage("`0[ `3YoshiGT  `0] `9this command is turned off")
end
return true
end
end
AddCallback("testmod2","OnPacket", testmod2)

function casino_help_when_join(type, packet)
    if packet:find("action|input\n|text|/safe ") then
        casino_help_when_join = packet:gsub("action|input\n|text|/safe ", "")
if casino_help_when_join == "1" then
        casino_help_when_joinx = "`3ban unacces leave"
    OnConsoleMessage("`0[ `3Yoshiro `0] `9Updated : `3"..casino_help_when_joinx)
        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- ban unacces leave
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9baning all players")
                    for _,player in pairs(GetPlayers()) do
                        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
                    end
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
    
        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- ban unacces leave
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9baning all players")
                    for _,player in pairs(GetPlayers()) do
                        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
                    end
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
end
if casino_help_when_join == "2" then
    casino_help_when_joinx = "`3unacces leave"
    OnConsoleMessage("`0[ `3Yoshiro `0] `9Updated : `3"..casino_help_when_joinx)

        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- unacces leave
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
    
        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- unacces leave
                    OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                    SendPacket(2, "action|input\n|text|/unaccess")
                    SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                    SendPacket(3, "action|quit_to_exit")
                    SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
                    
end
if casino_help_when_join == "3" then
        casino_help_when_joinx = "`3leave"
    OnConsoleMessage("`0[ `3Yoshiro `0] `9Updated : `3"..casino_help_when_joinx)

        function Guardian(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 276 then
                    Guardianvar = {}
                    Guardianvar[0] = "OnAddNotification"
                    Guardianvar[1] = "interface/atomic_button.rttex"
                    Guardianvar[2] = "`#@Guardian `4Just joined the world."
                    Guardianvar[3] = "audio/hub_open.wav"
                    Guardianvar[4] = 0
                    Guardianvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Guardian `4Just joined the world.")
                    SendVarlist(Guardianvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- leave
                    SendPacket(3, "action|quit_to_exit")
                end
            end
        end
        AddCallback("Guardian","OnVarlist", Guardian)
    
        function Moderator(v)
            if v[0] == "OnGuildDataChanged" then
                if v[3] == 5956 then
                    Moderatorvar = {}
                    Moderatorvar[0] = "OnAddNotification"
                    Moderatorvar[1] = "interface/atomic_button.rttex"
                    Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                    Moderatorvar[3] = "audio/hub_open.wav"
                    Moderatorvar[4] = 0
                    Moderatorvar.netid = -1
                    OnConsoleMessage("`0[ `3Yoshiro `0] `#@Moderator `4Just joined the world.")
                    SendVarlist(Moderatorvar)
                    var2 = {}
                    var2[0] = "OnTextOverlay"
                    var2[1] = "`9Collecting"
                    var2.netid = -1
                    SendVarlist(var2)
                    function collectItems(range, ispos)
                        if not ispos then
                            range = (range or 10)*32
                        end
                    
                        pkt = {}
                        pkt.type = 11
                        for _, obj in pairs(GetObjects()) do
                            posx = math.abs(GetLocal().pos_x-obj.pos_x)
                            posy = math.abs(GetLocal().pos_y-obj.pos_y)
                    
                            if posx<range and posy<range then
                                pkt.int_data = obj.oid
                                pkt.pos_x = obj.pos_x
                                pkt.pos_y = obj.pos_y
                                SendPacketRaw(pkt)
                            end
                        end
                    end
                    collectItems()
                    -- leave
                    SendPacket(3, "action|quit_to_exit")
                end
            end
        end
        AddCallback("Moderator","OnVarlist", Moderator)
end
    if casino_help_when_join == "off" then
        OnConsoleMessage("`0[ `3Yoshiro `0] `9Safe mode is turned off ")
        RemoveCallback("Moderator")
        RemoveCallback("Guardian")
    end
return true
end
end
AddCallback("casino_help_when_join","OnPacket", casino_help_when_join)

function unaccmod()
    function Moderator(v)
        if v[0] == "OnGuildDataChanged" then
            if v[3] == 5956 then
                Moderatorvar = {}
                Moderatorvar[0] = "OnAddNotification"
                Moderatorvar[1] = "interface/atomic_button.rttex"
                Moderatorvar[2] = "`#@Moderator `4Just joined the world."
                Moderatorvar[3] = "audio/hub_open.wav"
                Moderatorvar[4] = 0
                Moderatorvar.netid = -1
                OnConsoleMessage("`0[ `3Yoshiro `0] `#@Moderator `4Just joined the world.")
                SendVarlist(Moderatorvar)
                var2 = {}
                var2[0] = "OnTextOverlay"
                var2[1] = "`9Collecting"
                var2.netid = -1
                SendVarlist(var2)
                function collectItems(range, ispos)
                    if not ispos then
                        range = (range or 10)*32
                    end
                
                    pkt = {}
                    pkt.type = 11
                    for _, obj in pairs(GetObjects()) do
                        posx = math.abs(GetLocal().pos_x-obj.pos_x)
                        posy = math.abs(GetLocal().pos_y-obj.pos_y)
                
                        if posx<range and posy<range then
                            pkt.int_data = obj.oid
                            pkt.pos_x = obj.pos_x
                            pkt.pos_y = obj.pos_y
                            SendPacketRaw(pkt)
                        end
                    end
                end
                collectItems()
                -- unacces leave
                OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                SendPacket(2, "action|input\n|text|/unaccess")
                SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                SendPacket(3, "action|quit_to_exit")
                SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
            end
        end
    end
    AddCallback("Moderator","OnVarlist", Moderator)

    function Guardian(v)
        if v[0] == "OnGuildDataChanged" then
            if v[3] == 276 then
                Guardianvar = {}
                Guardianvar[0] = "OnAddNotification"
                Guardianvar[1] = "interface/atomic_button.rttex"
                Guardianvar[2] = "`#@Guardian `4Just joined the world."
                Guardianvar[3] = "audio/hub_open.wav"
                Guardianvar[4] = 0
                Guardianvar.netid = -1
                OnConsoleMessage("`0[ `3Yoshiro `0] `#@Guardian `4Just joined the world.")
                SendVarlist(Guardianvar)
                var2 = {}
                var2[0] = "OnTextOverlay"
                var2[1] = "`9Collecting"
                var2.netid = -1
                SendVarlist(var2)
                function collectItems(range, ispos)
                    if not ispos then
                        range = (range or 10)*32
                    end
                
                    pkt = {}
                    pkt.type = 11
                    for _, obj in pairs(GetObjects()) do
                        posx = math.abs(GetLocal().pos_x-obj.pos_x)
                        posy = math.abs(GetLocal().pos_y-obj.pos_y)
                
                        if posx<range and posy<range then
                            pkt.int_data = obj.oid
                            pkt.pos_x = obj.pos_x
                            pkt.pos_y = obj.pos_y
                            SendPacketRaw(pkt)
                        end
                    end
                end
                collectItems()
                -- unacces leave
                OnConsoleMessage("`0[ `3Yoshiro `0] `9unaccessing")
                SendPacket(2, "action|input\n|text|/unaccess")
                SendPacket(2, "action|dialog_return\ndialog_name|unaccess")
                SendPacket(3, "action|quit_to_exit")
                SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
            end
        end
    end
    AddCallback("Guardian","OnVarlist", Guardian)
end


function save(type, packet)
    if packet == ("action|input\n|text|/save") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Warping to `9Save World")
    SendPacket(3, "action|join_request\nname|"..setsave_world.."\ninvitedWorld|0")
    return true
    end
end
    
AddCallback("warp_save","OnPacket", save)

set_blink_delay = 50
blinking = false
function setblink()
    while blinking do
        SendPacket(2, "action|setSkin\ncolor|2527912447")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|3370516479")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|1685231359")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2527912447")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2190853119")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|1348237567")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2864971775")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|1348237567")
        Sleep(set_blink_delay * 1)
        --
        SendPacket(2, "action|setSkin\ncolor|2190853119")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|1685231359")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2022356223")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|3033464831")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2864971775")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|2527912447")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|3370516479")
        Sleep(set_blink_delay * 1)
        SendPacket(2, "action|setSkin\ncolor|1348237567")
        Sleep(set_blink_delay * 1)
    end
end

function blink_main(type, packet)
        if packet == ("action|input\n|text|/blink") then
            if blinking then
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9blink mode is `3off")
                blinking = false
               else 
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9blink mode is `3on")
                blinking = true
               end
               RunThread(function()
                       setblink()
               end)
        return true
        end
    end
        
AddCallback("blink_main","OnPacket", blink_main)


function set_blink_delay1(type, packet)
    if packet:find("action|input\n|text|/blinkd") then
        set_blink_delay = packet:gsub("action|input\n|text|/blinkd", "")
            set_blink_delay = tonumber(set_blink_delay)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9blink delay set to : `3"..set_blink_delay.." `9MS ")
          return true
        end
    end

AddCallback("set_blink_delay1","OnPacket", set_blink_delay1)


NO_PICKUP = false

function extactoreh1(type, packet)
    if packet:find("action|input\n|text|/pickup ") then
        pick_up_id = packet:gsub("action|input\n|text|/pickup ", "")
                pick_up_id = tonumber(pick_up_id)
                OnConsoleMessage("`0[ `3YoshiGT  `0] `9only picking `3"..pick_up_id)
                ID_TBL={
                    [pick_up_id]=1,
                    }
                    
                NO_PICKUP = true
                
                function pickup12(varlist)
                    if varlist.type==11 then
                    for _,v in pairs(GetObjects()) do
                    if NO_PICKUP then
                    if v.oid==varlist.int_data and not ID_TBL[math.floor(v.id)] then
                    return true
                    end
                    else
                    if v.oid==varlist.int_data and ID_TBL[math.floor(v.id)] then
                    return true
                    end
                    end
                    end
                    end
                    end
                AddCallback("pickup12", "OnRawPacket", pickup12)
          return true
            end
        end

AddCallback("extactoreh1","OnPacket", extactoreh1)

nopickup = false

function no_pickup(type, packet)
    if packet == ("action|input\n|text|/nopickup") then
        if nopickup then
            nopickup = false
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9No pick-up turned `3off")
            RemoveCallback("pickup12")
        return true
        else
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9No pick-up turned `3on")

ID_TBL={
    [0]=1,
    }
    
    nopickup = true

function pickup12(varlist)
    if varlist.type==11 then
    for _,v in pairs(GetObjects()) do
    if nopickup then
    if v.oid==varlist.int_data and not ID_TBL[math.floor(v.id)] then
    return true
    end
    else
    if v.oid==varlist.int_data and ID_TBL[math.floor(v.id)] then
    return true
    end
    end
    end
    end
    end
AddCallback("pickup12", "OnRawPacket", pickup12)

        return true
    end
end
end
AddCallback("no_pickup","OnPacket", no_pickup)

function host(type, packet)
    if packet == ("action|input\n|text|/host") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Warping to `9Host World")
    SendPacket(3, "action|join_request\nname|"..sethost_world1.."\ninvitedWorld|0")
    Sleep(200)
    OnTextOverlay("`2 Reminder Turn On Your Auto Unacces or /safe 2")
    return true
    end
end
    
AddCallback("warp_host","OnPacket", host)

collect_pos = {{x_pos1, y_pos1}, {x_pos2, y_pos2}, {x_pos3, y_pos3}, {x_pos4, y_pos4}}

function collect_wls(type, packet)
    if packet == ("action|input\n|text|/tp") or packet == ("action|input\n|text|/.") then
        RunThread(function()
            autocollect_thread()
           Sleep(100)
           for _,item in pairs(GetInventory()) do
            if item.id == 242 then
                if item.count >= 100 then
                    local packet = {}
                    packet.type = 10
                    packet.int_data = 242
                    SendPacketRaw(packet)
                end
            end
        end
        end)
        return true
    end
end

AddCallback("collect_pos","OnPacket", collect_wls)

function autocollect_thread()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9Collecting")
    wl_before = math.floor(GetItemCount(242))
    dl_before = math.floor(GetItemCount(1796))
    Possessions = {{x_pos1, y_pos1}, {x_pos2, y_pos2}, {x_pos3, y_pos3}, {x_pos4, y_pos4}}
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos1 * 32 + 16, y_pos1 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos2 * 32 + 16, y_pos2 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos3 * 32 + 16, y_pos3 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    var = {}
    var[0] = "OnParticleEffect"
    var[1] = 88
    var[2] = { x_pos4 * 32 + 16, y_pos4 * 32 + 16 }
    var[3] = 0
    var[4] = 0
    var.netid = -1
    SendVarlist(var)
    SendVarlist(var)
    function collect(obj)   
        pkt = {}
        pkt.type = 11
        pkt.int_data = obj.oid
        pkt.pos_x = obj.pos_x
        pkt.pos_y = obj.pos_y
        SendPacketRaw(pkt)
    end
    
    for _, v in pairs(GetObjects()) do
    for __, customtile in pairs(Possessions) do
    if (v.pos_x)//32 == customtile[1] and (v.pos_y )//32 == customtile[2] then
    collect(v)
    break 
    end
    end
    end

    for _, v in pairs(GetObjects()) do
    for __, customtile in pairs(Possessions) do
    if (v.pos_x)//32 - 1 == customtile[1] and (v.pos_y )//32 == customtile[2] then
    collect(v)
    break 
    end
    end
    end 

    for _, v in pairs(GetObjects()) do
    for __, customtile in pairs(Possessions) do
    if (v.pos_x)//32 + 1 == customtile[1] and (v.pos_y )//32 == customtile[2] then
    collect(v)
    break 
    end
    end
    end

    Sleep(1300)

    wl_after = math.floor(GetItemCount(242))
    dl_after = math.floor(GetItemCount(1796))
    
    final_wl = wl_after - wl_before
    final_dl = dl_after - dl_before

    tax_dl = final_dl * 100
    tax_wl = final_wl

    tax_1_1 = tax_dl + tax_wl
    tax_1 = tonumber(tax_1_1)
    real_tax = settax_1 * ( tax_1 / 100 )
    real_tax = math.floor(real_tax)
    tax_1_1 = math.floor(tax_1_1)
    drop_tax = tax_1_1 - real_tax
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9amount to drop : `3"..tax_1_1 - real_tax)
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9amount to keep : `3"..real_tax)
    OnTextOverlay("`9you collected : `2 "..final_wl.." `9wls "..final_dl.." `9dls Drop: `2"..tax_1_1 - real_tax)
end

function pullall(type, packet)
    if packet == ("action|input\n|text|/pullall") then
        RunThread(function()
            pullallthread()
    end)
    return true
    end
end
    
AddCallback("pullall","OnPacket", pullall)

function pullallthread()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9pulling all players")
    for _,player in pairs(GetPlayers()) do
        SendPacket(2,  "action|input\n|text|/pull " .. player.name:sub(3, -3))
    end
end


function banall(type, packet)
    if packet == ("action|input\n|text|/banall") then
        RunThread(function()
            banallthread()
    end)
    return true
    end
end
    
AddCallback("banall","OnPacket", banall)

function banallthread()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9baning all players")
    for _,player in pairs(GetPlayers()) do
        SendPacket(2,  "action|input\n|text|/ban " .. player.name:sub(3, -3))
    end
end

function kickall(type, packet)
    if packet == ("action|input\n|text|/kickall") then
        RunThread(function()
            kickallthread()
    end)
    return true
    end
end
    
AddCallback("kickall","OnPacket", kickall)

function kickallthread()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9kicking all players")
    for _,player in pairs(GetPlayers()) do
        SendPacket(2,  "action|input\n|text|/kick " .. player.name:sub(3, -3))
    end
end

function tradeall(type, packet)
    if packet == ("action|input\n|text|/tradeall") then
        RunThread(function()
            tradeallthread()
    end)
    return true
    end
end
    
AddCallback("tradeall","OnPacket", tradeall)

function tradeallthread()
    OnConsoleMessage("`0[ `3YoshiGT  `0] `9trading all players")
    for _,player in pairs(GetPlayers()) do
        SendPacket(2,  "action|input\n|text|/trade " .. player.name:sub(3, -3))
    end
end


function ping(type, packet)
    if packet == ("action|input\n|text|/ping") then
        if GetPing() > 150 then
            color = "`9"
            end
            if GetPing() > 300 then
            color = "`4"
            end
            if GetPing() < 150 then
            color = "`2"
            end
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9Your ping is : "..color..""..math.floor((GetPing())))
    return true
    end
end
AddCallback("ping","OnPacket", ping)


function hidenname(type, packet)
    if packet == ("action|input\n|text|/hide") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9hiding all players names")
        for _,player in pairs(GetPlayers()) do
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnNameChanged"
            var[1] = "`b[ `4HIDDEN `b]"
            var.netid = player.netid
            SendVarlist(var)
        end
    return true
    end
end
    
AddCallback("hide_name","OnPacket", hidenname)

titlexd = "none"

function title1(type, packet)
    if packet == ("action|input\n|text|/g4g") then
        titlexd = "g4g"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DONOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|donor"
            var.netid = GetLocal().netid
            SendVarlist(var)
    return true
    end
end
    
AddCallback("title_1","OnPacket", title1)

function title2(type, packet)
    if packet == ("action|input\n|text|/master") then
        titlexd = "master"
            OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3MASTED `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|master"
            var.netid = GetLocal().netid
            SendVarlist(var)
    return true
    end
end
    
AddCallback("title_2","OnPacket", title2)

function title3(type, packet)
    if packet == ("action|input\n|text|/doctor") then
        titlexd = "doctor"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3DOCTOR `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            GetLocal().name = "Dr."..GetLocal().name
             var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
    return true
    end
end
    
AddCallback("title_3","OnPacket", title3)

function title4(type, packet)
    if packet == ("action|input\n|text|/maxlevel") then
        titlexd = "maxlevel"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3MAX LEVEL `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|maxLevel"
            var.netid = GetLocal().netid
            SendVarlist(var)
    return true
    end
end
    
AddCallback("title_4","OnPacket", title4)

function title5(type, packet)
    if packet == ("action|input\n|text|/oflegend") or packet == ("action|input\n|text|/legend") then
        titlexd = "legend"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `3OF LEGEND `9enabled !")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
            var = {}
            var[0] = "OnCountryState"
            var[1] = "jo|doctor"
            var.netid = GetLocal().netid
            SendVarlist(var)
            GetLocal().name = GetLocal().name.." of Legend``"
    return true
    end
end

AddCallback("title_5","OnPacket", title5)

function title6(type, packet)
    if packet == ("action|input\n|text|/modr") then
        titlexd = "mods"
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9title effect `2MODERATOR `9enabled !")
        GetLocal().name = GetLocal().name:removeColors()
        GetLocal().name = GetLocal().name:gsub(" of Legend", "")
        GetLocal().name = GetLocal().name:gsub("Dr.", "")
        GetLocal().name = "`#@" ..GetLocal().name
            var = {}
            var[0] = "OnGuildDataChanged"
            var[1] = "ph|mods"
            var[2] = 0
            var[3] = 5956
            var.netid = GetLocal().netid
            SendVarlist(var)
    return true
    end
end
AddCallback("title_6","OnPacket", title6)

function title7(type, packet)
    if packet == ("action|input\n|text|/title reset") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9 removing all titles")
            GetLocal().name = GetLocal().name:removeColors()
            GetLocal().name = GetLocal().name:gsub(" of Legend", "")
            GetLocal().name = GetLocal().name:gsub("Dr.", "")
        var = {}
        var[0] = "OnCountryState"
        var[1] = "jo|"
        var.netid = GetLocal().netid
        SendVarlist(var)
    return true
    end
end
    
AddCallback("title_reset","OnPacket", title7)


function fc(type, packet)
    if packet == ("action|input\n|text|/fc") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Closing proxy.")
        RemoveCallbacks()
    return true
    end
end
    
AddCallback("fc","OnPacket", fc)

-- defult settibgs

function string.removeColors(varlist)
    return varlist:gsub("`.", "")
end

function qq_function(num)
    return num % 10
end

function reme_function(num)
    local sum = 0
    while num > 0 do
      sum = sum + (num % 10)
      num = math.floor(num / 10)
    end
    return sum
end


function all_spin(type, packet)
    if packet == ("action|input\n|text|/spin all") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Spin mode set to `3QQ & REME")
function Spin_checker(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local x = varlist[2]:removeColors()
    local x2 = x:match("spun the wheel and got (%d+)")
    if varlist[1] == -1 then -- local player
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = GetLocal().name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
        var.netid = GetLocal().netid
        SendVarlist(var)
    else -- other players
      for _,player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          local var = {}
          var[0] = "OnNameChanged"
          var[1] = player.name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
          var.netid = player.netid
          SendVarlist(var)
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            text = ""
            if varlist[2]:find("CP:") then
              start, final = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
            else
              x = varlist[2]:removeColors()
              x2 = x:match("spun the wheel and got (%d+)")
              x2 = tonumber(x2)
              qq_mode = qq_function(x2)
              reme_mode2 = reme_function(x2)
              reme_mode = qq_function(reme_mode2)
              var = {}
              var[0] = "OnTalkBubble"
              var[1] = varlist[1]
              var[2] = "`0[ `2REAL  `0] `9CSN : `3"..x2.." `0/ `9QEME : `3"..qq_mode.." `0/ `9REME : `3"..reme_mode
              var[3] = -1
              var.netid = -1
              SendVarlist(var)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end
AddCallback("spin name", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("all_spin","OnPacket", all_spin)

function qq_spin(type, packet)
    if packet == ("action|input\n|text|/spin qq") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Spin mode set to `3QQ")
function Spin_checker(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local x = varlist[2]:removeColors()
    local x2 = x:match("spun the wheel and got (%d+)")
    if varlist[1] == -1 then -- local player
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = GetLocal().name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
        var.netid = GetLocal().netid
        SendVarlist(var)
    else -- other players
      for _,player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          local var = {}
          var[0] = "OnNameChanged"
          var[1] = player.name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
          var.netid = player.netid
          SendVarlist(var)
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            text = ""
            if varlist[2]:find("CP:") then
              start, final = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
            else
              x = varlist[2]:removeColors()
              x2 = x:match("spun the wheel and got (%d+)")
              x2 = tonumber(x2)
              qq_mode = qq_function(x2)
              reme_mode2 = reme_function(x2)
              reme_mode = qq_function(reme_mode2)
              var = {}
              var[0] = "OnTalkBubble"
              var[1] = varlist[1]
              var[2] = "`0[ `2REAL `0]"..varlist[2].." `9QQ : `3"..qq_mode
              var[3] = -1
              var.netid = -1
              SendVarlist(var)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end
AddCallback("spin name", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("qq_spin","OnPacket", qq_spin)

function reme_spin(type, packet)
    if packet == ("action|input\n|text|/spin reme") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Spin mode set to `3REME")
function Spin_checker(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local x = varlist[2]:removeColors()
    local x2 = x:match("spun the wheel and got (%d+)")
    if varlist[1] == -1 then -- local player
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = GetLocal().name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
        var.netid = GetLocal().netid
        SendVarlist(var)
    else -- other players
      for _,player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          local var = {}
          var[0] = "OnNameChanged"
          var[1] = player.name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
          var.netid = player.netid
          SendVarlist(var)
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            text = ""
            if varlist[2]:find("CP:") then
              start, final = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
            else
              x = varlist[2]:removeColors()
              x2 = x:match("spun the wheel and got (%d+)")
              x2 = tonumber(x2)
              qq_mode = qq_function(x2)
              reme_mode2 = reme_function(x2)
              reme_mode = qq_function(reme_mode2)
              var = {}
              var[0] = "OnTalkBubble"
              var[1] = varlist[1]
              var[2] = varlist[2].." `9REME : `3"..reme_mode
              var[3] = -1
              var.netid = -1
              SendVarlist(var)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end
AddCallback("spin name", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("reme_spin","OnPacket", reme_spin)

function Spin_checker(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local x = varlist[2]:removeColors()
    local x2 = x:match("spun the wheel and got (%d+)")
    if varlist[1] == -1 then -- local player
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = GetLocal().name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
        var.netid = GetLocal().netid
        SendVarlist(var)
    else -- other players
      for _,player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          local var = {}
          var[0] = "OnNameChanged"
          var[1] = player.name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
          var.netid = player.netid
          SendVarlist(var)
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            text = ""
            if varlist[2]:find("CP:") then
              start, final = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
            else
              x = varlist[2]:removeColors()
              x2 = x:match("spun the wheel and got (%d+)")
              x2 = tonumber(x2)
              qq_mode = qq_function(x2)
              reme_mode2 = reme_function(x2)
              reme_mode = qq_function(reme_mode2)
              var = {}
              var[0] = "OnTalkBubble"
              var[1] = varlist[1]
              var[2] = "`0[ `2REAL `0] "..varlist[2]
              var[3] = -1
              var.netid = -1
              SendVarlist(var)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end
AddCallback("spin name", "OnVarlist", Spin_checker)


function check_spin(type, packet)
    if packet == ("action|input\n|text|/spin check") then
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Spin mode set to `3Checker")
function Spin_checker(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local x = varlist[2]:removeColors()
    local x2 = x:match("spun the wheel and got (%d+)")
    if varlist[1] == -1 then -- local player
        local var = {}
        var[0] = "OnNameChanged"
        var[1] = GetLocal().name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
        var.netid = GetLocal().netid
        SendVarlist(var)
    else -- other players
      for _,player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          local var = {}
          var[0] = "OnNameChanged"
          var[1] = player.name:gsub("`b%[`4%d?%d`b%]", "").."`b[`4"..x2.."`b]"
          var.netid = player.netid
          SendVarlist(var)
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            text = ""
            if varlist[2]:find("CP:") then
              start, final = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], final + 1)
            else
              x = varlist[2]:removeColors()
              x2 = x:match("spun the wheel and got (%d+)")
              x2 = tonumber(x2)
              qq_mode = qq_function(x2)
              reme_mode2 = reme_function(x2)
              reme_mode = qq_function(reme_mode2)
              var = {}
              var[0] = "OnTalkBubble"
              var[1] = varlist[1]
              var[2] = "`0[ `2REAL `0] "..varlist[2]
              var[3] = -1
              var.netid = -1
              SendVarlist(var)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end
AddCallback("spin name", "OnVarlist", Spin_checker)
return true
end
end

AddCallback("check_spin","OnPacket", check_spin)


function check_login(varlist)
    if varlist[0] == "OnConsoleMessage" and varlist[1]:find("Welcome back,") then
        wl_balance = math.floor(GetItemCount(242))
        dl_balance = math.floor(GetItemCount(1796))
        bgl_balance = math.floor(GetItemCount(7188))
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9Player Authentication `2Successful.")
        OnConsoleMessage("`0[ `3YoshiGT  `0] `9WL : `3"..wl_balance.." `1& `9DL : `3"..dl_balance.." `1& `9BGL : `3"..bgl_balance)
        return true
    end
end
AddCallback("check_login","OnVarlist", check_login)


function auto_acces_main(varlist)
    if varlist[0] == "OnConsoleMessage" and  varlist[1]:find("wants to add you to a") then
    function hide_acces1(varlist)
        if varlist[0] == "OnDialogRequest" and  varlist[1]:find("end_dialog|acceptaccess|No|Yes|") then
            return true
        end
    end
    AddCallback("hide_acces1","OnVarlist", hide_acces1)
      
    function hide_acces2(varlist)
      if varlist[0] == "OnDialogRequest" and varlist[1]:find("add_button|acceptlock|") then
      return true
      end
    end
    AddCallback("hide_acces2","OnVarlist", hide_acces2)
      
  netid = GetLocal().netid
  pkt = "action|wrench\n|netid|"..netid
  pkt2 = "action|dialog_return\ndialog_name|popup\nnetID|"..netid.."|\nbuttonClicked|acceptlock"
  pkt3 = "action|dialog_return\ndialog_name|acceptaccess"
  SendPacket(2,pkt)
  SendPacket(2,pkt2)
  SendPacket(2,pkt3)
  return true
  end
  end
AddCallback("auto_acces_main","OnVarlist", auto_acces_main)

function chnage_bgl(varlist)
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("Dial a number to call somebody in Growtopia") then
        SendPacket(2, "action|dialog_return\ndialog_name|phonecall\ntilex|"..varlist[1]:match("embed_data|tilex|(%d+)").."|\ntiley|"..varlist[1]:match("embed_data|tiley|(%d+)").."|\nnum|-34|\nbuttonClicked|chc0")
        return true
    end
end
AddCallback("chnage_bgl", "OnVarlist", chnage_bgl)

function chnage_bgl2(varlist)
    if varlist[0] == "OnDialogRequest" and varlist[1]:find("end_dialog|phonecall|Hang Up||") then
        return true
    end
end
AddCallback("chnage_bgl2", "OnVarlist", chnage_bgl2)

