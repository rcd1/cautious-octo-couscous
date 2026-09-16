--[[
    I'm gonna do a Ball with what i know now!
    You better be ready for what Amby has to offer :D
]]
Ball = Class{}

-- first 4 for ball, last two for movement (needs x and y since it moves all around board)
function Ball:init(x, y, width, height)
    self.x = x 
    self.y = y 
    self.width = width 
    self.height = height
    self.dx = math.random(2) == 1 and -100 or 100
    self.dy = math.random(-50,50)
end

function Ball:update(dt)
    -- not worrying about clamping yet, since that'll be a physics thing with deflections, mathy i havent done yet
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Ball:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
-- Should be okay just to explode them all, right? needs to be the center of the screen.
function Ball:reset()
    self.x = VIRTUAL_WIDTH / 2 - 2
    self.y = VIRTUAL_HEIGHT / 2 - 2
    self.dx = math.random(2) == 1 and -100 or 100
    self.dy = math.random(-50, 50)
end