local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "eb7ba93e7c13440c81c413ffb95e0d44"
local falseData = "1fe4d7a023ec4a75af1d80590fe6cc5c"

KeyGuardLibrary.Set({
	publicToken = "a9389132077740de915b96812d00be3c",
	privateToken = "5df313d951524e079bfaa70534dd6eda",
	trueData = trueData,
	falseData = falseData,
})

local getkey = KeyGuardLibrary.getLink()

local response = KeyGuardLibrary.validatePremiumKey(key)

if response == trueData then
    loadstring(
        game:HttpGet(
            'https://raw.githubusercontent.com/slotsuntiliwin/Project-Delta-Private-V2/refs/heads/main/Project%20Delta%20Private%20V2.lua'
        )
    )()
else
    game.StarterGui:SetCore('SendNotification', {
        Title = 'Key Failed!',
        Text = 'Please Check Key And Try Again',
        Time = 4,
    })
end

