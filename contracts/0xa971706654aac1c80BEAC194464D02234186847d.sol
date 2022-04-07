contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor4;
array of struct stor5;
address stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require msg.sender == stor0
    stor1 = code.data[11963 len 32]
    stor7 = code.data[12027 len 32]
    if code.data[12007 len 20] > 0:
        stor6 = code.data[12007 len 20]
    emit 0xd71be580: stor1, code.data[12007 len 20]
    require msg.sender == stor0
    if stor4[0]:
        require stor4[0] < stor5.length
        stor5[stor4[0]].field_160 = 0
        stor5[stor4[0]].field_168 = 0
        stor5[stor4[0]].field_256 = 0
    else:
        stor4[0] = stor5.length
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = 2 * stor5.length + 1
            while 2 * stor5.length > idx:
                stor5[idx].field_0 = 0
                stor5[idx].field_160 = 0
                stor5[idx].field_168 = 0
                stor5[idx].field_256 = 0
                idx = idx + 2
                continue 
        require stor5.length < stor5.length
        stor5[stor5.length].field_0 = 0
        stor5[stor5.length].field_256 = 0
        stor5[stor5.length].field_160 = 0
        stor5[stor5.length].field_168 = 0
        stor5[stor5.length].field_256 = 0
    emit MembershipChanged(0, 1);
    return code.data[1528 len 10435]
}



// =====================  Runtime code  =====================


#
#  - createRequest(address arg1, uint256 arg2, string arg3, bytes arg4, bytes arg5)
#  - approveRequest(uint256 arg1, bool arg2, string arg3)
#
address owner;
uint256 requiredApprovals;
array of struct proposals;
uint256 numProposals;
mapping of uint256 memberId;
array of struct members;
address stor6;
uint256 minBalance;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[480] = stor[sha3((12 * arg1) + ('name', 'proposals', 2) + 4)].field_0
    idx = 480
    s = 0
    while stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 480 > idx + 32:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'proposals', 2) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + 480] = stor[(12 * arg1) + ('name', 'proposals', 2) + 5].length
    mem[stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + 512] = stor[sha3((12 * arg1) + ('name', 'proposals', 2) + 5)].field_0
    idx = stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + 512
    s = 0
    while stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + stor[(12 * arg1) + ('name', 'proposals', 2) + 5].length + 512 > idx + 32:
        mem[idx + 32] = stor[s + sha3((12 * arg1) + ('name', 'proposals', 2) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           Array(len=stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length, data=mem[480 len stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + stor[(12 * arg1) + ('name', 'proposals', 2) + 5].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 5].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 5].length + 32 % 32) + 32]),
           stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 2) + 4].length + 32 % 32) + 384,
           bool(proposals[arg1].field_1536),
           bool(proposals[arg1].field_1544),
           proposals[arg1].field_1792,
           proposals[arg1].field_2048,
           proposals[arg1].field_2304
}

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return numProposals
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1].field_0, bool(members[arg1].field_160), bool(members[arg1].field_168), members[arg1].field_256
}

function owner() {
    return owner
}

function requiredApprovals() {
    return requiredApprovals
}

function minBalance() {
    return minBalance
}

function deactivateTeam() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeSettings(uint256 arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    requiredApprovals = arg1
    minBalance = arg3
    if arg2 > 0:
        stor6 = arg2
    emit 0xd71be580: requiredApprovals, arg2
}

function toWei(uint256 arg1) {
    require ext_code.size(stor6)
    call stor6.price() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor6)
    call stor6.price() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    return (10^18 * arg1 / ext_call.return_data[0])
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 128] = address(arg2)
    mem[ceil32(arg4.length) + 148] = arg3
    mem[ceil32(arg4.length) + 180 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 212 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    return (proposals[arg1].field_2304 == sha3(arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 180 len arg4.length % 32]))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(arg3)
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = arg1
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = arg3
    mem[ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg4.length) + 256] = arg4.length
    if arg4.length:
        mem[ceil32(arg4.length) + 288] = mem[128]
        mem[ceil32(arg4.length) + 320 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
    emit receivedTokens(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=mem[ceil32(arg4.length) + 288 len arg4.length]));
}

