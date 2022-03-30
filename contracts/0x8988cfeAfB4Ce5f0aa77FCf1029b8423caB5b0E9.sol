contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 371]
}



// =====================  Runtime code  =====================


address sub_a4592aa2Address;

function sub_a4592aa2(?) {
    return sub_a4592aa2Address
}

function _fallback() payable {
    if msg.value > 0:
        call sub_a4592aa2Address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
