contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 510]
}



// =====================  Runtime code  =====================


const sub_aa98e163(?) = eth.balance(this.address)


address sub_9438f22aAddress;

function sub_9438f22a(?) {
    return sub_9438f22aAddress
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    call sub_9438f22aAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e732961f(?) payable {
    if msg.value <= 10^15:
        return 0
    call msg.sender with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
