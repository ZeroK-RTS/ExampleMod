
function widget:GetInfo()
	return {
		name      = "Action adder widget.",
		desc      = "Adds an action to demonstrate that doing so is broken.",
		author    = "GoogleFrog",
		date      = "March 2014",
		license   = "GNU GPL, v2 or later",
		layer     = 0,
		handler   = true,
		enabled   = true
	}
end

local function ActionFunc()
	Spring.Echo("ActionFunc called")
end

function widget:Initialize()
	Spring.Echo("Adding ActionFunc")
	local tSuccess, pSuccess, RSuccess, rSuccess = widgetHandler.actionHandler:AddAction(widget, "testcommand", ActionFunc, nil, 'tpRr')
	Spring.Echo(tSuccess)
	Spring.Echo(pSuccess)
	Spring.Echo(RSuccess)
	Spring.Echo(rSuccess)
	Spring.SendCommands("bind s testcommand")
	Spring.SendCommands("bind d showmetalmap")
end