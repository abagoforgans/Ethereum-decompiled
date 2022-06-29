contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_b8232d5d;
mapping of uint256 sub_4b39173d;
mapping of uint256 sub_0cf9603f;
mapping of uint256 sub_c64a2e56;
mapping of uint256 sub_a3120724;
mapping of uint256 sub_4c78e401;
mapping of uint256 sub_73a9ee26;
mapping of address sub_79ecf376;
mapping of uint256 sub_628a71a3;
mapping of uint256 sub_f49916f5;
mapping of uint256 sub_19ef6a06;
mapping of address sub_102f9713;
mapping of uint256 sub_3d0d1a79;
mapping of uint256 sub_8f63b7e5;
mapping of uint256 sub_be7d6226;
mapping of uint256 sub_d5de47c7;
mapping of uint256 sub_3a173505;
mapping of uint256 sub_c957387b;
mapping of uint8 stor22;
mapping of uint256 sub_28361f57;
mapping of uint256 sub_3c6dd013;
mapping of uint256 sub_6f17eb42;
mapping of uint256 sub_2c6c1c41;
mapping of uint256 sub_4a7f6f2f;
mapping of uint8 stor28;
mapping of uint256 sub_eaf1c910;
mapping of uint8 stor30;
mapping of uint8 stor31;
mapping of address sub_deaf0fa1;
array of address sub_87982ac3;
mapping of uint8 stor34;
array of uint256 sub_5bfcdb27;
mapping of address sub_099b81ce;
mapping of uint8 stor37;
mapping of uint256 sub_41c5464e;
uint256 sub_c9f8234f;
uint256 sub_eef565da;
uint256 currentRound;
uint256 sub_0f6ed86e;
uint256 sub_fea11fe3;
uint256 sub_3dc3c377;
mapping of uint256 sub_b0ff59d2;
mapping of uint256 sub_b1a3883c;
mapping of uint256 sub_8e2df39c;
array of address sub_5d63ebb2;
array of address sub_2c7a3dae;
mapping of address sub_ae55ce82;
mapping of address sub_42e453ec;
mapping of uint8 stor52;
mapping of uint8 stor53;
mapping of uint256 sub_3ca4c183;
mapping of uint256 sub_33f9c388;
mapping of uint8 stor56;
mapping of uint8 stor57;
mapping of uint256 sub_28b290f9;
mapping of address sub_0baaea44;
mapping of uint256 pendingWithdrawals;
uint256 sub_f5f95b3b;
uint256 claimId;
array of struct claims;
address sub_a977e168Address;
uint8 isGamePaused; offset 160
uint8 sub_76f5d96a; offset 168
uint8 sub_21423af8; offset 176
uint128 stor66; offset 168
uint128 stor66; offset 160
address foundersAddress;
mapping of uint8 stor67;
uint256 sub_1d64873b;
uint256 sub_f120dba1;
uint256 sub_c97d230f;
mapping of uint256 sub_846c4c37;
mapping of uint256 sub_8500b7b7;
mapping of uint256 sub_b60cbeb6;
mapping of uint8 stor76;
mapping of uint256 sub_62566556;

function isGamePaused() {
    return bool(isGamePaused)
}

function sub_05bdd0be(?) {
    return bool(stor53[arg1][arg2])
}

function sub_099b81ce(?) {
    return sub_099b81ce[arg1]
}

function sub_0baaea44(?) {
    return sub_0baaea44[arg1]
}

function sub_0cf9603f(?) {
    return sub_0cf9603f[arg1][arg2]
}

function sub_0f6ed86e(?) {
    return sub_0f6ed86e
}

function sub_102f9713(?) {
    return sub_102f9713[arg1]
}

function sub_15682a66(?) {
    return bool(stor76[arg1])
}

function hasReferrer(address arg1) {
    return bool(stor34[arg1])
}

function sub_19ef6a06(?) {
    return sub_19ef6a06[arg1][arg2]
}

function sub_1d64873b(?) {
    return sub_1d64873b
}

function isRegisteredUser(address arg1) {
    return bool(stor30[arg1])
}

function sub_1f90c6ed(?) {
    return bool(stor28[arg1][arg2])
}

function sub_21423af8(?) {
    return bool(sub_21423af8)
}

function isAdmin(address arg1) {
    return bool(stor67[arg1])
}

function sub_28361f57(?) {
    return sub_28361f57[arg1]
}

