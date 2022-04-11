contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[56 len 249]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_e9ff3a14(?) {
    if stor0 == msg.sender:
        call stor0 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
