contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor2 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor1 = stor2
    stor0 = msg.sender
    return code.data[281 len 674]
}



// =====================  Runtime code  =====================


uint8 x; offset 160
uint128 stor0; offset 160
address owner;
address stor1;

function x() {
    return bool(x)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_3f79938e(?) {
    require ext_code.size(stor1)
    call stor1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, 50
    require ext_call.success
    stor0 = Mask(96, 0, bool(ext_call.return_data[0]))
    return bool(x)
}



}
