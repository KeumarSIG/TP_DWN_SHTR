_SwitchWeaponUp = mouse_wheel_up();
_SwitchWeaponDown = mouse_wheel_down();
_AnySwitch = _SwitchWeaponUp || _SwitchWeaponDown;

if (_SwitchWeaponUp)
{
    if (m_CurrentWeaponNum < m_InventorySize - 1)
    {
        m_CurrentWeapon = m_WeaponInventory[m_CurrentWeaponNum + 1];
        
        /*
        m_CurrentClip[m_CurrentWeaponNum] = m_CurrentClip;
        m_CapacityClip[m_CurrentWeaponNum] = m_CapacityClip;
        m_RemainingClip[m_CurrentWeaponNum] = m_RemainingClip;
        m_ReloadTime[m_CurrentWeaponNum] = m_ReloadTime;
        m_IsReloading[m_CurrentWeaponNum] = m_IsReloading;
        
        
        m_CurrentClip = m_CurrentClip[m_CurrentWeaponNum + 1];
        m_CapacityClip = m_CapacityClip[m_CurrentWeaponNum + 1];
        m_RemainingClip = m_RemainingClip[m_CurrentWeaponNum + 1];
        m_ReloadTime = m_ReloadTime[m_CurrentWeaponNum + 1]
        m_IsReloading = m_IsReloading[m_CurrentWeaponNum + 1]
        */
        
        m_CurrentWeaponNum += 1;
        scr_weapon_init();
    }
}

if (_SwitchWeaponDown)
{
    if (m_CurrentWeaponNum > 0)
    {
        m_CurrentWeapon = m_WeaponInventory[m_CurrentWeaponNum - 1];
        
        /*
        m_CurrentClip[m_CurrentWeaponNum] = m_CurrentClip;
        m_CapacityClip[m_CurrentWeaponNum] = m_CapacityClip;
        m_RemainingClip[m_CurrentWeaponNum] = m_RemainingClip;
        m_ReloadTime[m_CurrentWeaponNum] = m_ReloadTime;
        m_IsReloading[m_CurrentWeaponNum] = m_IsReloading;
        
        m_CurrentClip = m_CurrentClip[m_CurrentWeaponNum - 1];
        m_CapacityClip = m_CapacityClip[m_CurrentWeaponNum - 1];
        m_RemainingClip = m_RemainingClip[m_CurrentWeaponNum - 1];
        m_ReloadTime = m_ReloadTime[m_CurrentWeaponNum - 1]
        m_IsReloading = m_IsReloading[m_CurrentWeaponNum - 1]
        */
        
        m_CurrentWeaponNum -= 1;
        scr_weapon_init();
    }
}

// Makes sure we only go through the inventory and not the void
/*
if (_AnySwitch)
{   
    scr_weapon_init();    
}
*/











/*
_SwitchWeaponUp = mouse_wheel_up();
_SwitchWeaponDown = mouse_wheel_down();
_AnySwitch = _SwitchWeaponUp || _SwitchWeaponDown;

if (_SwitchWeaponUp)
{
    if (m_CurrentWeaponNum < m_InventorySize - 1)
    {
        m_CurrentClip[m_CurrentWeaponNum] = m__CurrentClip;
        m_CapacityClip[m_CurrentWeaponNum] = m__CapacityClip;
        m_RemainingClip[m_CurrentWeaponNum] = m__RemainingClip;
        m_ReloadTime[m_CurrentWeaponNum] = m__ReloadTime;
        m_IsReloading[m_CurrentWeaponNum] = m__IsReloading;
    
        m__CurrentWeapon = m_WeaponInventory[m_CurrentWeaponNum + 1];
        
        m__CurrentClip = m_CurrentClip[m_CurrentWeaponNum + 1];
        m__CapacityClip = m_CapacityClip[m_CurrentWeaponNum + 1];
        m__RemainingClip = m_RemainingClip[m_CurrentWeaponNum + 1];
        m__ReloadTime = m_ReloadTime[m_CurrentWeaponNum + 1]
        m__IsReloading = m_IsReloading[m_CurrentWeaponNum + 1]
        
        m_CurrentWeaponNum += 1;
    }
}

if (_SwitchWeaponDown)
{
    if (m_CurrentWeaponNum > 0)
    {
        m_CurrentClip[m_CurrentWeaponNum] = m__CurrentClip;
        m_CapacityClip[m_CurrentWeaponNum] = m__CapacityClip;
        m_RemainingClip[m_CurrentWeaponNum] = m__RemainingClip;
        m_ReloadTime[m_CurrentWeaponNum] = m__ReloadTime;
        m_IsReloading[m_CurrentWeaponNum] = m__IsReloading;
        
        m_CurrentWeapon = m_WeaponInventory[m_CurrentWeaponNum - 1];
        
        m__CurrentClip = m_CurrentClip[m_CurrentWeaponNum - 1];
        m__CapacityClip = m_CapacityClip[m_CurrentWeaponNum - 1];
        m__RemainingClip = m_RemainingClip[m_CurrentWeaponNum - 1];
        m__ReloadTime = m_ReloadTime[m_CurrentWeaponNum - 1]
        m__IsReloading = m_IsReloading[m_CurrentWeaponNum - 1]
        
        m_CurrentWeaponNum -= 1;
    }
}

// Makes sure we only go through the inventory and not the void
if (_AnySwitch)
{   
    scr_weapon_init();
}*/
