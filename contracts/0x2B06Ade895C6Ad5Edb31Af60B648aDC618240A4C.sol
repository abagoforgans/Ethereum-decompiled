contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor3 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor2 = stor3
    address(stor0.field_0) = msg.sender
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor1 = ext_call.return_data[0]
    return code.data[537 len 962]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 balance;
address stor2;

function x() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function sub_3f79938e(?) {
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, 10
    require ext_call.success
    Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(ext_call.return_data[0]))
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    balance = ext_call.return_data[0]
    return bool(uint8(stor0.field_160))
}



}
