contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function isAuth(address arg1) {
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function addAuth(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeAuth(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
