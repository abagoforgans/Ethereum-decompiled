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
    stor1 = code.data[7128 len 32]
    stor2 = code.data[7160 len 32]
    stor3 = code.data[7192 len 32]
    emit ChangeOfRules(code.data[7128 len 32], code.data[7160 len 32], code.data[7192 len 32]);
    if address(code.data[7224 len 32]):
        stor0 = address(code.data[7224 len 32])
    require stor0 == msg.sender
    if stor6[0]:
        require stor6[0] < stor7.length
    else:
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
        if sha3((3 * stor7.length) + sha3(7) + 1) + (stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32) > sha3((3 * stor7.length) + sha3(7) + 1):
            uint256(stor[sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = 1
            while stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor7[stor7.length].field_512) = block.timestamp
    emit MembershipChanged(0, 1);
    require stor0 == msg.sender
    if stor6[stor0]:
        require stor6[stor0] < stor7.length
    else:
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
        if sha3((3 * stor7.length) + sha3(7) + 1) + (stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32) > sha3((3 * stor7.length) + sha3(7) + 1):
            uint256(stor[sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
            idx = 1
            while stor[(3 * stor7.length) + ('name', 'stor7', 7) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor7[stor7.length].field_512) = block.timestamp
    emit MembershipChanged(stor0, 1);
    return code.data[1178 len 5950]
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

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < proposals.length
    return (uint256(proposals[arg1].field_1792) == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) {
    require owner == msg.sender
    stor1.length = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit receivedTokens(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=arg4[all]));
}

function vote(uint256 arg1, bool arg2, string arg3) {
    require memberId[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0)) != 1
    uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280)++
    if not arg2:
        uint256(proposals[arg1].field_1536)--
    else:
        uint256(proposals[arg1].field_1536)++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(proposals[arg1].field_1792) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), arg2[all])
    require uint256(proposals[arg1].field_1280) >= stor1.length
    if uint256(proposals[arg1].field_1536) <= majorityMargin:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0) with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
    emit ProposalTallied(arg1, uint256(proposals[arg1].field_1536), uint256(proposals[arg1].field_1280), bool(uint8(proposals[arg1].field_1032)));
    return 0
}

function addMember(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < members.length
    else:
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
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        mem[ceil32(arg2.length) + 128] = arg1
        require members.length < members.length
        address(members[members.length].field_0) = arg1
        uint256(members[members.length].field_256) = (2 * arg2.length) + 1
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((3 * members.length) + ('name', 'members', 7) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor[(3 * members.length) + ('name', 'members', 7) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
            uint256(stor[sha3((3 * members.length) + ('name', 'members', 7) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
            while stor[(3 * members.length) + ('name', 'members', 7) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * members.length) + ('name', 'members', 7) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(members[members.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), 1);
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
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
                if sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 2):
                    uint256(stor[sha3(idx + sha3(mem[0]) + 2)]) = 0
                    s = sha3(idx + sha3(mem[0]) + 2) + 1
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
                    if sha3(s + 1) + (stor[s + 1].length + 31 / 32) > sha3(s + 1):
                        uint256(stor[sha3(s + 1)]) = 0
                        t = sha3(s + 1) + 1
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
    uint256(proposals[proposals.length].field_512) = (2 * arg3.length) + 1
    s = 0
    idx = 128
    while arg3.length + 128 > idx:
        uint256(stor[s + sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(10 * proposals.length) + ('name', 'proposals', 4) + 2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while stor[(10 * proposals.length) + ('name', 'proposals', 4) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function removeMember(address arg1) {
    require owner == msg.sender
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < members.length - 1:
        require idx + 1 < members.length
        require idx < members.length
        uint64(members[idx].field_0) = uint64(members[idx].field_768)
        Mask(96, 0, members[idx].field_64) = 0
        mem[0] = (3 * idx) + sha3(7) + 1
        if 31 >= stor[(3 * idx) + ('name', 'members', 7) + 4].length:
            uint256(members[idx].field_256) = uint256(members[idx].field_1024)
            s = sha3((3 * idx) + sha3(7) + 1)
            while sha3((3 * idx) + sha3(7) + 1) + (stor[(3 * idx) + ('name', 'members', 7) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        else:
            uint256(members[idx].field_256) = Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)) + 1
            if not Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)):
                s = sha3((3 * idx) + sha3(7) + 1)
                while sha3((3 * idx) + sha3(7) + 1) + (stor[(3 * idx) + ('name', 'members', 7) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = (3 * idx) + sha3(7) + 4
                s = sha3((3 * idx) + sha3(7) + 1)
                t = sha3((3 * idx) + sha3(7) + 4)
                while sha3((3 * idx) + sha3(7) + 4) + (stor[(3 * idx) + ('name', 'members', 7) + 4].length + 31 / 32) > t:
                    uint256(stor[s]) = uint256(stor[t])
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((3 * idx) + sha3(7) + 1) + (stor[(3 * idx) + ('name', 'members', 7) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        uint256(members[idx].field_512) = uint256(members[idx].field_1280)
        idx = idx + 1
        continue 
    require members.length - 1 < members.length
    address(members[members.length].field_0) = 0
    uint256(members[members.length].field_0) = 0
    if 31 >= stor[(3 * members.length) + ('name', 'members', 7) - 2].length:
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
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
    else:
        if sha3((3 * members.length) + sha3(7) - 2) + (stor[(3 * members.length) + ('name', 'members', 7) - 2].length + 31 / 32) > sha3((3 * members.length) + sha3(7) - 2):
            uint256(stor[sha3((3 * members.length) + ('name', 'members', 7) - 2)].field_0) = 0
            idx = 1
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
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
}



}
