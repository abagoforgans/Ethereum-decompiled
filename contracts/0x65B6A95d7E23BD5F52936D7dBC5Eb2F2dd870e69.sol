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
mapping of uint256 sub_e01a7739;
uint256 sub_f5f95b3b;
uint256 claimId;
array of struct claims;
address sub_a977e168Address;
uint8 isGamePaused; offset 160
uint8 sub_76f5d96a; offset 168
uint8 sub_21423af8; offset 176
uint128 stor66; offset 160
address foundersAddress;
mapping of uint8 stor67;
address sub_f616df5aAddress;
address sub_f30d53c5Address;
uint256 sub_1d64873b;
uint256 sub_f120dba1;
uint256 sub_c97d230f;
mapping of uint256 sub_846c4c37;
mapping of uint256 sub_8500b7b7;
mapping of uint256 sub_b60cbeb6;
mapping of uint8 stor76;
mapping of uint256 sub_62566556;
mapping of uint8 stor78;

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

function sub_82e0a5d7(?) {
    return bool(stor78[arg1][arg2])
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
    return claims[arg1].field_0, claims[arg1].field_256, bool(claims[arg1].field_416), claims[arg1].field_512
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

function sub_e01a7739(?) {
    return sub_e01a7739[arg1]
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

function sub_f30d53c5(?) {
    return sub_f30d53c5Address
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

function sub_f616df5a(?) {
    return sub_f616df5aAddress
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

function pauseGame() {
    if bool(stor67[address(msg.sender)]) != 1:
        revert with 0, 'You don't have admin rights.'
    if isGamePaused:
        revert with 0, 'Game is already paused'
    stor66 = 1
}

function resumeGame() {
    if bool(stor67[address(msg.sender)]) != 1:
        revert with 0, 'You don't have admin rights.'
    if bool(isGamePaused) != 1:
        revert with 0, 'Game is already live'
    stor66 = 0
}

function withdrawEther() {
    if bool(stor67[address(msg.sender)]) != 1:
        revert with 0, 'You don't have admin rights.'
    if bool(isGamePaused) != 1:
        revert with 0, 'Can withdraw when game is live'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c64a2e56[stor41] = 0
    sub_4c78e401[stor41] = 0
    emit 0x34a1d9ed: eth.balance(this.address), sub_c64a2e56[stor41], sub_4c78e401[stor41], block.timestamp
    return 1
}



}
