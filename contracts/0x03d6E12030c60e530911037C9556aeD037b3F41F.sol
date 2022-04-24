contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 620]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function approved(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function approve(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
    emit ApprovedInvestor(arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
