import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

-- Use common shorthands for playdate code
local gfx <const> = playdate.graphics

local playerSprite = nil

local function initialize()
  local playerImage = gfx.image.new('images/kennyTilesheet-25')
  playerImage:setInverted(true)
  assert(playerImage)
  playerSprite = gfx.sprite.new(playerImage)
  playerSprite:moveTo(200, 120)
  playerSprite:add()
end
initialize()

--- This update method is called once per frame.
function playdate.update()
  -- gfx.setColor(gfx.kColorBlack)
  -- gfx.fillRect(0, 0, 400, 240)


  playdate.drawFPS(0,0)
  gfx.sprite.update()
  playdate.timer.updateTimers()
end