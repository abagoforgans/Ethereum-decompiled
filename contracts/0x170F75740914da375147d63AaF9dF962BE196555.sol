contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[159 len 1145]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    emit LogForwarded(msg.value, msg.sender);
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function flush(address arg1) {
    emit LogFlushed(eth.balance(this.address), stor1);
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
