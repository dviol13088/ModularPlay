//createPieces(minPieces, maxPieces, minCores, maxCores, pieceTypeAmt, minX, maxX, minY, maxY)
//
var pieceAmt = irandom_range(argument0,argument1);
var coreAmt = irandom_range(argument2-1, argument3-1);
var cores = 0;
//show_message("Piece Amt: " + string(pieceAmt) + "  Core Amt: " + string(coreAmt));
for (var i = 0; i < pieceAmt; i++)
{
    var piece;
    var randX = irandom_range(argument5, argument6);
    var randY = irandom_range(argument7, argument8);
    var randType = irandom(argument4);
    var isCore = random(1);
    if (coreAmt > cores)
    {
        if (pieceAmt - i > coreAmt - cores)
        {
            if (isCore < coreAmt/pieceAmt)
            {
                isCore = 1;
                cores++;
            }
            else
            {
                isCore = 0;
            }
        }
        else
        {
            isCore = 1;
            cores++;
        }
    }
    else
    {
        isCore = 0;
    }
    switch(randType)
    {

        case 0:
        {
            piece = instance_create(randX, randY, obj_deflect);
            break;
        }
        case 1:
        {
            piece = instance_create(randX, randY, obj_gun);
            break;
        }
        case 2:
        {
            piece = instance_create(randX, randY, obj_speedBoost);
            //show_message("DOng");
            break;
        }
        case 3:
        {
            piece = instance_create(randX, randY, obj_eater);
            break;
        }        
        default:
        {
            piece = instance_create(randX, randY, obj_gun);
            break;
        }
    }
    piece.isCore = isCore;
    if (piece.isCore && cores == 1)
    {
        with (piece)
        {
            //show_message(player);
            player = true;
            global.player = self;
            controlScheme = global.controlScheme;
            x = 1000;
            y = 1000;     
            Health = 30;
            MaxHealth = 30;
            host = self;
            xSpd = 0;
            ySpd = 0;
            depth = -10;
            var radius = 200;
            for (var g = 0; g < argument4 * 4; g++)
            {
                switch (g mod argument4)
                {
                    case 0:
                        piece = instance_create(x + (radius * sin(360/g+ 1)), y + (radius * cos(360/g+ 1)), obj_deflect);
                    break;
                    case 1:
                        piece = instance_create(x + (radius * sin(360/g+ 1)), y + (radius * cos(360/g+ 1)), obj_gun);
                    break;
                    case 2:
                        piece = instance_create(x + (radius * sin(360/g+ 1)), y + (radius * cos(360/g+ 1)), obj_eater);
                    break;
                    case 3:
                        piece = instance_create(x + (radius * sin(360/g+ 1)), y + (radius * cos(360/g+ 1)), obj_speedBoost);
                    break;
                    default:
                        piece = instance_create(x + (radius * sin(360/g+ 1)), y + (radius * cos(360/g+ 1)), obj_gun);
                    break;
                }
            }
        }      
    }
    else if (cores > 5)
    {
        with (piece)
        {
            var normClampRadius = clampRadius;
            clampRadius = room_width/3;
            checkHost(true);
            clampRadius = normClampRadius;
        }
    }
}
