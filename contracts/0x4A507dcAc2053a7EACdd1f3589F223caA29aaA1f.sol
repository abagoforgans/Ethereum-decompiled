contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 sub_6df13282;

function sub_6df13282(?) payable {
    return sub_6df13282
}

function isSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function addSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    require sub_6df13282 + 1 >= sub_6df13282
    sub_6df13282++
    emit SuperAdminAdded(arg1);
}

function removeSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    if sub_6df13282 <= 1:
        revert with 0, 'LAST_SUPER_ADMIN'
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    require 1 <= sub_6df13282
    sub_6df13282--
    emit SuperAdminRemoved(arg1);
}



}
