local KeyGuardLibrary =
    loadstring(game:HttpGet('https://cdn.keyguardian.org/library/v1.0.0.lua'))()
local trueData = 'eed840f486df48b0b63de21c545b08ee'
local falseData = '025b09a19b7e4b818f32b187690a3003'

KeyGuardLibrary.Set({
    publicToken = 'a9389132077740de915b96812d00be3c',
    privateToken = '641d5eef305f45cf9af2f91c53b36f85',
    trueData = trueData,
    falseData = falseData,
})

local getkey = KeyGuardLibrary.getLink()

local response = KeyGuardLibrary.validatePremiumKey(Private_Key)

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

local Private_Key = 'test'
