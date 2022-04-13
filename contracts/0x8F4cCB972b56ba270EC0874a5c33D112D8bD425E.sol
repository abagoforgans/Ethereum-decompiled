contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 968]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}



}
