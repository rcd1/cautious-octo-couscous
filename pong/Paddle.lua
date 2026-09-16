--[[
    Amby was here ^-^ 
    Paddle Class that I stole from a dear friend (lies)

]]
Paddle = Class{}
--[[
    This init function is like our Constructor methods?
    I define the variables I want, and it appends it to the Class{}? 
    Maybe?
]]
function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height 
    self.dy = 0
end

-- This version of the update function is meant to be called in main's update.
-- i can see the modules formulating naow >:3
function Paddle:update(dt)
    -- clamping methods: save my paddles from going of the screen 
    -- and my life is yours ;~;
    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    else --because VIRTUAL_HEIGHT is a global variable we can do this?
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
    end
end

-- This is our equivalent of dragging a node into the editor. nice
function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end