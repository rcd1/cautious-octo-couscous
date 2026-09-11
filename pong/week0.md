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