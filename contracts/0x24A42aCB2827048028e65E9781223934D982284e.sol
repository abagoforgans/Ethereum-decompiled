contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 436]
}



// =====================  Runtime code  =====================


address organizerAddress;

function organizer() {
    return organizerAddress
}

function sub_738380a8(?) {
    if organizerAddress == msg.sender:
        organizerAddress = arg1
}

function _fallback() payable {
    call organizerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_db88031a(?) payable {
    call organizerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
