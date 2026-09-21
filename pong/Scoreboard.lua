--[[I would like to try making my own Scoreboard class
for the text that displays for the player's scores. 
i think it will be some nice practice, and
it could be useful toget a little of the UI out into it's
own update functions, right? i hope?]]
Scoreboard = Class{}

function Scoreboard:init(player1Score, player2Score)
    self.player1Score = player1Score
    self.player2Score = player2Score
end

--[[Itmight be a little different
doing it like this instead of an update function? maybe?
SI like awarding pts this way i hope.]]
function Scoreboard:scoreP1(amt)
    self.player1Score = self.player1Score + amt
end
function Scoreboard:scoreP2(amt)
    self.player2Score = self.player1Score + amt
end

function Scoreboard:render() 
    love.graphics.print(tostring(self.player1Score), VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 2 - 80)
    love.graphics.print(tostring(self.player2Score), VIRTUAL_WIDTH / 2 + 30, VIRTUAL_HEIGHT / 2 - 80)
end

function Scoreboard:reset()
    self.player1Score = 0
    self.player2Score = 0
end