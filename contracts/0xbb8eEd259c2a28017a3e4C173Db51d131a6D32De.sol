contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 447]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    if msg.value > 0:
        emit 0x75d93f66: msg.sender, msg.value
}

function withdraw(uint256 arg1, address arg2) {
    if owner == msg.sender:
        call arg2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x659f1ede: msg.sender, arg1
}



}
