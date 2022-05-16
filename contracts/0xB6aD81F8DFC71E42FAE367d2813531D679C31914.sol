contract main {




// =====================  Runtime code  =====================


address owner;
uint256 ethUsdRate;

function ethUsdRate() {
    return ethUsdRate
}

function owner() {
    return owner
}

function getEthUsdRate() {
    return ethUsdRate
}

function _fallback() payable {
    revert
}

function update(uint256 arg1) {
    require msg.sender == owner
    ethUsdRate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
