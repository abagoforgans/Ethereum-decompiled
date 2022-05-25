contract main {




// =====================  Runtime code  =====================


mapping of address owner;

function owner() {
    return owner['owner']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner']
    require arg1
    owner['pendingOwner'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}



}
