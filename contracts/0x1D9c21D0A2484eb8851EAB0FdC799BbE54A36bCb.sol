contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xbcd3ac7a361140e453c9ce92d1b037b3751a259
    return code.data[179 len 694]
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

function sub_0b3a0f7a(?) {
    require msg.sender == owner
    stor1 = arg1
}

function sub_12a20f9b(?) {
    require ext_code.size(stor1)
    call stor1.0x12a20f9b with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
}



}
