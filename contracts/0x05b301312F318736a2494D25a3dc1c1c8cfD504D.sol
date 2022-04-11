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
    return code.data[281 len 865]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_3d2bc6de(?) {
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_48f4a256(?) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}



}
