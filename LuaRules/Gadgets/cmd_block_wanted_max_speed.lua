function gadget:GetInfo()
  return {
    name      = "Block cmd set wanted max speed.",
    desc      = "Blocks this command for a certain unit.",
    author    = "Google Frog",
    date      = "27 Nov 2014",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true
  }
end

if not gadgetHandler:IsSyncedCode() then
	return
end

local blockUnitID = UnitDefNames["blockedtank"].id

function gadget:AllowCommand(unitID, unitDefID, teamID, cmdID, cmdParams, cmdOptions)
	if cmdID == 70 and blockUnitID == unitDefID then
		return false
	end
	return true
end