contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_76c37493(?) {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x6d03fa87 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        return arg1, 0, 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, arg2, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if uint8(stor1.field_168) + 100 < 100:
        revert with 0, 'SafeMath add failed'
    if not uint8(stor1.field_168) + 100:
        if not uint8(stor1.field_160):
            return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0
        require uint8(stor1.field_160)
        if uint8(stor1.field_160) * arg2 / uint8(stor1.field_160) != arg2:
            revert with 0, 'SafeMath mul failed'
        return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               0,
               uint8(stor1.field_160) * arg2 / 100,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require uint8(stor1.field_168) + 100
    if (100 * arg2) + (uint8(stor1.field_168) * arg2) / uint8(stor1.field_168) + 100 != arg2:
        revert with 0, 'SafeMath mul failed'
    if not uint8(stor1.field_160):
        return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (100 * arg2) + (uint8(stor1.field_168) * arg2) / 100,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require uint8(stor1.field_160)
    if uint8(stor1.field_160) * arg2 / uint8(stor1.field_160) != arg2:
        revert with 0, 'SafeMath mul failed'
    return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
           (100 * arg2) + (uint8(stor1.field_168) * arg2) / 100,
           uint8(stor1.field_160) * arg2 / 100,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0
}

function sub_8dc85a4d(?) {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x6d03fa87 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        return arg1, 0, 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, arg2, 0, 0, 0, 0, 0, 0, 0, 0, 0
    if uint8(stor1.field_168) + 100 < 100:
        revert with 0, 'SafeMath add failed'
    if not uint8(stor1.field_168) + 100:
        if not uint8(stor1.field_160):
            return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 0
        require uint8(stor1.field_160)
        if uint8(stor1.field_160) * arg2 / uint8(stor1.field_160) != arg2:
            revert with 0, 'SafeMath mul failed'
        return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               0,
               uint8(stor1.field_160) * arg2 / 100,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require uint8(stor1.field_168) + 100
    if (100 * arg2) + (uint8(stor1.field_168) * arg2) / uint8(stor1.field_168) + 100 != arg2:
        revert with 0, 'SafeMath mul failed'
    if not uint8(stor1.field_160):
        return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
               (100 * arg2) + (uint8(stor1.field_168) * arg2) / 100,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
    require uint8(stor1.field_160)
    if uint8(stor1.field_160) * arg2 / uint8(stor1.field_160) != arg2:
        revert with 0, 'SafeMath mul failed'
    return address(arg1), address(ext_call.return_data[0]), 0, 0, 0, 0, 0, 0, 0, 0 >> 2304, 
           (100 * arg2) + (uint8(stor1.field_168) * arg2) / 100,
           uint8(stor1.field_160) * arg2 / 100,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0
}



}
