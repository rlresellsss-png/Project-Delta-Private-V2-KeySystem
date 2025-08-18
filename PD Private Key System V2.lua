local KeyGuardLibrary =
    loadstring(game:HttpGet('https://cdn.keyguardian.org/library/v1.0.0.lua'))()
local trueData = 'ab8cc9af1e4941d090142f9623388905'
local falseData = '7145273a7bac4c00b8e2535e47155626'

KeyGuardLibrary.Set({
    publicToken = 'a9389132077740de915b96812d00be3c',
    privateToken = '5df313d951524e079bfaa70534dd6eda',
    trueData = trueData,
    falseData = falseData,
})

local Fluent = loadstring(
    game:HttpGet(
        'https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua'
    )
)()
local Key = ''

local Window = Fluent:CreateWindow({
    Title = 'Project Delta Private Script - Key System',
    SubTitle = 'by - breakneckv09',
    TabWidth = 182,
    Size = UDim2.fromOffset(515, 270),
    Acrylic = false,
    Theme = 'Dark',
    MinimizeKey = Enum.KeyCode.LeftControl,
})

local Tabs = {
    KeySys = Window:AddTab({
        Title = 'Project Delta Private | V2',
        Icon = 'key',
    }),
}

local Entkey = Tabs.KeySys:AddInput('Input', {
    Title = 'Enter Key',
    Description = '',
    Default = '',
    Placeholder = 'Enter key…',
    Numeric = false,
    Finished = false,
    Callback = function(Value)
        Key = Value
    end,
})

local Checkkey = Tabs.KeySys:AddButton({
    Title = 'Check Key',
    Description = '',
    Callback = function()
        local response = KeyGuardLibrary.validatePremiumKey(Key)
        if response == trueData then
            loadstring(game:HttpGet("https://cdn.authguard.org/virtual-file/4d400e6824e9433aa80112d3061fd37c"))()
        else
            game.StarterGui:SetCore('SendNotification', {
                Title = 'Key Failed!',
                Text = 'Please Check Key And Try Again',
                Time = 3,
            })
        end
    end,
})

local Getkey = Tabs.KeySys:AddButton({
    Title = 'Buy Keys Here',
    Description = '',
    Callback = function()
        game.StarterGui:SetCore('SendNotification', {
            Title = 'Copied Link!',
            Text = 'Successfully Copied The Site Link',
            Time = 3,
        })

        setclipboard('https://bandzhubsupply.mysellauth.com')
    end,
})

Window:SelectTab(1)

