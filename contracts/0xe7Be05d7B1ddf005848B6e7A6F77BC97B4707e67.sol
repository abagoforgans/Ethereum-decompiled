contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
array of struct stor3;
mapping of struct checkRewards;
uint256 claimCounter;
uint8 stor6;
uint256 stor6;

function checkRewards() {
    return checkRewards[msg.sender].field_256
}

function claimCounter() {
    return claimCounter
}

function owner() {
    return owner
}

function contractStopped() {
    return bool(uint8(stor6))
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function toggleContractStopped() {
    require msg.sender == owner
    uint256(stor6) = not uint8(stor6) or Mask(248, 8, uint256(stor6))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRewards() {
    require not uint8(stor6)
    require not checkRewards[msg.sender].field_512
    require checkRewards[msg.sender].field_0 == msg.sender
    require ext_code.size(this.address)
    call this.address.0x2aeaa291 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require not ext_call.success
    revert with ext_call.return_data[0 len return_data.size]
}

function getAllDelegatorAddress() {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function activateCommunityFund() {
    require msg.sender == owner
    require block.timestamp > 1538576645
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function updateDelegatorRewards(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 256
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + 224] = 0
    require msg.sender == owner
    s = (32 * arg2.length) + (32 * arg1.length) + 160
    idx = 0
    while idx < arg1.length:
        _22 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[96]
        mem[_22] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_22 + 32] = 10^14 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[_22 + 64] = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        checkRewards[mem[(32 * idx) + 140 len 20]].field_0 = mem[_22 + 12 len 20]
        checkRewards[mem[(32 * idx) + 140 len 20]].field_256 = mem[_22 + 32]
        checkRewards[mem[(32 * idx) + 140 len 20]].field_512 = 0
        require idx < mem[96]
        stor3.length++
        mem[0] = 3
        stor3[stor3.length].field_0 = mem[(32 * idx) + 140 len 20]
        s = _22
        idx = idx + 1
        continue 
    return 1
}



}
