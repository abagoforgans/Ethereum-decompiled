contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function killContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}



}
