contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor3 = code.data[7831 len 20]
    stor2 = code.data[7863 len 20]
    stor1 = code.data[7895 len 20]
    return code.data[136 len 7683]
}



// =====================  Runtime code  =====================


#
#  - acceptProposedMilestones(bytes32 arg1)
#
array of struct stor0;
address recipientAddress;
address donorAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
address arbitratorAddress;
array of uint256 proposedMilestones;

function proposedMilestones() {
    return proposedMilestones[0 len proposedMilestones.length]
}

function changingMilestones() {
    return bool(uint8(stor3.field_168))
}

function campaignCanceled() {
    return bool(uint8(stor3.field_160))
}

function donor() {
    return donorAddress
}

function recipient() {
    return recipientAddress
}

function arbitrator() {
    return arbitratorAddress
}

function numberOfMilestones() {
    return stor0.length
}

function _fallback() payable {
    revert 
}

function changeDonor(address arg1) {
    require donorAddress == msg.sender
    donorAddress = arg1
}

function changeRecipient(address arg1) {
    require recipientAddress == msg.sender
    recipientAddress = arg1
}

function changeArbitrator(address arg1) {
    require arbitratorAddress == msg.sender
    arbitratorAddress = arg1
}

function arbitrateCancelCampaign() {
    require arbitratorAddress == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit CampaignCalncelled()
}

function rejectMilestone(uint256 arg1) {
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_1024 == msg.sender
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 == 1
    stor0[arg1].field_2048 = 0
    emit 0x563346ab: arg1, 0
}

function cancelMilestone(uint256 arg1) {
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    if stor0[arg1].field_2048:
        require stor0[arg1].field_2048 <= 3
        require stor0[arg1].field_2048 == 1
    stor0[arg1].field_2048 = 3
    emit 0x563346ab: arg1, 3
}

function unproposeMilestones() {
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    proposedMilestones.length = 0
    if 31 < proposedMilestones.length:
        idx = 0
        while proposedMilestones.length + 31 / 32 > idx:
            proposedMilestones[idx] = 0
            idx = idx + 1
            continue 
    uint8(stor3.field_168) = 0
    emit NewMilestoneListUnproposed()
}

function milestoneCompleted(uint256 arg1) {
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    require not stor0[arg1].field_2048
    require block.timestamp >= stor0[arg1].field_512
    require block.timestamp <= stor0[arg1].field_768
    stor0[arg1].field_2048 = 1
    stor0[arg1].field_2304 = block.timestamp
    emit 0x563346ab: arg1, 1
}

function proposeMilestones(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    proposedMilestones.length = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        proposedMilestones[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if proposedMilestones.length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        proposedMilestones[Mask(251, 0, arg1.length + 31) >> 5] = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while proposedMilestones.length + 31 / 32 > idx:
            proposedMilestones[idx] = 0
            idx = idx + 1
            continue 
    uint8(stor3.field_168) = 1
    emit NewMilestoneListProposed()
}

function approveCompletedMilestone(uint256 arg1) {
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_1024 == msg.sender
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 == 1
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 != 2
    stor0[arg1].field_2048 = 2
    mem[96] = stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_0
    idx = 96
    s = 0
    while stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1536.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2048 <= 3
    emit 0x563346ab: arg1, stor0[arg1].field_2048
}

function collectMilestonePayment(uint256 arg1) {
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 == 1
    require block.timestamp >= stor0[arg1].field_2304 + stor0[arg1].field_1280
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 != 2
    stor0[arg1].field_2048 = 2
    mem[96] = stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_0
    idx = 96
    s = 0
    while stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1536.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2048 <= 3
    emit 0x563346ab: arg1, stor0[arg1].field_2048
}

function arbitrateApproveMilestone(uint256 arg1) {
    require arbitratorAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    if stor0[arg1].field_2048:
        require stor0[arg1].field_2048 <= 3
        require stor0[arg1].field_2048 == 1
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    require stor0[arg1].field_2048 != 2
    stor0[arg1].field_2048 = 2
    mem[96] = stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_0
    idx = 96
    s = 0
    while stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1536.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2048 <= 3
    emit 0x563346ab: arg1, stor0[arg1].field_2048
}

function milestones(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_2048 <= 3
    mem[448] = stor0[arg1].field_0
    idx = 448
    s = 0
    while stor0[arg1].length + 448 > idx + 32:
        mem[idx + 32] = stor0[(10 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 448] = stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 480] = stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 480
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 480 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 512] = stor[sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 512
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 512 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) + ('name', 'stor0', 0) + 7)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[448 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 32], stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length, mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 512 len stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 7].length + 32 % 32)]), 
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 352,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(10 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 384,
           stor0[arg1].field_2048,
           stor0[arg1].field_2304
}



}
