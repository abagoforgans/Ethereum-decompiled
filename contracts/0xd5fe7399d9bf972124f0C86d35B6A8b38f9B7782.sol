contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[864 len 20]
    stor2 = code.data[896 len 20]
    return code.data[130 len 722]
}



// =====================  Runtime code  =====================


address owner;
address escapeCallerAddress;
address escapeDestinationAddress;

function owner() {
    return owner
}

function escapeDestination() {
    return escapeDestinationAddress
}

function escapeCaller() {
    return escapeCallerAddress
}

function _fallback() payable {
    revert 
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeEscapeCaller(address arg1) {
    if escapeCallerAddress != msg.sender:
        require owner == msg.sender
    escapeCallerAddress = arg1
}

function escapeHatch() {
    if escapeCallerAddress != msg.sender:
        require owner == msg.sender
    call escapeDestinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EscapeCalled(eth.balance(this.address));
}



}
