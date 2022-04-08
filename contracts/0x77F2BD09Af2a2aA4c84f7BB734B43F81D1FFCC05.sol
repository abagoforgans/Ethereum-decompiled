contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor6;
array of struct stor7;

function _fallback() payable {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor1 = code.data[7081 len 32]
    stor2 = code.data[7113 len 32]
    stor3 = code.data[7145 len 32]
    emit ChangeOfRules(code.data[7081 len 32], code.data[7113 len 32], code.data[7145 len 32]);
    if address(code.data[7177 len 32]):
        stor0 = address(code.data[7177 len 32])
    require stor0 == msg.sender
    if not stor6[0]:
        stor6[0] = stor7.length
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            mem[0] = 7
            idx = (3 * stor7.length) + 3
            while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require stor7.length < stor7.length
        address(stor7[stor7.length].field_0) = 0
        stor7[stor7.length].field_256 % 1 = 0
        bool(stor7[stor7.length].field_256) = 0
        uint255(stor7[stor7.length].field_257) = 0
        Mask(248, 0, stor7[stor7.length].field_264) = 0
        idx = 0
        while stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor7[stor7.length].field_512) = block.timestamp
    emit MembershipChanged(0, 1);
    require stor0 == msg.sender
    if not stor6[stor0]:
        stor6[stor0] = stor7.length
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            mem[0] = 7
            idx = (3 * stor7.length) + 3
            while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require stor7.length < stor7.length
        address(stor7[stor7.length].field_0) = stor0
        bool(stor7[stor7.length].field_256) = 0
        uint255(stor7[stor7.length].field_257) = 7
        Mask(248, 0, stor7[stor7.length].field_264) = 'founder' / 256
        idx = 0
        while stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor7[stor7.length].field_512) = block.timestamp
    emit MembershipChanged(stor0, 1);
    return code.data[1145 len 5936]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
mapping of struct proposals;
uint256 numProposals;
mapping of uint256 memberId;
array of struct members;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792)
}

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return numProposals
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'members', 7) + 1)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'members', 7) + 1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'members', 7) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'members', 7) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'members', 7) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'members', 7) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'members', 7) + 1].length + 32 % 32)]),
           uint256(members[arg1].field_512)
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function minimumQuorum() {
    return stor1.length
}

function owner() {
    return owner
}

function majorityMargin() {
    return majorityMargin
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) {
    require owner == msg.sender
    stor1.length = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 128] = address(arg2)
    mem[ceil32(arg4.length) + 148] = arg3
    mem[ceil32(arg4.length) + 180 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + 180] = mem[ceil32(arg4.length) + floor32(arg4.length) + 180] and 256^(-(arg4.length % 32) + 32) - 1 or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[arg4.length + 128 len -(arg4.length % 32) + 32] and !(256^(-(arg4.length % 32) + 32) - 1)
    return (uint256(proposals[arg1].field_1792) == sha3(arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 180 len arg4.length % 32]))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
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

function vote(uint256 arg1, bool arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    require memberId[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0)) != 1
    uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280)++
    if not arg2:
        uint256(proposals[arg1].field_1536)--
    else:
        uint256(proposals[arg1].field_1536)++
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    mem[ceil32(arg3.length) + 192] = msg.sender
    mem[ceil32(arg3.length) + 224] = 128
    mem[ceil32(arg3.length) + 256] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 288] = mem[128]
        mem[ceil32(arg3.length) + 320 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 288 len arg3.length]));
    return uint256(proposals[arg1].field_1280)
}

