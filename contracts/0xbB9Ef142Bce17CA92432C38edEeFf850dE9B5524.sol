contract main {


// =======================  Init code  ======================


uint8 stor1; offset 160

function _fallback() payable {
    stor1 = 0
    return code.data[34 len 319]
}



// =====================  Runtime code  =====================


address sub_94a43e5cAddress;
uint256 stor0;
uint8 stor1; offset 160
uint128 stor1; offset 168
address sub_05f474a8Address;

function sub_05f474a8(?) {
    return sub_05f474a8Address
}

function sub_94a43e5c(?) {
    return address(sub_94a43e5cAddress)
}

function _fallback() payable {
    revert 
}

function sub_6b718db9(?) {
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_c174dce3(?) {
    if uint8(stor1.field_160):
        return 0
    sub_05f474a8Address = arg1
    uint8(stor1.field_160) = 1
    Mask(88, 0, stor1.field_168) = Mask(88, 168, arg1) >> 168
    return 1
}



}
