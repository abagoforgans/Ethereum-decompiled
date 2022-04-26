contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 360]
}



// =====================  Runtime code  =====================


address sub_9c0eff72Address;

function sub_9c0eff72(?) {
    return sub_9c0eff72Address
}

function sub_c5563720(?) {
    selfdestruct(sub_9c0eff72Address)
}

function _fallback() payable {
    revert
}

function sub_e29940b9(?) {
    call sub_9c0eff72Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
