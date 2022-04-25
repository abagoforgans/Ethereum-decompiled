contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 2333]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isAuthorized(address arg1) {
    return (bool(stor1[address(arg1)]) == 1)
}

function isAuthorizer(address arg1) {
    if msg.sender == owner:
        return True
    return (bool(stor2[address(arg1)]) == 1)
}

function addAuthorizer(address arg1) {
    if owner != msg.sender:
        require stor2[address(msg.sender)]
    stor2[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAuthorizer(address arg1) {
    if owner != msg.sender:
        require stor2[address(msg.sender)]
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
}

function authorizeAccount(address arg1) {
    if owner != msg.sender:
        require stor2[address(msg.sender)]
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        emit Authorized(arg1);
}



}