function sub_28b290f9(?) {
    return sub_28b290f9[arg1]
}

function sub_2c6c1c41(?) {
    return sub_2c6c1c41[arg1][arg2]
}

function sub_2c7a3dae(?) {
    require arg2 < uint256(sub_2c7a3dae[arg1])
    return address(sub_2c7a3dae[arg1][arg2])
}

function sub_33f9c388(?) {
    return sub_33f9c388[arg1][arg2]
}

function sub_3a173505(?) {
    return sub_3a173505[arg1][arg2]
}

function sub_3c6dd013(?) {
    return sub_3c6dd013[arg1]
}

function sub_3ca4c183(?) {
    return sub_3ca4c183[arg1][arg2]
}

function sub_3d0d1a79(?) {
    return sub_3d0d1a79[arg1]
}

function sub_3dc3c377(?) {
    return sub_3dc3c377
}

function founders() {
    return foundersAddress
}

function sub_41c5464e(?) {
    return sub_41c5464e[arg1]
}

function sub_42e453ec(?) {
    return sub_42e453ec[arg1][arg2]
}

function sub_4a7f6f2f(?) {
    return sub_4a7f6f2f[arg1]
}

function sub_4b39173d(?) {
    return sub_4b39173d[arg1][arg2]
}

function sub_4c438ad7(?) {
    return bool(stor57[arg1])
}

function sub_4c78e401(?) {
    return sub_4c78e401[arg1]
}

function sub_5bfcdb27(?) {
    return sub_5bfcdb27[arg1][0 len sub_5bfcdb27[arg1].length]
}

function claimId() {
    return claimId
}

function sub_5d63ebb2(?) {
    require arg2 < uint256(sub_5d63ebb2[arg1])
    return address(sub_5d63ebb2[arg1][arg2])
}

function sub_5f5d554c(?) {
    return bool(stor22[arg1][arg2])
}

function sub_62566556(?) {
    return sub_62566556[arg1]
}

function sub_628a71a3(?) {
    return sub_628a71a3[arg1]
}

function sub_6f17eb42(?) {
    return sub_6f17eb42[arg1]
}

function sub_73a9ee26(?) {
    return sub_73a9ee26[arg1]
}

function sub_76f5d96a(?) {
    return bool(sub_76f5d96a)
}

function sub_79ecf376(?) {
    return sub_79ecf376[arg1]
}

function sub_7e1e175c(?) {
    return bool(stor31[arg1])
}

function sub_846c4c37(?) {
    return sub_846c4c37[arg1]
}

function sub_8500b7b7(?) {
    return sub_8500b7b7[arg1]
}

function sub_87982ac3(?) {
    require arg2 < uint256(sub_87982ac3[arg1])
    return address(sub_87982ac3[arg1][arg2])
}

function currentRound() {
    return currentRound
}

function owner() {
    return owner
}

function sub_8e2df39c(?) {
    return sub_8e2df39c[arg1]
}

function sub_8f63b7e5(?) {
    return sub_8f63b7e5[arg1][arg2]
}

function sub_a3120724(?) {
    return sub_a3120724[arg1][arg2]
}

function claims(uint256 arg1) {
    require arg1 < claims.length
    return claims[arg1].field_0, address(claims[arg1].field_256), bool(uint8(claims[arg1].field_416)), claims[arg1].field_512
}

function sub_a977e168(?) {
    return sub_a977e168Address
}

function sub_ab24c7d2(?) {
    return bool(stor52[arg1][arg2])
}

function sub_ae55ce82(?) {
    return sub_ae55ce82[arg1]
}

function sub_b0ff59d2(?) {
    return sub_b0ff59d2[arg1][arg2]
}

function sub_b1a3883c(?) {
    return sub_b1a3883c[arg1][arg2][arg3]
}

function sub_b60cbeb6(?) {
    return sub_b60cbeb6[arg1][arg2]
}

function sub_b8232d5d(?) {
    return sub_b8232d5d[arg1][arg2]
}

function sub_be7d6226(?) {
    return sub_be7d6226[arg1]
}

function sub_c64a2e56(?) {
    return sub_c64a2e56[arg1]
}

function sub_c957387b(?) {
    return sub_c957387b[arg1][arg2]
}

function sub_c97d230f(?) {
    return sub_c97d230f
}

function sub_c9f8234f(?) {
    return sub_c9f8234f
}

function sub_d4526e68(?) {
    return bool(stor37[arg1])
}

