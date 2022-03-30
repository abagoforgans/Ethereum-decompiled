contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;

function _fallback() {
    stor3 = code.data[8086 len 20]
    stor2 = code.data[8118 len 20]
    stor1 = code.data[8150 len 20]
    return code.data[121 len 7953]
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
    emit CampaignCanceled()
}

function rejectMilestone(uint256 arg1) {
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_1280 == msg.sender
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 == 1
    stor0[arg1].field_2304 = 0
    emit ProposalStatusChanged(arg1, 0);
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

function cancelMilestone(uint256 arg1) {
    require recipientAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    if stor0[arg1].field_2304:
        require stor0[arg1].field_2304 <= 3
        require stor0[arg1].field_2304 == 1
    stor0[arg1].field_2304 = 3
    emit ProposalStatusChanged(arg1, 3);
}

function markMilestoneComplete(uint256 arg1) {
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    if stor0[arg1].field_1024 != msg.sender:
        require recipientAddress == msg.sender
    require stor0[arg1].field_2304 <= 3
    require not stor0[arg1].field_2304
    require block.timestamp >= stor0[arg1].field_512
    require block.timestamp <= stor0[arg1].field_768
    stor0[arg1].field_2304 = 1
    stor0[arg1].field_2560 = block.timestamp
    emit ProposalStatusChanged(arg1, 1);
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
    require stor0[arg1].field_1280 == msg.sender
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 == 1
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 != 2
    stor0[arg1].field_2304 = 2
    mem[96] = stor[sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_0
    idx = 96
    s = 0
    while stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1792.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2304 <= 3
    emit ProposalStatusChanged(arg1, stor0[arg1].field_2304);
}

function arbitrateApproveMilestone(uint256 arg1) {
    require arbitratorAddress == msg.sender
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    if stor0[arg1].field_2304:
        require stor0[arg1].field_2304 <= 3
        require stor0[arg1].field_2304 == 1
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 != 2
    stor0[arg1].field_2304 = 2
    mem[96] = stor[sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_0
    idx = 96
    s = 0
    while stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1792.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2304 <= 3
    emit ProposalStatusChanged(arg1, stor0[arg1].field_2304);
}

function requestMilestonePayment(uint256 arg1) {
    require not uint8(stor3.field_160)
    require not uint8(stor3.field_168)
    require arg1 < stor0.length
    if stor0[arg1].field_1024 != msg.sender:
        require recipientAddress == msg.sender
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 == 1
    require block.timestamp >= stor0[arg1].field_2560 + stor0[arg1].field_1536
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    require stor0[arg1].field_2304 != 2
    stor0[arg1].field_2304 = 2
    mem[96] = stor[sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_0
    idx = 96
    s = 0
    while stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call stor0[arg1].field_1792.mem[96 len 4] with:
         gas gas_remaining - 34050 wei
        args mem[100 len stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 32 % 32) - 4]
    require ext_call.success
    require stor0[arg1].field_2304 <= 3
    emit ProposalStatusChanged(arg1, stor0[arg1].field_2304);
}

function milestones(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_2304 <= 3
    mem[480] = stor0[arg1].field_0
    idx = 480
    s = 0
    while stor0[arg1].length + 480 > idx + 32:
        mem[idx + 32] = stor0[(11 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 480] = stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 512] = stor[sha3((11 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 512
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 512 > idx + 32:
        mem[idx + 32] = stor[s + sha3((11 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 544] = stor[sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_0
    idx = stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 544
    s = 0
    while stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 544 > idx + 32:
        mem[idx + 32] = stor[s + sha3((11 * arg1) + ('name', 'stor0', 0) + 8)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[480 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 32], stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length, mem[stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 544 len stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 8].length + 32 % 32)]), 
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + 384,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32) + stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(11 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 416,
           stor0[arg1].field_2304,
           stor0[arg1].field_2560
}



}
