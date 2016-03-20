// Fire bullet from gun (spawn position)
_OffsetX = lengthdir_x(m_FireOffset, point_direction(x, y, mouse_x, mouse_y));
_OffsetY = lengthdir_y(m_FireOffset, point_direction(x, y, mouse_x, mouse_y));

for (var i = 0 ; i < 10 ; i++)
{
    with (instance_create(x + _OffsetX, y + _OffsetY, obj_bullet_shotgun))
    {
        // Set direction, speed and rotation
        direction = point_direction(x, y, mouse_x, mouse_y) + m_BulletOffset;
        image_angle = direction; // The shots are not completely straight
        speed = m_Speed;
        
        // Store the position of the character
        m_OriBulletPosX = x;
        m_OriBulletPosY = y;
    }
}