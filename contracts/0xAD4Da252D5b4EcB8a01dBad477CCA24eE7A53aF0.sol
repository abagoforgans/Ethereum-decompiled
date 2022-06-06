contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
array of struct stor5;
mapping of uint8 stor6;
array of struct dnas;

function dnas(uint256 arg1) {
    require arg1 < dnas.length
    return dnas[arg1].field_0, dnas[arg1].field_256
}

function owner() {
    return owner
}

function sub_d499a1d6(?) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function pauseContract() {
    require msg.sender == owner
    stor2 = 0
}

function activateContract() {
    require msg.sender == owner
    stor2 = 1
}

function addAdmin(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function addDonator(address arg1) {
    if not stor1[address(msg.sender)]:
        require msg.sender == owner
    stor6[address(arg1)] = 1
}

function deleteDonator(address arg1) {
    if not stor1[address(msg.sender)]:
        require msg.sender == owner
    stor6[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function giveaway(address arg1, uint256 arg2, uint8 arg3) {
    require stor2
    require stor3 > 0
    require stor2
    if not stor6[address(msg.sender)]:
        revert with 0, 'donator not registered'
    dnas.length++
    dnas[dnas.length].field_0 = arg2
    dnas[dnas.length].field_256 = arg3
    stor5[address(arg1)].field_0++
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = dnas.length
    stor3--
    emit NewGiveway(address(arg1), arg2, arg3);
}

function airdrop(address arg1, uint256 arg2) {
    require stor2
    if block.timestamp > stor4:
        revert with 0, 'airdrop ended'
    require stor2
    if not stor6[address(msg.sender)]:
        revert with 0, 'donator not registered'
    dnas.length++
    dnas[dnas.length].field_0 = arg2
    dnas[dnas.length].field_256 = 10
    stor5[address(arg1)].field_0++
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = dnas.length
    emit NewAirdrop(address(arg1), arg2);
}

function getAddressDnaIds(address arg1) {
    if not stor5[address(arg1)].field_0:
        mem[(32 * stor5[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor5[address(arg1)].field_0) + 160] = stor5[address(arg1)].field_0
        mem[(32 * stor5[address(arg1)].field_0) + 192 len floor32(stor5[address(arg1)].field_0)] = mem[128 len floor32(stor5[address(arg1)].field_0)]
        return memory
          from (32 * stor5[address(arg1)].field_0) + 128
           len (96 * stor5[address(arg1)].field_0) + 64
    mem[128] = stor5[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor5[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor5[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5[address(arg1)].field_0) + 192 len floor32(stor5[address(arg1)].field_0)] = mem[128 len floor32(stor5[address(arg1)].field_0)]
    return Array(len=stor5[address(arg1)].field_0, data=mem[128 len floor32(stor5[address(arg1)].field_0)], mem[(32 * stor5[address(arg1)].field_0) + floor32(stor5[address(arg1)].field_0) + 192 len (32 * stor5[address(arg1)].field_0) - floor32(stor5[address(arg1)].field_0)]), 
}



}
