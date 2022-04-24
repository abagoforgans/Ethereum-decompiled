contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;

function _fallback() {
    stor0 = msg.sender
    emit AuthorizationSet(msg.sender, 1);
    stor1[address(msg.sender)] = 1
    emit WhiteListSet(msg.sender, 1);
    stor2[address(msg.sender)] = 1
    return code.data[452 len 1837]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function isWhiteListed(address arg1) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setAuthorized(address arg1, bool arg2) {
    require msg.sender == owner
    require bool(stor1[address(arg1)]) != arg2
    emit AuthorizationSet(arg1, arg2);
    stor1[address(arg1)] = uint8(arg2)
}

function setWhiteListed(address arg1, bool arg2) {
    require stor1[address(msg.sender)]
    require bool(stor2[address(arg1)]) != arg2
    emit WhiteListSet(address(arg1), arg2);
    stor2[address(arg1)] = uint8(arg2)
}



}
