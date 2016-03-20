_KeyRight = keyboard_check(ord('D'));
_KeyLeft = keyboard_check(ord('Q'));
_KeyDown = keyboard_check(ord('S'));
_KeyUp = keyboard_check(ord('Z'));
_AnyMovementKey = _KeyRight || _KeyLeft || _KeyUp || _KeyDown;

// Checks inputs && if not colliding with anything solid
/*
if (_AnyMovementKey)
{
    _DirX = _KeyRight - _KeyLeft;
    _DirY = _KeyDown - _KeyUp;
    
    // Horizontal movement
    if (!place_meeting(x + (_DirX * (m_Spd)), y, par_solid))
    {   
        if (_KeyRight)
        {
            x += m_Spd;
        }
    
        if (_KeyLeft)
        {
            x -= m_Spd;
        }
    }
   
    // Vertical movement
    if (!place_meeting(x, y + (_DirY * m_Spd), par_solid))
    {   
        if (_KeyDown)
        {
            y += m_Spd;
        }
        
        if (_KeyUp)
        {
            y -= m_Spd;
        }
    } 
}
*/

if (_KeyRight)
{
    x += m_Spd;
}

if (_KeyLeft)
{
    x -= m_Spd;
}

if (_KeyDown)
{
    y += m_Spd;
}

if (_KeyUp)
{
    y -= m_Spd;
}
