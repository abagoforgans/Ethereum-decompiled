contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[98 len 662]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;

function owner() {
    return owner
}

function allowance() {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    require uint8(stor0.field_160)
}

function sub_ca7d1ccb(?) {
    require owner == msg.sender
    if arg1 != bool(uint8(stor0.field_160)):
        Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function withdrawal(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
