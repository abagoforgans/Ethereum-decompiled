contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 6000 * 10^18
    stor0 = msg.sender
    emit AuthorizationSet(msg.sender, 1);
    stor1[address(msg.sender)] = 1
    return code.data[255 len 1541]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 rate;

function rate() {
    return rate
}

function getRate() {
    return rate
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

function updateRate(uint256 arg1) {
    require stor1[address(msg.sender)]
    require rate != arg1
    emit 0xfe3b4c3f: rate, arg1
    rate = arg1
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



}
