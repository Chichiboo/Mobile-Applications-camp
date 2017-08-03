-- drag and drop

-- Created by: Joe S
-- Created on Aug 3 2017
-- Created for: Mobile Apps Summer Camp
-- This program displays an image and the user can move via drag and drop

-- Use this function to perform your initial setup
-- Happens once, and only once
-- global variables
bossBlasterName = ("Tyrian Remastered:Boss C")
bossBlasterPosition = vec2()
    
function setup()
    
    -- setup dispaly and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    -- get rid of right console, so only fullscreen shows
    displayMode(FULLSCREEN)
    
    -- Housekeeping, sets style to null
    noFill()
    noSmooth()
    noStroke()
    
    -- Takes the above commands and pushes them on the stack for the styles to be useable
    pushStyle()
    
    bossBlaster = vec2(WIDTH/2, HEIGHT/2)
    
    
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
    
    bossBlaster.x = bossBlaster.x + (Gravity.x * 10)
    bossBlaster.y = bossBlaster.y + (Gravity.y * 10)
    
    
    
    sprite("SpaceCute:Background", 512, 384, 1024, 768)
    sprite("Tyrian Remastered:Boss C", bossBlaster.x, bossBlaster.y)
    
end
