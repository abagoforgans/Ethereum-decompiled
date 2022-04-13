contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[62 len 473]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xf631de84: msg.sender, msg.value
}

function sub_1500c464(?) payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xf631de84: address(arg1), msg.value
}



}
