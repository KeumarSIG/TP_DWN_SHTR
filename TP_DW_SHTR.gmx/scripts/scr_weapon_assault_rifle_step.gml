// Fire bullet from gun (spawn position)

if (m_CurrentClip > 0)
{
    print("createBullet")
    m_CurrentClip--; // Reduces current ammos by 1

    _OffsetX = lengthdir_x(m_FireOffset, point_direction(x, y, mouse_x, mouse_y));
    _OffsetY = lengthdir_y(m_FireOffset, point_direction(x, y, mouse_x, mouse_y));
    
    with (instance_create(x + _OffsetX, y + _OffsetY, obj_bullet_assault_rifle))
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
