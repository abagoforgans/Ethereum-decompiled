contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 391]
}



// =====================  Runtime code  =====================


address organizerAddress;

function organizer() {
    return organizerAddress
}

function _fallback() payable {
    call organizerAddress with:
       value msg.value + eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_738380a8(?) payable {
    if organizerAddress == msg.sender:
        organizerAddress = arg1
    call organizerAddress with:
       value msg.value + eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
