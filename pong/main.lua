-- bash like fucker
-- your three are load, update, and draw. godot has ready and process which handles update and draw together.
--Amby found somethin' pretty neat here, thank you CS50! again...
-- Now watch as she forgets this all in a matter of days, poor thing.
-- remind her to shut off VS Code ghost writer, this is getting annoying.


-- global variables when capitalized like this
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

push = require 'push'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    largeFont = love.graphics.newFont('font.ttf', 32)
    smallFont = love.graphics.newFont('font.ttf', 8)
    
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        resizable = false,
        vsync = true, --syncing rendering to monitor refresh rate, very handy against screen tearing
        fullscreen = false
    })
    -- upscale has some other properties
    push.setupScreen(VIRTUAL_WIDTH,VIRTUAL_HEIGHT, {upscale = 'normal'})
end

function love.update(dt)

end
-- Love input handling
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    -- open up the virtual screen
    push.start()
    -- RGBA floating point values my beloved
    -- clears screen and covers it in this color
    love.graphics.clear(45/255,50/255,20/255, 1)
   
    love.graphics.setFont(largeFont)
    -- Gotta switch to virtual graphics now!
    -- love.graphics.printf('Hello, Pong!', 0, VIRTUAL_HEIGHT / 2 - 16, VIRTUAL_WIDTH, 'center')
    
    -- paddle 1
    love.graphics.rectangle('fill', 10, 10, 5, 20)
    --paddle 2
    -- this needed some math like what you messed with in visualizations with the pixel measurements
    love.graphics.rectangle('fill', VIRTUAL_WIDTH-15, VIRTUAL_HEIGHT-30, 5, 20)

    -- ball
    love.graphics.rectangle('fill', VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)
    push.finish()
    -- that's everything we want to draw!
end