contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 valueOf;

function owner() {
    return owner
}

function valueOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return valueOf[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_3a52c7c2(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    valueOf[arg1] = arg2
    emit 0xd81ec364: arg1, arg2
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
