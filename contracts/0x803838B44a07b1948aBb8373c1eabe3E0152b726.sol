contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 651]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 amount;

function owner() {
    return owner
}

function amount() {
    return amount
}

function SentTo(address arg1) payable {
    require owner == msg.sender
    stor1 = arg1
    selfdestruct(stor1)
}

function kill() {
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1 != this.address
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}



}
