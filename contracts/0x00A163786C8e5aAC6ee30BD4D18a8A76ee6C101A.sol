contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    uint8(stor0.field_160) = 1
    return code.data[88 len 923]
}



// =====================  Runtime code  =====================


uint64 sub_ea9613ad; offset 168
uint128 stor0; offset 168
address stor0;
uint128 stor1; offset 160
address stor1;
uint256 sub_2332186d;
uint256 sub_3ac1c3e2;
uint256 sub_e8980dbf;
uint128 stor4; offset 160
address stor4;
uint256 sub_298cdd42;

function sub_2332186d(?) payable {
    return sub_2332186d
}

function sub_298cdd42(?) payable {
    return sub_298cdd42
}

function sub_3ac1c3e2(?) payable {
    return sub_3ac1c3e2
}

function sub_e8980dbf(?) payable {
    return sub_e8980dbf
}

function sub_ea9613ad(?) payable {
    return sub_ea9613ad
}

function kill() payable {
    if msg.sender == address(stor0.field_0):
        selfdestruct(address(stor0.field_0))
    else:
        return 0
}

function _fallback() payable {
    revert 
}

function sub_6b150ad3(?) payable {
    Mask(88, 0, stor0.field_168) = Mask(88, 0, arg1)
    sub_3ac1c3e2 = sub_ea9613ad
    sub_e8980dbf = 1000
    address(stor4.field_0) = address(100000 * 10^18 * sub_ea9613ad)
    Mask(96, 0, stor4.field_160) = 0
    address(stor1.field_0) = address(100000000000000000000001 * sub_ea9613ad)
    Mask(96, 0, stor1.field_160) = 0
    return 1
}



}