function changeMember(address arg1, bool arg2, bool arg3, uint256 arg4) {
    require msg.sender == owner
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < members.length
        members[stor4[address(arg1)]].field_160 = Mask(96, 0, arg2)
        members[stor4[address(arg1)]].field_168 = Mask(88, 0, arg3)
        members[stor4[address(arg1)]].field_256 = arg4
    else:
        memberId[address(arg1)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            idx = 2 * members.length + 1
            while 2 * members.length > idx:
                members[idx].field_0 = 0
                members[idx].field_160 = 0
                members[idx].field_168 = 0
                members[idx].field_256 = 0
                idx = idx + 2
                continue 
        require members.length < members.length
        members[members.length].field_0 = arg1
        members[members.length].field_160 = Mask(96, 0, arg2)
        members[members.length].field_168 = Mask(88, 0, arg3)
        members[members.length].field_256 = arg4
    emit MembershipChanged(address(arg1), 1);
}

function removeMember(address arg1) {
    require msg.sender == owner
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < members.length - 1:
        require idx + 1 < members.length
        require idx < members.length
        mem[0] = 5
        members[idx].field_0 = members[idx + 1].field_0
        members[idx].field_160 = Mask(96, 0, bool(members[idx + 1].field_160))
        members[idx].field_168 = Mask(88, 0, bool(members[idx + 1].field_168))
        members[idx].field_256 = members[idx + 1].field_256
        idx = idx + 1
        continue 
    require members.length - 1 < members.length
    members[members.length - 1].field_0 = 0
    members[members.length - 1].field_160 = 0
    members[members.length - 1].field_168 = 0
    members[members.length - 1].field_256 = 0
    members.length--
    if not members.length <= members.length - 1:
        idx = 2 * members.length - 1
        while 2 * members.length > idx:
            members[idx].field_0 = 0
            members[idx].field_160 = 0
            members[idx].field_168 = 0
            members[idx].field_256 = 0
            idx = idx + 2
            continue 
}

function tryExecuteProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    if not proposals[arg1].field_1536:
        mem[ceil32(arg2.length) + 128] = proposals[arg1].field_0
        mem[ceil32(arg2.length) + 148] = proposals[arg1].field_512
        mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 212 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        if proposals[arg1].field_2304 == sha3(proposals[arg1].field_0, proposals[arg1].field_512, call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 180 len arg2.length % 32]):
            if proposals[arg1].field_1792 >= requiredApprovals:
                if proposals[arg1].field_2048 <= 0:
                    proposals[arg1].field_1544 = 0
                else:
                    mem[ceil32(arg2.length) + 160] = 0
                    require ext_code.size(stor6)
                    call stor6.price() with:
                         gas gas_remaining - 710 wei
                    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        if not arg2.length:
                            if not arg2.length % 32:
                                call proposals[arg1].field_0 with:
                                   funct ext_call.return_data[0 len 4]
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                                call proposals[arg1].field_0 with:
                                   funct ext_call.return_data[0 len 4]
                                     gas gas_remaining - 34710 wei
                                    args ext_call.return_data[4 len 28], mem[ceil32(arg2.length) + 160 len floor32(arg2.length)]
                            if ext_call.success:
                                proposals[arg1].field_1536 = 1
                        else:
                            mem[ceil32(arg2.length) + 128] = mem[128]
                            mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                call proposals[arg1].field_0.mem[ceil32(arg2.length) + 128 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                                call proposals[arg1].field_0.mem[ceil32(arg2.length) + 128 len 4] with:
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
                            if ext_call.success:
                                proposals[arg1].field_1536 = 1
                    else:
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(stor6)
                        call stor6.price() with:
                             gas gas_remaining - 710 wei
                        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                        if not arg2.length:
                            if not arg2.length % 32:
                                call proposals[arg1].field_0 with:
                                   funct ext_call.return_data[0 len 4]
                                   value 10^18 * proposals[arg1].field_512 / ext_call.return_data[0] wei
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                                call proposals[arg1].field_0 with:
                                   funct ext_call.return_data[0 len 4]
                                   value 10^18 * proposals[arg1].field_512 / ext_call.return_data[0] wei
                                     gas gas_remaining - 34710 wei
                                    args ext_call.return_data[4 len 28], mem[ceil32(arg2.length) + 160 len floor32(arg2.length)]
                            if ext_call.success:
                                proposals[arg1].field_1536 = 1
                        else:
                            mem[ceil32(arg2.length) + 128] = mem[128]
                            mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                            if not arg2.length % 32:
                                call proposals[arg1].field_0.mem[ceil32(arg2.length) + 128 len 4] with:
                                   value 10^18 * proposals[arg1].field_512 / ext_call.return_data[0] wei
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                            else:
                                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                                call proposals[arg1].field_0.mem[ceil32(arg2.length) + 128 len 4] with:
                                   value 10^18 * proposals[arg1].field_512 / ext_call.return_data[0] wei
                                     gas gas_remaining - 34710 wei
                                    args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
                            if ext_call.success:
                                proposals[arg1].field_1536 = 1
                    proposals[arg1].field_1544 = 1
                emit ProposalTallied(arg1, proposals[arg1].field_2048, proposals[arg1].field_1792, bool(proposals[arg1].field_1544));
}



}
