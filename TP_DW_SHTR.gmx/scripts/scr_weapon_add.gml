with (obj_char)
{
    if (m_WeaponNum < m_InventorySize) // If we still have some space in inventory
    { 
        m_WeaponInventory[m_WeaponNum] = argument[0];
        /*
        m_CurrentClip[m_WeaponNum] = argument[1];
        m_CapacityClip[m_WeaponNum] = argument[2];
        m_RemainingClip[m_WeaponNum] = argument[3];
        m_ReloadTime[m_WeaponNum] = argument[4];
        m_IsReloading[m_WeaponNum] = false;
        */
        
        if (m_CurrentWeaponNum == m_WeaponNum)
        {
            m_CurrentWeapon = argument[0];
        }
        
        m_WeaponNum++;
    }
}
