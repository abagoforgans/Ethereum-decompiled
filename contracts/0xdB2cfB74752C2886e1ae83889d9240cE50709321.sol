contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setAuthorized(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function check(address arg1, address arg2) {
    if not stor1[address(arg2)]:
        return 0x1000000000000000000000000000000000000000000000000000000000000000
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}

function check(address arg1, address arg2, address arg3, uint256 arg4) {
    if not stor1[address(arg2)]:
        return 0x1000000000000000000000000000000000000000000000000000000000000000
    if not stor1[address(arg3)]:
        return 0x1000000000000000000000000000000000000000000000000000000000000000
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}



}
