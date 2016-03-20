switch (m_CurrentWeapon)
{
    case "Assault Rifle":
        scr_weapon_assault_rifle_init();
    break;
    
    case "Shotgun":
        scr_weapon_shotgun_init();
    break;
    
    default:
        exit;
    break;
}
