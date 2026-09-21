-- bash like fucker
-- your three are load, update, and draw. godot has ready and process which handles update and draw together.
--Amby found somethin' pretty neat here, thank you CS50! again...
-- Now watch as she forgets this all in a matter of days, poor thing.
-- remind her to shut off VS Code ghost writer, this is getting annoying.
push = require 'push'
Class = require 'class'
require 'Paddle'
require 'Ball'
require 'Scoreboard'


-- global variables when capitalized like this
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

PADDLE_SPEED = 200 --pixels per second


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        resizable = false,
        vsync = true, --syncing rendering to monitor refresh rate, very handy against screen tearing
        fullscreen = false
    })
    
    largeFont = love.graphics.newFont('font.ttf', 32)
    smallFont = love.graphics.newFont('font.ttf', 8) 
    -- seeding rng
    math.randomseed(os.time())
    -- upscale has some other properties
    push.setupScreen(VIRTUAL_WIDTH,VIRTUAL_HEIGHT, {upscale = 'normal'})
    

    player1 = Paddle(10, 10, 5, 20)
    player2 = Paddle(VIRTUAL_WIDTH-10, VIRTUAL_HEIGHT-30, 5, 20)

    ball = Ball(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)
    scoreboard = Scoreboard()
    scoreboard:reset() -- just in case?

    gameState = 'start'
end

function love.update(dt)

    if love.keyboard.isDown('w') then 
        player1.dy = -PADDLE_SPEED
    elseif love.keyboard.isDown('s') then
        player1.dy = PADDLE_SPEED
    else
        player1.dy = 0
    end

    if love.keyboard.isDown('up') then 
        player2.dy = -PADDLE_SPEED
    elseif love.keyboard.isDown('down') then
        player2.dy = PADDLE_SPEED
    else
        player2.dy = 0
    end

    if gameState == 'play' then 
        ball:update(dt)
    end

    player1:update(dt)
    player2:update(dt)

end
-- Love input handling
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'enter' or key == 'return' then
        if gameState == 'start' then
            gameState = 'play'
        else 
            gameState = 'start'
                ball:reset()
        end
    end

end

function love.draw()
    -- open up the virtual screen
    push.start()
    -- RGBA floating point values my beloved
    -- clears screen and covers it in this color
    love.graphics.clear(40/255,45/255,52/255, 1)
   
    love.graphics.setFont(largeFont)
    stateString = ""
    if gameState == 'start' then
        stateString = "Hello start state"
    else
        stateString = "hello play state" 
    end
        -- Gotta switch to virtual graphics now!
    love.graphics.print(stateString, VIRTUAL_WIDTH *.1, VIRTUAL_HEIGHT * .75)
    player1:render()
    player2:render()
    ball:render()
    scoreboard:render()

    push.finish()
    -- that's everything we want to draw!
end