function addMember(address arg1, string arg2) {
    require owner == msg.sender
    if not memberId[address(arg1)]:
        memberId[address(arg1)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            mem[0] = 7
            idx = (3 * members.length) + 3
            while sha3(7) + (3 * members.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require members.length < members.length
        address(members[members.length].field_0) = arg1
        uint256(stor[sha3((3 * members.length) + ('name', 'members', 7) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(members[members.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), 1);
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 180] = mem[ceil32(arg2.length) + floor32(arg2.length) + 180] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    require uint256(proposals[arg1].field_1792) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 180 len arg2.length % 32])
    require uint256(proposals[arg1].field_1280) >= stor1.length
    if uint256(proposals[arg1].field_1536) <= majorityMargin:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        if not arg2.length:
            if not arg2.length % 32:
                call address(proposals[arg1].field_0) with:
                   funct uint32(proposals[arg1].field_32)
                   value 10^18 * uint256(proposals[arg1].field_256) wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                call address(proposals[arg1].field_0) with:
                   funct uint32(proposals[arg1].field_32)
                   value 10^18 * uint256(proposals[arg1].field_256) wei
                     gas gas_remaining - 34710 wei
                    args uint128(proposals[arg1].field_0), mem[ceil32(arg2.length) + 148 len floor32(arg2.length) + 12]
        else:
            mem[ceil32(arg2.length) + 128] = mem[128]
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                   value 10^18 * uint256(proposals[arg1].field_256) wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
                   value 10^18 * uint256(proposals[arg1].field_256) wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
    emit ProposalTallied(arg1, uint256(proposals[arg1].field_1536), uint256(proposals[arg1].field_1280), bool(uint8(proposals[arg1].field_1032)));
}

function removeMember(address arg1) {
    require owner == msg.sender
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < members.length - 1:
        require idx + 1 < members.length
        require idx < members.length
        address(members[idx].field_0) = address(members[idx].field_768)
        mem[0] = (3 * idx) + sha3(7) + 1
        if 31 >= stor[(3 * idx) + ('name', 'members', 7) + 4].length:
            uint256(members[idx].field_256) = uint256(members[idx].field_1024)
            s = sha3((3 * idx) + sha3(7) + 1)
            while sha3((3 * idx) + sha3(7) + 1) + (stor[(3 * idx) + ('name', 'members', 7) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(members[idx].field_512) = uint256(members[idx].field_1280)
            idx = idx + 1
            continue 
        uint256(members[idx].field_256) = Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)) + 1
        if not Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)):
            s = sha3((3 * idx) + sha3(7) + 1)
            while sha3((3 * idx) + sha3(7) + 1) + (stor[(3 * idx) + ('name', 'members', 7) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(members[idx].field_512) = uint256(members[idx].field_1280)
            idx = idx + 1
            continue 
        mem[0] = (3 * idx) + sha3(7) + 4
        s = sha3((3 * idx) + sha3(7) + 1)
        t = sha3((3 * idx) + sha3(7) + 4)
        while sha3((3 * idx) + sha3(7) + 4) + (stor[(3 * idx) + ('name', 'members', 7) + 4].length + 31 / 32) > t:
            uint256(stor[s]) = uint256(stor[t])
            s = s + 1
            t = t + 1
            continue 
        t = s
        while sha3((3 * t) + sha3(7) + 1) + (stor[(3 * t) + ('name', 'members', 7) + 1].length + 31 / 32) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        uint256(members[t].field_512) = uint256(members[t].field_1280)
        t = t + 1
        continue 
    require members.length - 1 < members.length
    address(members[members.length].field_0) = 0
    uint256(members[members.length].field_0) = 0
    if 31 < stor[(3 * members.length) + ('name', 'members', 7) - 2].length:
        idx = 0
        while stor[(3 * members.length) + ('name', 'members', 7) - 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((3 * members.length) + ('name', 'members', 7) - 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(members[members.length].field_0) = 0
    members.length--
    if not members.length <= members.length - 1:
        mem[0] = 7
        idx = (3 * members.length) - 3
        while sha3(7) + (3 * members.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require memberId[address(msg.sender)]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = (10 * proposals.length) + 10
        while sha3(4) + (10 * proposals.length) > idx + sha3(mem[0]):
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
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 8) + (2 * uint256(stor[idx + sha3(mem[0]) + 8])) > s:
                Mask(168, 0, stor[s]) = 0
                stor1[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 10
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 180] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212] = 256^(-(arg4.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212] or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[ceil32(arg3.length) + arg4.length + 160 len -(arg4.length % 32) + 32] and !(256^(-(arg4.length % 32) + 32) - 1)
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212 len arg4.length % 32])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(proposals[proposals.length].field_1024) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = proposals.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 352 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 320 len arg3.length]));
    numProposals = proposals.length + 1
    return proposals.length
}



}
