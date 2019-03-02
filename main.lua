local ADDON_NAME = "DoYouNeedThatAlex"
local events = {}

function events:CHAT_MSG_LOOT(...)
	for key, value in arg do
		print("[" .. key .. "] : " .. value)
	end
end

-- Body that is actually ran
local addon_frame = CreateFrame(ADDON_NAME)
addon_frame:RegisterEvent("CHAT_MSG_LOOT")
addon_frame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...)
end)
print(ADDON_NAME .. " loaded")