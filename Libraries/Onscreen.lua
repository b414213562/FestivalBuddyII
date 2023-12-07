---This function makes sure the object is positioned on the screen and not off it
---@param OBJECT Control A Control, or something with GetWidth/GetHeight/GetLeft/GetTop/SetPosition functions.
---@param stretchedWindowWidth number Optional stretchmode width. 
---@param stretchedWindowHeight number Optional stretchmode height. 
function Onscreen(OBJECT, stretchedWindowWidth, stretchedWindowHeight)

    local DISPLAYWIDTH = Turbine.UI.Display.GetWidth();
    local DISPLAYHEIGHT = Turbine.UI.Display.GetHeight();

    local objWidth = stretchedWindowWidth or OBJECT:GetWidth();
    local objHeight = stretchedWindowHeight or OBJECT:GetHeight();

    local objLeft = OBJECT:GetLeft();
    local objTop = OBJECT:GetTop();
    local objRight = objLeft + objWidth;
    local objBottom = objTop + objHeight;

    if objRight > DISPLAYWIDTH then objLeft = DISPLAYWIDTH - objWidth end;
    if objLeft < 0 then objLeft = 0 end;
    if objTop < 0 then objTop = 0 end;
    if objBottom > DISPLAYHEIGHT then objTop = DISPLAYHEIGHT - objHeight end;

    OBJECT:SetPosition(objLeft,objTop);

end

_G.Onscreen = Onscreen;