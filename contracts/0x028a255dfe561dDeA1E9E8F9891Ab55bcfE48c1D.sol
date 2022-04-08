contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 504]
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
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}



}
