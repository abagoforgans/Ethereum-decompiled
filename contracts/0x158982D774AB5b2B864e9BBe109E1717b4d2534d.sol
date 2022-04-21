contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1
    return code.data[181 len 1100]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

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
    emit AuthorizationSet(arg1, arg2);
    stor1[address(arg1)] = uint8(arg2)
}



}
