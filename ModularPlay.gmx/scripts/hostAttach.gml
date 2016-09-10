//Attach this piece to host
var host = argument0;
var pieceAttached = argument1;
var close = argument2;
var isHostPos = argument3;
var newX, newY;
var checkBuffer = host.checkBuffer;
if (close.x > pieceAttached.x + checkBuffer)
{
    if (isHostPos)
        newX = close.x + pieceAttached.width;
    else
        newX = close.positionX - pieceAttached.width;
}
else if (close.x < pieceAttached.x - checkBuffer)
{
   if (isHostPos)
        newX = close.x - pieceAttached.width;
    else
        newX = close.positionX + pieceAttached.width;
   
}
else
{
    if (isHostPos)
        newX = close.x;
    else
        newX = close.positionX;
    
}
if (close.y > pieceAttached.y + checkBuffer)
{
    if (isHostPos)
        newY = close.y + pieceAttached.height;
    else
        newY = close.positionY - pieceAttached.height;
    
}
else if (close.y < pieceAttached.y - checkBuffer)
{
   if (isHostPos)
        newY = close.y - pieceAttached.height;
    else
        newY = close.positionY + pieceAttached.height;
}
else
{
    if (isHostPos)
        newY = close.y;
    else
        newY = close.positionY;
}
if (isHostPos)
{
    pieceAttached.positionX = host.x - newX;
    pieceAttached.positionY = host.y - newY;
}
else
{
    pieceAttached.positionX = newX;
    pieceAttached.positionY = newY;
}
pieceAttached.host = host;
pieceAttached.Health += pieceAttached.AttachHealth;
pieceAttached.Health = clamp(pieceAttached.Health, 0, pieceAttached.MaxHealth);
pieceAttached.attached = true;
pieceAttached.outside = true;
