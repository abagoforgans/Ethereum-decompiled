contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[538 len 32]
    return code.data[80 len 458]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_caa2d9f8;

function owner() {
    return owner
}

function sub_caa2d9f8(?) {
    return sub_caa2d9f8
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    if msg.value <= 0:
    if msg.value >= sub_caa2d9f8:
        emit 0xaf420991: address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size])
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
