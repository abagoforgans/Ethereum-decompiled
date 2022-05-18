contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 2486]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 totalWhiteListed;

function whiteList(address arg1) {
    return bool(stor1[arg1])
}

function isWhiteListed(address arg1) {
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function totalWhiteListed() {
    return totalWhiteListed
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

function removeFromWhiteList(address arg1) {
    require msg.sender == owner
    require bool(stor1[address(arg1)]) == 1
    stor1[address(arg1)] = 0
    totalWhiteListed--
    emit LogRemoveWhiteListed(arg1);
    return 1
}

function addToWhiteList(address arg1) {
    require msg.sender == owner
    if bool(stor1[address(arg1)]) != 1:
        stor1[address(arg1)] = 1
        totalWhiteListed++
        emit LogWhiteListed(totalWhiteListed, arg1);
    return 1
}

function addToWhiteListMultiple(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        if bool(stor1[address(cd[((32 * idx) + arg1 + 36)])]) != 1:
            require idx < arg1.length
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 1
            stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
            totalWhiteListed++
        idx = idx + 1
        continue 
    emit LogWhiteListedMultiple(totalWhiteListed);
    return 1
}



}
