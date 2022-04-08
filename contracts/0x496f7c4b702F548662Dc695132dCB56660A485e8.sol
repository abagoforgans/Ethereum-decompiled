contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of struct stor2;
array of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() {
    mem[96 len -7907] = code.data[9533 len -7907]
    stor0 = msg.sender
    mem[64] = -7747
    require stor0 == msg.sender
    if stor1[0]:
        require stor1[0] < stor2.length
        uint256(stor2[stor1[0]].field_256) = 0
        uint8(stor2[stor1[0]].field_512) = 0
        bool(stor2[stor1[0]].field_768) = 0
        uint255(stor2[stor1[0]].field_769) = 0
        Mask(248, 0, stor2[stor1[0]].field_776) = 0
        idx = 0
        while stor[(6 * stor1[0]) + ('name', 'stor2', 2) + 3].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1[0]) + ('name', 'stor2', 2) + 3)].field_0) = 0
            idx = idx + 1
            continue 
        bool(stor2[stor1[0]].field_1024) = 0
        uint255(stor2[stor1[0]].field_1025) = 0
        Mask(248, 0, stor2[stor1[0]].field_1032) = mem[-7747 len 31]
        idx = 0
        while stor[(6 * stor1[0]) + ('name', 'stor2', 2) + 4].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor1[0]) + ('name', 'stor2', 2) + 4)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        stor1[0] = stor2.length
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = (6 * stor2.length) + 6
            while sha3(2) + (6 * stor2.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint8(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 4].length:
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
        mem[64] = -7555
        require stor2.length < stor2.length
        address(stor2[stor2.length].field_0) = 0
        stor2[stor2.length].field_256 % 1 = 0
        uint256(stor2[stor2.length].field_256) = 0
        uint8(stor2[stor2.length].field_512) = 0
        bool(stor2[stor2.length].field_768) = 0
        uint255(stor2[stor2.length].field_769) = 0
        Mask(248, 0, stor2[stor2.length].field_776) = 0
        idx = 0
        while stor[(6 * stor2.length) + ('name', 'stor2', 2) + 3].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor2.length) + ('name', 'stor2', 2) + 3)].field_0) = 0
            idx = idx + 1
            continue 
        bool(stor2[stor2.length].field_1024) = 0
        uint255(stor2[stor2.length].field_1025) = 0
        Mask(248, 0, stor2[stor2.length].field_1032) = 0
        idx = 0
        while stor[(6 * stor2.length) + ('name', 'stor2', 2) + 4].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * stor2.length) + ('name', 'stor2', 2) + 4)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor2[stor2.length].field_1280) = block.timestamp
    emit MembershipChanged(0);
    require stor0 == msg.sender
    stor5 = mem[96]
    stor6 = mem[128]
    emit 0x4e5482c9: mem[96], mem[128]
    stor7 = mem[192]
    stor10 = mem[224]
    stor8 = mem[256]
    stor11 = mem[288]
    stor9 = mem[320]
    stor12 = mem[352]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[1626 len 7907]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 memberId;
array of struct members;
array of uint256 sub_3a1773cb;
array of struct sub_a9183579;
uint256 sub_a98fcb51;
uint256 debatingPeriodInMinutes;
uint256 sub_99942057;
uint256 sub_c5e5d753;
uint256 sub_656cbfb9;
uint256 tier1;
uint256 tier2;
uint256 tier3;
array of struct proposals;
uint256 numProposals;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[448] = uint256(stor[sha3((11 * arg1) + ('name', 'proposals', 13) + 2)].field_0)
    idx = 448
    s = 0
    while stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 448 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((11 * arg1) + ('name', 'proposals', 13) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + 448] = stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length
    mem[stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + 480] = uint256(stor[sha3((11 * arg1) + ('name', 'proposals', 13) + 3)].field_0)
    idx = stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + 480
    s = 0
    while stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length + 480 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((11 * arg1) + ('name', 'proposals', 13) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length, data=mem[448 len stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length + 32 % 32) + 32]),
           stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + (floor32(stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length - 1) + -stor[(11 * arg1) + ('name', 'proposals', 13) + 2].length + 32 % 32) + 352,
           uint256(proposals[arg1].field_1024),
           bool(uint8(proposals[arg1].field_1280)),
           bool(uint8(proposals[arg1].field_1288)),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792),
           uint256(proposals[arg1].field_2048)
}

function tier2() {
    return tier2
}

function memberId(address arg1) {
    return memberId[arg1]
}

function sub_3a1773cb(?) {
    return sub_3a1773cb[0 len sub_3a1773cb.length]
}

function numProposals() {
    return numProposals
}

