contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct contributions;

function contributions(address arg1) {
    return bool(contributions[arg1].field_0), contributions[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_47ae6692(?) {
    require msg.sender == owner
    contributions[address(arg1)].field_256 = arg2
    contributions[address(arg1)].field_0 = uint8(arg3)
    return 1
}

function bulkReserveTokensForAddresses(address[] arg1, uint256[] arg2, bool[] arg3) {
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require not contributions[address(cd[((32 * idx) + arg1 + 36)])].field_256
        require idx < arg2.length
        require idx < arg1.length
        contributions[address(cd[((32 * idx) + arg1 + 36)])].field_256 = cd[((32 * idx) + arg2 + 36)]
        require idx < arg3.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        contributions[address(cd[((32 * idx) + arg1 + 36)])].field_0 = uint8(bool(cd[((32 * idx) + arg3 + 36)]))
        idx = idx + 1
        continue 
    return 1
}



}
