contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0xe120100349a0b1bf826d2407e519d75c2fe8f859
    require not msg.value
    return code.data[92 len 786]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    emit 0x26907d34: block.timestamp, 777
}

function get() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function go() {
    if not block.timestamp % 150:
        require ext_code.size(stor1)
        call stor1.buyTicket() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_c76460d0(?) {
    require ext_code.size(stor1)
    call stor1.buyTicket() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.buyTicket() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.buyTicket() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.buyTicket() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