function tier3() {
    return tier3
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[320] = uint256(stor[sha3((6 * arg1) + ('name', 'members', 2) + 3)].field_0)
    idx = 320
    s = 0
    while stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'members', 2) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + 320] = stor[(6 * arg1) + ('name', 'members', 2) + 4].length
    mem[stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + 352] = uint256(stor[sha3((6 * arg1) + ('name', 'members', 2) + 4)].field_0)
    idx = stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + 352
    s = 0
    while stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + stor[(6 * arg1) + ('name', 'members', 2) + 4].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'members', 2) + 4)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           uint256(members[arg1].field_256),
           bool(uint8(members[arg1].field_512)),
           Array(len=stor[(6 * arg1) + ('name', 'members', 2) + 3].length, data=mem[320 len stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + stor[(6 * arg1) + ('name', 'members', 2) + 4].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 4].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 4].length + 32 % 32) + 32]),
           stor[(6 * arg1) + ('name', 'members', 2) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'members', 2) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'members', 2) + 3].length + 32 % 32) + 224,
           uint256(members[arg1].field_1280)
}

function sub_656cbfb9(?) {
    return sub_656cbfb9
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function owner() {
    return owner
}

function sub_99942057(?) {
    return sub_99942057
}

function sub_a9183579(?) {
    require arg1 < sub_a9183579.length
    mem[224] = uint256(sub_a9183579[arg1].field_0)
    idx = 224
    s = 0
    while sub_a9183579[arg1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(sub_a9183579[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_a9183579[arg1].length, data=mem[224 len sub_a9183579[arg1].length + (floor32(sub_a9183579[arg1].length - 1) + -sub_a9183579[arg1].length + 32 % 32)]), 
           bool(uint8(sub_a9183579[arg1].field_256)),
           uint256(sub_a9183579[arg1].field_512)
}

function sub_a98fcb51(?) {
    return sub_a98fcb51
}

function tier1() {
    return tier1
}

function sub_c5e5d753(?) {
    return sub_c5e5d753
}

function _fallback() payable {
    revert
}

function sub_f981e912(?) {
    require owner == msg.sender
    sub_3a1773cb[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit OwnerChanged(arg1);
}

function sub_5f6268b9(?) {
    require owner == msg.sender
    require arg1 < sub_a9183579.length
    uint8(sub_a9183579[arg1].field_256) = 0
    emit 0x500a1f56: arg1
}

function changeVotingRules(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sub_a98fcb51 = arg1
    debatingPeriodInMinutes = arg2
    emit 0x4e5482c9: arg1, arg2
}

function sub_c320bc8a(?) {
    require owner == msg.sender
    sub_99942057 = arg1
    tier1 = arg2
    sub_c5e5d753 = arg3
    tier2 = arg4
    sub_656cbfb9 = arg5
    tier3 = arg6
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 128] = address(arg2)
    mem[ceil32(arg4.length) + 148] = arg3
    mem[ceil32(arg4.length) + 180 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + 180] = mem[ceil32(arg4.length) + floor32(arg4.length) + 180] and 256^(-(arg4.length % 32) + 32) - 1 or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[arg4.length + 128 len -(arg4.length % 32) + 32] and !(256^(-(arg4.length % 32) + 32) - 1)
    return (uint256(proposals[arg1].field_2048) == sha3(arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 180 len arg4.length % 32]))
}

function sub_0c971a46(?) {
    require owner == msg.sender
    sub_a9183579.length++
    if not sub_a9183579.length <= sub_a9183579.length + 1:
        mem[0] = 4
        idx = (3 * sub_a9183579.length) + 3
        while sha3(4) + (3 * sub_a9183579.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require sub_a9183579.length < sub_a9183579.length
    uint256(sub_a9183579[sub_a9183579.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint8(sub_a9183579[sub_a9183579.length].field_256) = 1
    uint256(sub_a9183579[sub_a9183579.length].field_512) = block.timestamp
    emit 0x500a1f56: sub_a9183579.length
}

function makeDecision(uint256 arg1, bool arg2) {
    require memberId[address(msg.sender)]
    require memberId[address(msg.sender)] < members.length
    require arg1 < proposals.length
    require bool(uint8(stor[(11 * arg1) + ('name', 'proposals', 13) + 10][address(msg.sender)].field_0)) != 1
    uint8(stor[(11 * arg1) + ('name', 'proposals', 13) + 10][address(msg.sender)].field_0) = 1
    mem[96] = uint256(stor[sha3((6 * stor1[address(msg.sender)]) + ('name', 'members', 2) + 4)].field_0)
    idx = 96
    s = 0
    while stor[(6 * stor1[address(msg.sender)]) + ('name', 'members', 2) + 4].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * stor1[address(msg.sender)]) + ('name', 'members', 2) + 4)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    _60 = sha3(mem[96 len stor[(6 * stor1[address(msg.sender)]) + ('name', 'members', 2) + 4].length])
    mem[96] = uint256(stor[sha3((11 * arg1) + ('name', 'proposals', 13) + 3)].field_0)
    idx = 96
    s = 0
    while stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((11 * arg1) + ('name', 'proposals', 13) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[96 len stor[(11 * arg1) + ('name', 'proposals', 13) + 3].length]) != _60:
        uint256(proposals[arg1].field_1536) += uint256(members[stor1[address(msg.sender)]].field_256)
        if not arg2:
            uint256(proposals[arg1].field_1792) -= uint256(members[stor1[address(msg.sender)]].field_256)
        else:
            uint256(proposals[arg1].field_1792) += uint256(members[stor1[address(msg.sender)]].field_256)
    else:
        uint256(proposals[arg1].field_1536) += 2 * uint256(members[stor1[address(msg.sender)]].field_256)
        if not arg2:
            uint256(proposals[arg1].field_1792) -= 2 * uint256(members[stor1[address(msg.sender)]].field_256)
        else:
            uint256(proposals[arg1].field_1792) += 2 * uint256(members[stor1[address(msg.sender)]].field_256)
    emit Voted(arg1, arg2, msg.sender);
}

function sub_fb3e523a(?) {
    require owner == msg.sender
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < members.length
        uint256(members[stor1[address(arg1)]].field_256) = arg2
        uint8(members[stor1[address(arg1)]].field_512) = uint8(arg3)
        uint256(stor[sha3((6 * stor1[address(arg1)]) + ('name', 'members', 2) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
        uint256(stor[sha3((6 * stor1[address(arg1)]) + ('name', 'members', 2) + 4)][].field_0) = Array(len=arg5.length, data=arg5[all])
    else:
        memberId[address(arg1)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            mem[0] = 2
            idx = (6 * members.length) + 6
            while sha3(2) + (6 * members.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint8(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 4].length:
                    mem[0] = idx + sha3(mem[0]) + 4
                    s = sha3(idx + sha3(mem[0]) + 4)
                    while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
        require members.length < members.length
        address(members[members.length].field_0) = arg1
        uint256(members[members.length].field_256) = arg2
        uint8(members[members.length].field_512) = uint8(arg3)
        uint256(stor[sha3((6 * members.length) + ('name', 'members', 2) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
        uint256(stor[sha3((6 * members.length) + ('name', 'members', 2) + 4)][].field_0) = Array(len=arg5.length, data=arg5[all])
        uint256(members[members.length].field_1280) = block.timestamp
    emit MembershipChanged(arg1);
}

function sub_7410c4c8(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    require memberId[address(msg.sender)]
    require memberId[address(msg.sender)] < members.length
    require uint8(members[stor1[address(msg.sender)]].field_512)
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 13
        idx = (11 * proposals.length) + 11
        while sha3(13) + (11 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint16(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            mem[0] = idx + sha3(mem[0]) + 9
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 9) + (2 * uint256(stor[idx + sha3(mem[0]) + 9])) > s:
                Mask(168, 0, stor[s]) = 0
                memberId[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 11
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((11 * proposals.length) + ('name', 'proposals', 13) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3((11 * proposals.length) + ('name', 'proposals', 13) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 212] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244] = 256^(-(arg5.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244] or call.data[arg5 + floor32(arg5.length) + 36 len arg5.length % 32], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192 len -(arg5.length % 32) + 32] and !(256^(-(arg5.length % 32) + 32) - 1)
    uint256(proposals[proposals.length].field_2048) = sha3(arg1, arg2, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244 len arg5.length % 32])
    uint256(proposals[proposals.length].field_1024) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(proposals[proposals.length].field_1280) = 0
    uint256(proposals[proposals.length].field_1536) = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = proposals.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg3.length]));
    numProposals = proposals.length + 1
    return proposals.length
}

function sub_c2654272(?) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    require memberId[address(msg.sender)]
    require memberId[address(msg.sender)] < members.length
    require uint8(members[stor1[address(msg.sender)]].field_512)
    require memberId[address(msg.sender)]
    require memberId[address(msg.sender)] < members.length
    require uint8(members[stor1[address(msg.sender)]].field_512)
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 13
        idx = (11 * proposals.length) + 11
        while sha3(13) + (11 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint16(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            mem[0] = idx + sha3(mem[0]) + 9
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 9) + (2 * uint256(stor[idx + sha3(mem[0]) + 9])) > s:
                Mask(168, 0, stor[s]) = 0
                memberId[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 11
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = 10^18 * arg2
    uint256(stor[sha3((11 * proposals.length) + ('name', 'proposals', 13) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor[sha3((11 * proposals.length) + ('name', 'proposals', 13) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 212] = 10^18 * arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244] = 256^(-(arg5.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244] or call.data[arg5 + floor32(arg5.length) + 36 len arg5.length % 32], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192 len -(arg5.length % 32) + 32] and !(256^(-(arg5.length % 32) + 32) - 1)
    uint256(proposals[proposals.length].field_2048) = sha3(arg1, 10^18 * arg2, call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg5.length) + 244 len arg5.length % 32])
    uint256(proposals[proposals.length].field_1024) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(proposals[proposals.length].field_1280) = 0
    uint256(proposals[proposals.length].field_1536) = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = proposals.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = 10^18 * arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 384 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit ProposalAdded(proposals.length, address(arg1), 10^18 * arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 352 len arg3.length]));
    numProposals = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require memberId[address(msg.sender)]
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_1024)
    require not uint8(proposals[arg1].field_1280)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 180] = mem[ceil32(arg2.length) + floor32(arg2.length) + 180] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    require uint256(proposals[arg1].field_2048) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 180 len arg2.length % 32])
    require uint256(proposals[arg1].field_1536) >= sub_a98fcb51
    uint8(proposals[arg1].field_1280) = 1
    if uint256(proposals[arg1].field_256) <= tier1:
        if uint256(proposals[arg1].field_1792) <= sub_99942057:
            uint8(proposals[arg1].field_1288) = 0
            proposals[arg1].field_1536 % 1 = 0
        else:
            if not arg2.length:
                if not arg2.length % 32:
                    call address(proposals[arg1].field_0) with:
                       funct uint32(proposals[arg1].field_32)
                       value uint256(proposals[arg1].field_256) wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    call address(proposals[arg1].field_0) with:
                       funct uint32(proposals[arg1].field_32)
                       value uint256(proposals[arg1].field_256) wei
                         gas gas_remaining - 34710 wei
                        args uint128(proposals[arg1].field_0), mem[ceil32(arg2.length) + 148 len floor32(arg2.length) + 12]
            else:
                mem[ceil32(arg2.length) + 128] = mem[128]
                mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                       value uint256(proposals[arg1].field_256) wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                else:
                    mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                    call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                       value uint256(proposals[arg1].field_256) wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
            require ext_call.success
            uint8(proposals[arg1].field_1288) = 1
    else:
        if uint256(proposals[arg1].field_256) > tier2:
            if uint256(proposals[arg1].field_1792) <= sub_656cbfb9:
                uint8(proposals[arg1].field_1288) = 0
                proposals[arg1].field_1536 % 1 = 0
            else:
                if not arg2.length:
                    if not arg2.length % 32:
                        call address(proposals[arg1].field_0) with:
                           funct uint32(proposals[arg1].field_32)
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        call address(proposals[arg1].field_0) with:
                           funct uint32(proposals[arg1].field_32)
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args uint128(proposals[arg1].field_0), mem[ceil32(arg2.length) + 148 len floor32(arg2.length) + 12]
                else:
                    mem[ceil32(arg2.length) + 128] = mem[128]
                    mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                    if not arg2.length % 32:
                        call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
                require ext_call.success
                uint8(proposals[arg1].field_1288) = 1
        else:
            if uint256(proposals[arg1].field_1792) <= sub_c5e5d753:
                uint8(proposals[arg1].field_1288) = 0
                proposals[arg1].field_1536 % 1 = 0
            else:
                if not arg2.length:
                    if not arg2.length % 32:
                        call address(proposals[arg1].field_0) with:
                           funct uint32(proposals[arg1].field_32)
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        call address(proposals[arg1].field_0) with:
                           funct uint32(proposals[arg1].field_32)
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args uint128(proposals[arg1].field_0), mem[ceil32(arg2.length) + 148 len floor32(arg2.length) + 12]
                else:
                    mem[ceil32(arg2.length) + 128] = mem[128]
                    mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
                    if not arg2.length % 32:
                        call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
                    else:
                        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                        call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                           value uint256(proposals[arg1].field_256) wei
                             gas gas_remaining - 34710 wei
                            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
                require ext_call.success
                uint8(proposals[arg1].field_1288) = 1
    emit ProposalTallied(arg1, uint256(proposals[arg1].field_1792), uint256(proposals[arg1].field_1536), bool(uint8(proposals[arg1].field_1288)));
}



}
