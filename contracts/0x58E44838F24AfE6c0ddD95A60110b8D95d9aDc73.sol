contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 434]
}



// =====================  Runtime code  =====================


address _owner;

function _owner() {
    return _owner
}

function _fallback() payable {
    if msg.value > 0:
        emit 0xf631de84: msg.sender, msg.value
}

function withdraw(uint256 arg1, address arg2) payable {
    require _owner == msg.sender
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit 0xd2f1e519: msg.sender, msg.value
}



}
