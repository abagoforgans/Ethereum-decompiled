contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[86 len 464]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Deposit(msg.value, msg.sender);
}



}
