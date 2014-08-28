local building, platform, nanopoint = piece "building", piece "platform", piece "nanopoint"
-- declares all the pieces we'll be using.

function script.Create()
	Spring.SetUnitRulesParam(unitID,"testparam",1, {inlos = true})
    return 0
end

function script.QueryBuildInfo() return platform end
-- When building a unit in this building, put it on the "platform" piece.

function script.QueryNanoPiece() return nanopoint end
-- If using nanospray, make the nanospray appear from the "nanopoint" piece (the sphere). This won't be used here, but meh.

function script.Activate()
    -- Begin building! - open the yard to let vehicles move around in the building, start building, and repel any other units in the way.
	SetUnitValue(COB.YARD_OPEN, 1)
	SetUnitValue(COB.INBUILDSTANCE, 1)
	SetUnitValue(COB.BUGGER_OFF, 1)
    -- This uses a lua way of setting old COB constants. There's probably a better lua way of doing this directly, but I don't know what it is. This method seems to work fine, though.
	return 1
end


function script.Deactivate()
    -- End building!
	SetUnitValue(COB.YARD_OPEN, 0)
	SetUnitValue(COB.INBUILDSTANCE, 0)
	SetUnitValue(COB.BUGGER_OFF, 0)
	return 0
end


--Actually, I'm not sure if Activate() is called when the base is finished, rather than when it starts building anything. I'll need to check that.

function script.Killed(recentDamage, maxHealth)
	return 0
end
