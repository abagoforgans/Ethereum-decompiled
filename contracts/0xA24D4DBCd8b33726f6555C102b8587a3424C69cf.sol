contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1490 len 32]
    return code.data[134 len 1356]
}



// =====================  Runtime code  =====================


address owner;
uint256 name;
mapping of uint8 stor2;

function name() {
    return name
}

function whiteList(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function hasAccess(address arg1) {
    return bool(stor2[address(arg1)])
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

function changeWhiteList(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit ChangeWhiteList(arg2, arg1);
}



}
