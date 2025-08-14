local KeyGuardLibrary =
    loadstring(game:HttpGet('https://cdn.keyguardian.org/library/v1.0.0.lua'))()
local trueData = '63bde6292e674b0b8567a2520a58d484'
local falseData = '147cd9e8051a4b0cb97a7f0e08c2b533'

KeyGuardLibrary.Set({
    publicToken = 'a9389132077740de915b96812d00be3c',
    privateToken = '641d5eef305f45cf9af2f91c53b36f85',
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
        Time = 3,
    })
end





