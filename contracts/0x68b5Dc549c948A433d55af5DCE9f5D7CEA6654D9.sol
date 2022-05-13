contract main {




// =====================  Runtime code  =====================


#
#  - sub_f55c6211(?)
#
address owner;
address pendingOwner;
address sub_294a70e4Address;

function sub_294a70e4(?) {
    return sub_294a70e4Address
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function sub_0db81c35(?) {
    require owner == msg.sender
    sub_294a70e4Address = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}



}
