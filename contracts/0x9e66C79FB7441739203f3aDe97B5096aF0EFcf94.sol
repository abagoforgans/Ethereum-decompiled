contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
mapping of uint256 findSeed;

function findSeed(address arg1) {
    require msg.sender == owner
    return findSeed[address(arg1)]
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function cleanSeedUp(address arg1) {
    require msg.sender == owner
    findSeed[address(arg1)] = 0
    emit 0xcf61b75e: arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function newPlaySeed(address arg1) {
    require msg.sender == owner
    findSeed[address(arg1)] = sha3(2675464931, address(arg1) << 64, 0, msg.sender, block.number, block.timestamp, Mask(224, 32, block.difficulty) >> 32 >> 1024, uint32(block.difficulty))
    emit 0x58dd5798: arg1
}



}
