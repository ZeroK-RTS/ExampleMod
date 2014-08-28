
function gadget:GetInfo()
  return {
    name      = "Test",
    desc      = "Tests Stuff",
    author    = "Google Frog",
    date      = "12 Sep 2011",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

if (not gadgetHandler:IsSyncedCode()) then
    return
end

Spring.Echo("Test Loaded")

function gadget:AllowWeaponTarget(attackerID, targetID, attackerWeaponNum, attackerWeaponDefID, defPriority)
	Spring.Echo("AllowWeaponTarget")
	return true
end

function gadget:UnitCreated()
	Spring.Echo("UnitCreated")
	return true
end