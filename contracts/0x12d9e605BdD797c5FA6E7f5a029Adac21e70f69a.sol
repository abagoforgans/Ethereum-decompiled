contract main {




// =====================  Runtime code  =====================


#
#  - sub_e9697e1c(?)
#
array of address stor0;
mapping of uint256 filled;
mapping of uint8 stor2;
mapping of uint256 cutoffs;
mapping of uint256 tradingPairCutoffs;
address owner;
uint8 walletSplitPercentage; offset 160
uint8 stor6; offset 168
address pendingOwner;
mapping of uint256 stor7;

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function suspended() {
    return bool(stor6)
}

function owner() {
    return owner
}

function tradingPairCutoffs(address arg1, bytes20 arg2) {
    require calldata.size - 4 >= 64
    return tradingPairCutoffs[arg1][Mask(160, 96, arg2)]
}

function cancelled(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function cutoffs(address arg1) {
    require calldata.size - 4 >= 32
    return cutoffs[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function walletSplitPercentage() {
    return walletSplitPercentage
}

function _fallback() payable {
    revert
}

function resume() {
    require msg.sender == owner
    require stor6
    stor6 = 0
}

function suspend() {
    require msg.sender == owner
    require not stor6
    stor6 = 1
}

function isAddressAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return (stor7[address(arg1)] > 0)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function kill() {
    require msg.sender == owner
    require stor6
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function sub_5d83d989(?) {
    require calldata.size - 4 >= 64
    if stor7[msg.sender] <= 0:
        revert with 0, 'unauthorized'
    require not stor6
    filled[arg1] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require owner != arg1
    pendingOwner = arg1
}

function sub_cfd854c2(?) {
    require calldata.size - 4 >= 64
    if stor7[msg.sender] <= 0:
        revert with 0, 'unauthorized'
    require not stor6
    stor2[address(arg1)][arg2] = 1
}

function sub_6263c0f8(?) {
    require calldata.size - 4 >= 64
    if stor7[msg.sender] <= 0:
        revert with 0, 'unauthorized'
    require not stor6
    require arg2 + filled[arg1] >= filled[arg1]
    filled[arg1] += arg2
}

function sub_05e45560(?) {
    require calldata.size - 4 >= 64
    if stor7[msg.sender] <= 0:
        revert with 0, 'unauthorized'
    require not stor6
    if arg2 <= cutoffs[address(arg1)]:
        revert with 0, 'cutoff too small'
    cutoffs[address(arg1)] = arg2
}

function sub_cb23e899(?) {
    require calldata.size - 4 >= 96
    if stor7[msg.sender] <= 0:
        revert with 0, 'unauthorized'
    require not stor6
    if arg3 <= tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)]:
        revert with 0, 'cutoff too small'
    tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)] = arg3
}

function authorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'bad address'
    if stor7[address(arg1)]:
        revert with 0, 'address already exists'
    stor0.length++
    address(stor0[stor0.length]) = arg1
    stor7[address(arg1)] = stor0.length
    emit 0xaa4a1856: arg1
}

function deauthorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'bad address'
    if not stor7[address(arg1)]:
        revert with 0, 'address not found'
    if stor0.length != stor7[address(arg1)]:
        require stor0.length - 1 < stor0.length
        require stor7[address(arg1)] - 1 < stor0.length
        address(stor0[stor7[address(arg1)]]) = address(stor0[stor0.length])
        stor7[address(stor0[stor0.length])] = stor7[address(arg1)]
    stor0.length--
    if stor0.length > stor0.length - 1:
        idx = stor0.length - 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    stor7[address(arg1)] = 0
    emit 0xff697c8f: arg1
}

function checkCutoffsBatch(address[] arg1, bytes20[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg1.length == arg2.length
    require arg3.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] <= tradingPairCutoffs[address(cd[((32 * idx) + arg1 + 36)])][Mask(160, 96, cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'order cancelled'
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        require idx < arg3.length
        if cd[((32 * idx) + arg3 + 36)] <= cutoffs[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'order cancelled'
        idx = idx + 1
        continue 
}



}
