_keyShoot = mouse_check_button(mb_left);
_keyReload = mouse_check_button_pressed(mb_middle);

// If player inputs the "shoot" button
if (_keyShoot && m_IsReloading == false)
{
    // If the player can shoot
    if (m_CanShoot == true)
    {
        m_CanShoot = false;
        
        switch (m_CurrentWeapon)
        {
            case "Assault Rifle":
                scr_weapon_assault_rifle_step();
            break;
            
            case "Shotgun":
                scr_weapon_shotgun_step();
            break;
            
            default:
                exit;
            break;
        }
        
        if (!alarm[0]) alarm[0] = m_FireRate; // Delay between two shots
    }
}

if (!_keyShoot && m_CurrentClip <= 0 && m_RemainingClip > 0 && m_IsReloading == false // if player doesn't do anything and has no bullet, it reloads automatically
    || !_keyShoot && _keyReload && m_RemainingClip > 0 && m_IsReloading == false && m_CurrentClip < m_CapacityClip) // else if he presses the reload input, he reloads
{
    m_IsReloading = true;
    if (!alarm[2]) alarm[2] = m_ReloadTime;
}


/*
_keyShoot = mouse_check_button(mb_left);
_keyReload = mouse_check_button_pressed(mb_middle);

// If player inputs the "shoot" button
if (_keyShoot && m__IsReloading == false)
{
    // If the player can shoot
    if (m_CanShoot == true)
    {
        m_CanShoot = false;
        
        switch (m_CurrentWeapon)
        {
            case "Assault Rifle":
                scr_weapon_assault_rifle_step();
            break;
            
            case "Shotgun":
                scr_weapon_shotgun_step();
            break;
            
            default:
                exit;
            break;
        }
        
        if (!alarm[0]) alarm[0] = m_FireRate; // Delay between two shots
    }
}

if (!_keyShoot && m__CurrentClip <= 0 && m__RemainingClip > 0 && m__IsReloading == false // if player doesn't do anything and has no bullet, it reloads automatically
    || !_keyShoot && _keyReload && m__RemainingClip > 0 && m__IsReloading == false) // else if he presses the reload input, he reloads
{
    m__IsReloading = true;
    if (!alarm[2]) alarm[2] = m__ReloadTime;
}
