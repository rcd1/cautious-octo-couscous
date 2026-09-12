-- bash like fucker
-- your three are load, update, and draw. godot has ready and process which handles update and draw together.
/*
Amby found somethin' pretty neat here, thank you CS50! again...
Now watch as she forgets this all in a matter of days, poor thing.
remind her to shut off VS Code ghost writer, this is getting annoying.
*/
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        resizable = false,
        vsync = true, --syncing rendering to monitor refresh rate, very handy against screen tearing
        fullscreen = false
    })
end

function love.update(dt)

end

function love.draw()
    love.graphics.printf("Hello, Pong!", 0, WINDOW_HEIGHT / 2 - 6, WINDOW_WIDTH, 'center')
end