-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Read Param",
    desc      = "Reads a unit rules param.",
    author    = "GoogleFrog",
    date      = "2012-06-15",
    license   = "GNU GPL, v2 or later",
    layer     = 5,
    enabled   = false,
  }
end

----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

function widget:GameFrame(f)
	if f%32 == 0 then
		for _,unitID in ipairs(Spring.GetAllUnits()) do
			local param = Spring.GetUnitRulesParam(unitID,"testparam")
			if param then
				local x,y,z = Spring.GetUnitPosition(unitID)
				--Spring.MarkerAddPoint(x,y,z,param)
			end
		end
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
