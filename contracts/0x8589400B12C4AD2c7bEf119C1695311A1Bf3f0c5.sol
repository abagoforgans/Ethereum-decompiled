contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value >= 2 * 10^17
    call msg.sender with:
       funct Mask(32, 223, msg.value) >> 223
         gas gas_remaining wei
        args (2 * Mask(223, 0, msg.value))
    require ext_call.success
}



}
