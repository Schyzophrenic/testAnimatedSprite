import "CoreLibs/graphics"
import "CoreLibs/object"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "lib/AnimatedSprite"

local pd <const> = playdate
local gfx <const> = pd.graphics

-- Init
local imgTable = gfx.imagetable.new("images/whiteFlag-table-64-49")
local states = AnimatedSprite.loadStates("images/whiteFlag.json")
spr = AnimatedSprite.new(imgTable, states, true)
spr:moveTo(200, 120)

function pd.update()
	gfx.sprite.update()
	pd.timer.updateTimers()
end