function sub_d5de47c7(?) {
    return sub_d5de47c7[arg1][arg2]
}

function sub_da68b121(?) {
    return bool(stor56[arg1])
}

function sub_deaf0fa1(?) {
    return sub_deaf0fa1[arg1]
}

function sub_eaf1c910(?) {
    return sub_eaf1c910[arg1][arg2]
}

function sub_eef565da(?) {
    return sub_eef565da
}

function sub_f120dba1(?) {
    return sub_f120dba1
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function sub_f49916f5(?) {
    return sub_f49916f5[arg1]
}

function sub_f5f95b3b(?) {
    return sub_f5f95b3b
}

function sub_fea11fe3(?) {
    return sub_fea11fe3
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ae9fbd32(?) {
    if bool(sub_76f5d96a) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot distribute color bank prize at the moment.'
    if stor56[stor43]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Color Bank Prizes already transferred for this cbIteration'
    mem[0] = sub_f49916f5[stor41]
    mem[32] = 47
    s = 0
    idx = stor[sha3(mem[0 len 64])]
    while idx > 0:
        mem[0] = sub_42e453ec[stor13[stor41]][idx]
        mem[32] = sha3(sub_fea11fe3, 52)
        if stor52[stor43][stor51[stor13[stor41]][idx]]:
            s = s
            idx = idx - 1
            continue 
        if sub_8e2df39c[stor13[stor41]] <= 100:
            if s < sub_8e2df39c[stor13[stor41]]:
                uint256(sub_5d63ebb2[stor43])++
                address(sub_5d63ebb2[stor43][uint256(sub_5d63ebb2[stor43])]) = sub_42e453ec[stor13[stor41]][idx]
                require s + 1 >= s
                mem[0] = sub_42e453ec[stor13[stor41]][idx]
                mem[32] = sha3(sub_fea11fe3, 52)
                stor52[stor43][stor51[stor13[stor41]][idx]] = 1
                s = s + 1
                idx = idx - 1
                continue 
        else:
            if s < 100:
                uint256(sub_5d63ebb2[stor43])++
                address(sub_5d63ebb2[stor43][uint256(sub_5d63ebb2[stor43])]) = sub_42e453ec[stor13[stor41]][idx]
                require s + 1 >= s
                mem[0] = sub_42e453ec[stor13[stor41]][idx]
                mem[32] = sha3(sub_fea11fe3, 52)
                stor52[stor43][stor51[stor13[stor41]][idx]] = 1
                s = s + 1
                idx = idx - 1
                continue 
        idx = 0
        s = 0
        t = 0
        while idx < uint256(sub_5d63ebb2[stor43]):
            require idx < uint256(sub_5d63ebb2[stor43])
            mem[0] = address(sub_5d63ebb2[stor43][idx])
            mem[32] = sha3(sub_f49916f5[stor41], sha3(sub_fea11fe3, 46))
            idx = idx + 1
            s = s + sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]
            t = address(sub_5d63ebb2[stor43][idx])
            continue 
        idx = 0
        t = 160 * uint256(sub_5d63ebb2[stor43])
        while idx < uint256(sub_5d63ebb2[stor43]):
            require idx < uint256(sub_5d63ebb2[stor43])
            if not sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]:
                require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) > 0
                require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
                mem[0] = address(sub_5d63ebb2[stor43][idx])
                mem[32] = sha3(sub_fea11fe3, 54)
                sub_3ca4c183[stor43][address(stor48[stor43][idx])] = 0 / s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
            else:
                require sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]
                require sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] * sub_c64a2e56[stor41] / sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] == sub_c64a2e56[stor41]
                require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) > 0
                require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
                mem[0] = address(sub_5d63ebb2[stor43][idx])
                mem[32] = sha3(sub_fea11fe3, 54)
                sub_3ca4c183[stor43][address(stor48[stor43][idx])] = sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] * sub_c64a2e56[stor41] / s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
            idx = idx + 1
            t = address(sub_5d63ebb2[stor43][idx])
            continue 
        sub_3ca4c183[stor43][stor15[stor41]] += sub_c64a2e56[stor41]
        s = 0
        idx = 0
        t = 0
        while idx < uint256(sub_5d63ebb2[stor43]):
            require idx < uint256(sub_5d63ebb2[stor43])
            mem[0] = address(sub_5d63ebb2[stor43][idx])
            mem[32] = sha3(sub_fea11fe3, 54)
            if not sub_3ca4c183[stor43][address(stor48[stor43][idx])]:
                s = s
                idx = idx + 1
                t = address(sub_5d63ebb2[stor43][idx])
                continue 
            mem[0] = address(sub_5d63ebb2[stor43][idx])
            mem[32] = sha3(sub_fea11fe3, 54)
            call address(sub_5d63ebb2[stor43][idx]) with:
               value sub_3ca4c183[stor43][address(stor48[stor43][idx])] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = sub_3ca4c183[stor43][address(stor48[stor43][idx])]
            emit 0x9b540f57: sub_3ca4c183[stor43][address(stor48[stor43][idx])], currentRound, sub_fea11fe3, address(sub_5d63ebb2[stor43][idx])
            s = sub_3ca4c183[stor43][address(stor48[stor43][idx])]
            idx = idx + 1
            t = address(sub_5d63ebb2[stor43][idx])
            continue 
        Mask(88, 0, stor66.field_168) = 0
        stor56[stor43] = 1
        require currentRound + 1 >= currentRound
        currentRound++
        require sub_fea11fe3 + 1 >= sub_fea11fe3
        sub_fea11fe3++
        Mask(96, 0, stor66.field_160) = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(sub_5d63ebb2[stor43]):
        require idx < uint256(sub_5d63ebb2[stor43])
        mem[0] = address(sub_5d63ebb2[stor43][idx])
        mem[32] = sha3(sub_f49916f5[stor41], sha3(sub_fea11fe3, 46))
        idx = idx + 1
        s = s + sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]
        t = address(sub_5d63ebb2[stor43][idx])
        continue 
    idx = 0
    t = 160 * uint256(sub_5d63ebb2[stor43])
    while idx < uint256(sub_5d63ebb2[stor43]):
        require idx < uint256(sub_5d63ebb2[stor43])
        if not sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]:
            require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) > 0
            require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
            mem[0] = address(sub_5d63ebb2[stor43][idx])
            mem[32] = sha3(sub_fea11fe3, 54)
            sub_3ca4c183[stor43][address(stor48[stor43][idx])] = 0 / s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
        else:
            require sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])]
            require sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] * sub_c64a2e56[stor41] / sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] == sub_c64a2e56[stor41]
            require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) > 0
            require s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
            mem[0] = address(sub_5d63ebb2[stor43][idx])
            mem[32] = sha3(sub_fea11fe3, 54)
            sub_3ca4c183[stor43][address(stor48[stor43][idx])] = sub_b1a3883c[stor43][stor13[stor41]][address(stor48[stor43][idx])] * sub_c64a2e56[stor41] / s * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43]) * uint256(sub_5d63ebb2[stor43])
        idx = idx + 1
        t = address(sub_5d63ebb2[stor43][idx])
        continue 
    sub_3ca4c183[stor43][stor15[stor41]] += sub_c64a2e56[stor41]
    s = 0
    idx = 0
    t = 0
    while idx < uint256(sub_5d63ebb2[stor43]):
        require idx < uint256(sub_5d63ebb2[stor43])
        mem[0] = address(sub_5d63ebb2[stor43][idx])
        mem[32] = sha3(sub_fea11fe3, 54)
        if not sub_3ca4c183[stor43][address(stor48[stor43][idx])]:
            s = s
            idx = idx + 1
            t = address(sub_5d63ebb2[stor43][idx])
            continue 
        mem[0] = address(sub_5d63ebb2[stor43][idx])
        mem[32] = sha3(sub_fea11fe3, 54)
        call address(sub_5d63ebb2[stor43][idx]) with:
           value sub_3ca4c183[stor43][address(stor48[stor43][idx])] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = sub_3ca4c183[stor43][address(stor48[stor43][idx])]
        emit 0x9b540f57: sub_3ca4c183[stor43][address(stor48[stor43][idx])], currentRound, sub_fea11fe3, address(sub_5d63ebb2[stor43][idx])
        s = sub_3ca4c183[stor43][address(stor48[stor43][idx])]
        idx = idx + 1
        t = address(sub_5d63ebb2[stor43][idx])
        continue 
    Mask(88, 0, stor66.field_168) = 0
    stor56[stor43] = 1
    require currentRound + 1 >= currentRound
    currentRound++
    require sub_fea11fe3 + 1 >= sub_fea11fe3
    sub_fea11fe3++
    Mask(96, 0, stor66.field_160) = 0
}



}
