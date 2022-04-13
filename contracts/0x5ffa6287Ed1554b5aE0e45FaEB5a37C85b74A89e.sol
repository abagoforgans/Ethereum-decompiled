contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[573 len 20]
    return code.data[112 len 449]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        require ext_code.size(stor1)
        call stor1.0x1500c464 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args this.address
        require ext_call.success
        emit 0xf631de84: msg.sender, msg.value
}



}
