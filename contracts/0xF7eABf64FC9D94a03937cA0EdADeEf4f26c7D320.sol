contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
mapping of uint8 stor2;
array of struct sub_a334c2bf;
address stor5;

function numberOfSupportedTokens() {
    return stor1.length
}

function isTokenSupported(address arg1) {
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
}

function sub_a334c2bf(?) {
    require arg2 < sub_a334c2bf[arg1].field_0
    return sub_a334c2bf[arg1][arg2].field_0
}

function sub_b6c4d62b(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getSupportedTokenByIndex(uint256 arg1) {
    require arg1 < stor1.length
    return stor1[arg1], bool(stor2[stor1[arg1]])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMarketDataByTokenIdx(uint256 arg1) {
    require arg1 < stor1.length
    if not stor2[stor1[arg1]]:
        return stor1[arg1], 0, 0, 0
    if sub_a334c2bf[stor1[arg1]].field_0:
        mem[128] = sub_a334c2bf[stor1[arg1]].field_0
        idx = 128
        s = 0
        while (32 * sub_a334c2bf[stor1[arg1]].field_0) + 96 > idx:
            mem[idx + 32] = sub_a334c2bf[stor1[arg1]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require 0 < sub_a334c2bf[stor1[arg1]].field_0
    require 1 < sub_a334c2bf[stor1[arg1]].field_0
    require 2 < sub_a334c2bf[stor1[arg1]].field_0
    return stor1[arg1], mem[128], mem[160], mem[192]
}

function addSupportedToken(address arg1) {
    require msg.sender == owner
    if stor2[address(arg1)]:
        revert with 0, 'Token already added'
    stor1.length++
    stor1[stor1.length] = arg1
    stor2[address(arg1)] = 1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    sub_a334c2bf[address(arg1)].field_0 = 3
    s = 0
    idx = 96
    while 192 > idx:
        sub_a334c2bf[address(arg1)][s].field_0 = mem[idx + 31 len 1]
        sub_a334c2bf[address(arg1)][s].field_8 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while sub_a334c2bf[address(arg1)].field_0 > idx:
        sub_a334c2bf[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function updateMarketData(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if stor5 != msg.sender:
        revert with 0, 'updater not allowed'
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't update a non supported token'
    mem[96] = arg2
    mem[128] = arg3
    mem[160] = arg4
    sub_a334c2bf[address(arg1)].field_0 = 3
    s = 0
    idx = 96
    while 192 > idx:
        sub_a334c2bf[address(arg1)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while sub_a334c2bf[address(arg1)].field_0 > idx:
        sub_a334c2bf[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function getMarketData(address arg1) {
    if not stor2[address(arg1)]:
        return 0
    if not sub_a334c2bf[address(arg1)].field_0:
        require 0 < sub_a334c2bf[address(arg1)].field_0
        require 1 < sub_a334c2bf[address(arg1)].field_0
        _10 = mem[160]
        require 2 < sub_a334c2bf[address(arg1)].field_0
        _12 = mem[192]
        mem[(32 * sub_a334c2bf[address(arg1)].field_0) + 128] = mem[128]
        return mem[(32 * sub_a334c2bf[address(arg1)].field_0) + 128], _10, _12
    mem[128] = sub_a334c2bf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_a334c2bf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_a334c2bf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require 0 < sub_a334c2bf[address(arg1)].field_0
    require 1 < sub_a334c2bf[address(arg1)].field_0
    _18 = mem[160]
    require 2 < sub_a334c2bf[address(arg1)].field_0
    _20 = mem[192]
    mem[(32 * sub_a334c2bf[address(arg1)].field_0) + 128] = mem[128]
    return mem[(32 * sub_a334c2bf[address(arg1)].field_0) + 128], _18, _20
}



}
