## What is a game loop?
games are an illusion apparently, a very fast flipbook. that players control the result of?
1. Processing Input
2. Updating the Game (may need to multiple times before rendering for consistency)
3. Render Frames
4. Repeat
#### Shapes are the simplest form of Sprites we can muster. 2D images my beloved <3
LOVE works in functions
>love.load()
starts the game
>love.update(dt)
updates state before rendering
>love.draw()
renders
### Dealing with 2D coordinate systems.
everyone has their version of x and y, ours is such that pos x goes right and pos y goes down (top left corner, godot-esque?)
### Coordinate system relates to the literal pixels on your screen (triplets?RGB pixels?)
>love.graphics.printf(text, x, y, [width], [align])

I'm learning so much about how to draw rectangles in this program that cna only draw rectangles since it's a pixely pal.

that and how to make a virtual canvas that applies a custom resolution and scales it to the monitor's pixel density. through filtering it can make our 400X300 whatever resolution game look nice and crisp on my 1080p screen. Thank you push library and global constants!

>math.randomseed(num)
>os.time()
returns in seconds the time since 0 in Unix Time
> math.random(min,max)
> math.min(num1, num2)
> math.max(num1, num2)

## Update 5: The Class Update
- classes containerize data into attributes and methods.
- rather than having **ballX** and **paddle1X** and **paddle2X**, we'll see how to get some of the clutter out of our main.lua. 
### Other component diagrams: ECS (Entity Component System),
