contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
mapping of struct proposals;
array of uint256 stor2;
mapping of uint256 memberId;
array of struct members;
uint256 stor5;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[352] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 1) + 2)].field_0)
    idx = 352
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 1) + 2].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 1) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 1) + 2].length, data=mem[352 len stor[(9 * arg1) + ('name', 'proposals', 1) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'proposals', 1) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'proposals', 1) + 2].length + 32 % 32)]),
           bool(uint8(proposals[arg1].field_768)),
           uint256(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536)
}

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return stor2.length
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'members', 4) + 1)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'members', 4) + 1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'members', 4) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'members', 4) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'members', 4) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'members', 4) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'members', 4) + 1].length + 32 % 32)]),
           uint256(members[arg1].field_512)
}

function owner() {
    return owner
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function calculateFactor(uint256 arg1, uint256 arg2) {
    require arg2
    return 2^(-(20 * arg1 / arg2) + 20)
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < proposals.length
    return (uint256(proposals[arg1].field_1280) == sha3(arg2, arg3, arg4[all]))
}

function proposalDeadline(uint256 arg1) {
    require arg1 < proposals.length
    require members.length - 1
    return (uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5))
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

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require members.length - 1
    require block.timestamp >= uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5)
    require uint256(proposals[arg1].field_1024) > 0
    require not uint8(proposals[arg1].field_768)
    require arg1 < proposals.length
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(proposals[arg1].field_1280) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), arg2[all])
    uint8(proposals[arg1].field_768) = 1
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call address(proposals[arg1].field_0) with:
           value uint256(proposals[arg1].field_256) wei
             gas gas_remaining - 34050 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
           value uint256(proposals[arg1].field_256) wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
    require arg1 < proposals.length
    require members.length - 1
    emit ProposalExecuted(arg1, uint256(proposals[arg1].field_1024), uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5));
    return 0
}

function vote(uint256 arg1, bool arg2, string arg3) {
    require memberId[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * arg1) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0) = 1
    if not arg2:
        uint256(proposals[arg1].field_1024)--
    else:
        uint256(proposals[arg1].field_1024)++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    require arg1 < proposals.length
    require members.length - 1
    if block.timestamp > uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5):
        if uint256(proposals[arg1].field_1024) > 0:
            if uint256(proposals[arg1].field_1280) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256)):
                if arg2:
                    require arg1 < proposals.length
                    require members.length - 1
                    require block.timestamp >= uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5)
                    require uint256(proposals[arg1].field_1024) > 0
                    require not uint8(proposals[arg1].field_768)
                    require arg1 < proposals.length
                    require uint256(proposals[arg1].field_1280) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256))
                    uint8(proposals[arg1].field_768) = 1
                    call address(proposals[arg1].field_0) with:
                       value uint256(proposals[arg1].field_256) wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    require arg1 < proposals.length
                    require members.length - 1
                    emit ProposalExecuted(arg1, uint256(proposals[arg1].field_1024), uint256(proposals[arg1].field_1536) + (60 * 2^(-(20 * uint256(proposals[arg1].field_1024) / members.length - 1) + 20) * stor5));
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
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
            mem[0] = 4
            idx = (3 * members.length) + 3
            while sha3(4) + (3 * members.length) > idx + sha3(mem[0]):
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
            uint256(stor[s + sha3((3 * members.length) + ('name', 'members', 4) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
            uint256(stor[sha3((3 * members.length) + ('name', 'members', 4) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
            while stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * members.length) + ('name', 'members', 4) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(members[members.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), 1);
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
        mem[0] = (3 * idx) + sha3(4) + 1
        if 31 >= stor[(3 * idx) + ('name', 'members', 4) + 4].length:
            uint256(members[idx].field_256) = uint256(members[idx].field_1024)
            s = sha3((3 * idx) + sha3(4) + 1)
            while sha3((3 * idx) + sha3(4) + 1) + (stor[(3 * idx) + ('name', 'members', 4) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        else:
            uint256(members[idx].field_256) = Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)) + 1
            if not Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)):
                s = sha3((3 * idx) + sha3(4) + 1)
                while sha3((3 * idx) + sha3(4) + 1) + (stor[(3 * idx) + ('name', 'members', 4) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = (3 * idx) + sha3(4) + 4
                s = sha3((3 * idx) + sha3(4) + 1)
                t = sha3((3 * idx) + sha3(4) + 4)
                while sha3((3 * idx) + sha3(4) + 4) + (stor[(3 * idx) + ('name', 'members', 4) + 4].length + 31 / 32) > t:
                    uint256(stor[s]) = uint256(stor[t])
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((3 * idx) + sha3(4) + 1) + (stor[(3 * idx) + ('name', 'members', 4) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        uint256(members[idx].field_512) = uint256(members[idx].field_1280)
        idx = idx + 1
        continue 
    require members.length - 1 < members.length
    address(members[members.length].field_0) = 0
    uint256(members[members.length].field_0) = 0
    if 31 >= stor[(3 * members.length) + ('name', 'members', 4) - 2].length:
        uint256(members[members.length].field_0) = 0
        members.length--
        if not members.length <= members.length - 1:
            mem[0] = 4
            idx = (3 * members.length) - 3
            while sha3(4) + (3 * members.length) > idx + sha3(mem[0]):
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
        if sha3((3 * members.length) + sha3(4) - 2) + (stor[(3 * members.length) + ('name', 'members', 4) - 2].length + 31 / 32) > sha3((3 * members.length) + sha3(4) - 2):
            uint256(stor[sha3((3 * members.length) + ('name', 'members', 4) - 2)].field_0) = 0
            idx = 1
            while stor[(3 * members.length) + ('name', 'members', 4) - 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((3 * members.length) + ('name', 'members', 4) - 2)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(members[members.length].field_0) = 0
        members.length--
        if not members.length <= members.length - 1:
            mem[0] = 4
            idx = (3 * members.length) - 3
            while sha3(4) + (3 * members.length) > idx + sha3(mem[0]):
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

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    require memberId[address(msg.sender)]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 1
        idx = (9 * proposals.length) + 9
        while sha3(1) + (9 * proposals.length) > idx + sha3(mem[0]):
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
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 7) + (2 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                Mask(168, 0, stor[s]) = 0
                uint256(proposals[s].field_0) = 0
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
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(proposals[proposals.length].field_512) = (2 * arg3.length) + 1
    s = 0
    idx = 128
    while arg3.length + 128 > idx:
        uint256(stor[s + sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(9 * proposals.length) + ('name', 'proposals', 1) + 2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while stor[(9 * proposals.length) + ('name', 'proposals', 1) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(proposals[proposals.length].field_1280) = sha3(arg1, arg2, arg4[all])
    uint8(proposals[proposals.length].field_768) = 0
    uint256(proposals[proposals.length].field_1536) = block.timestamp
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    stor2.length = proposals.length + 1
    require memberId[address(msg.sender)]
    require proposals.length < proposals.length
    require bool(uint8(stor[(9 * proposals.length) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * proposals.length) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[proposals.length].field_1024)++
    emit Voted(uint256 rg1, bool rg2, address rg3, string rg4):
               proposals.length,
               1,
               msg.sender,
               128,
               0,
    require proposals.length < proposals.length
    require members.length - 1
    if block.timestamp > uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5):
        if uint256(proposals[proposals.length].field_1024) > 0:
            if uint256(proposals[proposals.length].field_1280) == sha3(address(proposals[proposals.length].field_0), uint256(proposals[proposals.length].field_256)):
                require proposals.length < proposals.length
                require members.length - 1
                require block.timestamp >= uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5)
                require uint256(proposals[proposals.length].field_1024) > 0
                require not uint8(proposals[proposals.length].field_768)
                require proposals.length < proposals.length
                require uint256(proposals[proposals.length].field_1280) == sha3(address(proposals[proposals.length].field_0), uint256(proposals[proposals.length].field_256))
                uint8(proposals[proposals.length].field_768) = 1
                call address(proposals[proposals.length].field_0) with:
                   value uint256(proposals[proposals.length].field_256) wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                require proposals.length < proposals.length
                require members.length - 1
                emit ProposalExecuted(proposals.length, uint256(proposals[proposals.length].field_1024), uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5));
    return proposals.length
}

function newProposalInEther(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    require memberId[address(msg.sender)]
    require memberId[address(msg.sender)]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 1
        idx = (9 * proposals.length) + 9
        while sha3(1) + (9 * proposals.length) > idx + sha3(mem[0]):
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
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 7) + (2 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                Mask(168, 0, stor[s]) = 0
                uint256(proposals[s].field_0) = 0
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
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = 10^18 * arg2
    uint256(proposals[proposals.length].field_512) = (2 * arg3.length) + 1
    s = 0
    idx = 128
    while arg3.length + 128 > idx:
        uint256(stor[s + sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(9 * proposals.length) + ('name', 'proposals', 1) + 2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while stor[(9 * proposals.length) + ('name', 'proposals', 1) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((9 * proposals.length) + ('name', 'proposals', 1) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(proposals[proposals.length].field_1280) = sha3(arg1, 10^18 * arg2, arg4[all])
    uint8(proposals[proposals.length].field_768) = 0
    uint256(proposals[proposals.length].field_1536) = block.timestamp
    emit ProposalAdded(proposals.length, address(arg1), 10^18 * arg2, Array(len=arg3.length, data=arg3[all]));
    stor2.length = proposals.length + 1
    require memberId[address(msg.sender)]
    require proposals.length < proposals.length
    require bool(uint8(stor[(9 * proposals.length) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * proposals.length) + ('name', 'proposals', 1) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[proposals.length].field_1024)++
    emit Voted(uint256 rg1, bool rg2, address rg3, string rg4):
               proposals.length,
               1,
               msg.sender,
               128,
               0,
    require proposals.length < proposals.length
    require members.length - 1
    if block.timestamp > uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5):
        if uint256(proposals[proposals.length].field_1024) > 0:
            if uint256(proposals[proposals.length].field_1280) == sha3(address(proposals[proposals.length].field_0), uint256(proposals[proposals.length].field_256)):
                require proposals.length < proposals.length
                require members.length - 1
                require block.timestamp >= uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5)
                require uint256(proposals[proposals.length].field_1024) > 0
                require not uint8(proposals[proposals.length].field_768)
                require proposals.length < proposals.length
                require uint256(proposals[proposals.length].field_1280) == sha3(address(proposals[proposals.length].field_0), uint256(proposals[proposals.length].field_256))
                uint8(proposals[proposals.length].field_768) = 1
                call address(proposals[proposals.length].field_0) with:
                   value uint256(proposals[proposals.length].field_256) wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                require proposals.length < proposals.length
                require members.length - 1
                emit ProposalExecuted(proposals.length, uint256(proposals[proposals.length].field_1024), uint256(proposals[proposals.length].field_1536) + (60 * 2^(-(20 * uint256(proposals[proposals.length].field_1024) / members.length - 1) + 20) * stor5));
    return proposals.length
}

function changeMembers(address[] arg1, bool arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if not arg2:
            require owner == msg.sender
            require memberId[mem[(32 * idx) + 140 len 20]]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 3
            s = memberId[mem[0]]
            while s < members.length - 1:
                require s + 1 < members.length
                require s < members.length
                uint64(members[s].field_0) = uint64(members[s].field_768)
                Mask(96, 0, members[s].field_64) = 0
                mem[0] = (3 * s) + sha3(4) + 1
                if 31 >= stor[(3 * s) + ('name', 'members', 4) + 4].length:
                    uint256(members[s].field_256) = uint256(members[s].field_1024)
                    t = sha3((3 * s) + sha3(4) + 1)
                    while sha3((3 * s) + sha3(4) + 1) + (stor[(3 * s) + ('name', 'members', 4) + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                else:
                    uint256(members[s].field_256) = Mask(255, 1, (256 * not bool(members[s].field_1024)) - 1 and uint256(members[s].field_1024)) + 1
                    if not Mask(255, 1, (256 * not bool(members[s].field_1024)) - 1 and uint256(members[s].field_1024)):
                        t = sha3((3 * s) + sha3(4) + 1)
                        while sha3((3 * s) + sha3(4) + 1) + (stor[(3 * s) + ('name', 'members', 4) + 1].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                    else:
                        mem[0] = (3 * s) + sha3(4) + 4
                        t = sha3((3 * s) + sha3(4) + 1)
                        u = sha3((3 * s) + sha3(4) + 4)
                        while sha3((3 * s) + sha3(4) + 4) + (stor[(3 * s) + ('name', 'members', 4) + 4].length + 31 / 32) > u:
                            uint256(stor[t]) = uint256(stor[u])
                            t = t + 1
                            u = u + 1
                            continue 
                        u = t
                        while sha3((3 * s) + sha3(4) + 1) + (stor[(3 * s) + ('name', 'members', 4) + 1].length + 31 / 32) > u:
                            uint256(stor[u]) = 0
                            u = u + 1
                            continue 
                uint256(members[s].field_512) = uint256(members[s].field_1280)
                s = s + 1
                continue 
            require members.length - 1 < members.length
            mem[0] = 4
            address(members[members.length].field_0) = 0
            uint256(members[members.length].field_0) = 0
            if 31 >= stor[(3 * members.length) + ('name', 'members', 4) - 2].length:
                uint256(members[members.length].field_0) = 0
                members.length--
                if not members.length <= members.length - 1:
                    mem[0] = 4
                    s = sha3(mem[0]) + (3 * members.length) - 3
                    while sha3(4) + (3 * members.length) > s:
                        address(stor[s]) = 0
                        uint256(proposals[s].field_0) = 0
                        if 31 < stor[s + 1].length:
                            mem[0] = s + 1
                            if sha3(s + 1) + (stor[s + 1].length + 31 / 32) > sha3(s + 1):
                                uint256(stor[sha3(s + 1)]) = 0
                                t = sha3(s + 1) + 1
                                while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                        stor2[s] = 0
                        s = s + 3
                        continue 
            else:
                mem[0] = (3 * members.length) + sha3(4) - 2
                if sha3((3 * members.length) + sha3(4) - 2) + (stor[(3 * members.length) + ('name', 'members', 4) - 2].length + 31 / 32) > sha3((3 * members.length) + sha3(4) - 2):
                    uint256(stor[sha3((3 * members.length) + ('name', 'members', 4) - 2)].field_0) = 0
                    s = sha3((3 * members.length) + sha3(4) - 2) + 1
                    while sha3((3 * members.length) + sha3(4) - 2) + (stor[(3 * members.length) + ('name', 'members', 4) - 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(members[members.length].field_0) = 0
                members.length--
                if not members.length <= members.length - 1:
                    mem[0] = 4
                    s = sha3(mem[0]) + (3 * members.length) - 3
                    while sha3(4) + (3 * members.length) > s:
                        address(stor[s]) = 0
                        uint256(proposals[s].field_0) = 0
                        if 31 < stor[s + 1].length:
                            mem[0] = s + 1
                            if sha3(s + 1) + (stor[s + 1].length + 31 / 32) > sha3(s + 1):
                                uint256(stor[sha3(s + 1)]) = 0
                                t = sha3(s + 1) + 1
                                while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                        stor2[s] = 0
                        s = s + 3
                        continue 
        else:
            _86 = mem[(32 * idx) + 128]
            _87 = mem[64]
            mem[64] = mem[64] + 32
            mem[_87] = 0
            require owner == msg.sender
            if memberId[address(_86)]:
                mem[32] = 3
                require memberId[address(_86)] < members.length
                mem[0] = 4
            else:
                mem[0] = address(_86)
                mem[32] = 3
                memberId[address(_86)] = members.length
                members.length++
                if not members.length > members.length + 1:
                    _95 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_95] = _86
                    mem[_95 + 32] = _87
                    mem[_95 + 64] = block.timestamp
                    require members.length < members.length
                    address(members[members.length].field_0) = address(_86)
                    mem[0] = (3 * members.length) + sha3(4) + 1
                    bool(members[members.length].field_256) = 0
                    uint255(members[members.length].field_257) = 0
                    Mask(248, 0, members[members.length].field_264) = mem[_87 + 32 len 31]
                    if sha3((3 * members.length) + sha3(4) + 1) + (stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32) > sha3((3 * members.length) + sha3(4) + 1):
                        uint256(stor[sha3((3 * members.length) + ('name', 'members', 4) + 1)].field_0) = 0
                        s = sha3((3 * members.length) + sha3(4) + 1) + 1
                        while sha3((3 * members.length) + sha3(4) + 1) + (stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                else:
                    mem[0] = 4
                    s = sha3(mem[0]) + (3 * members.length) + 3
                    while sha3(4) + (3 * members.length) > s:
                        address(stor[s]) = 0
                        uint256(proposals[s].field_0) = 0
                        if 31 < stor[s + 1].length:
                            mem[0] = s + 1
                            if sha3(s + 1) + (stor[s + 1].length + 31 / 32) > sha3(s + 1):
                                uint256(stor[sha3(s + 1)]) = 0
                                t = sha3(s + 1) + 1
                                while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                                    uint256(stor[t]) = 0
                                    t = t + 1
                                    continue 
                        stor2[s] = 0
                        s = s + 3
                        continue 
                    _172 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_172] = _86
                    mem[_172 + 32] = _87
                    mem[_172 + 64] = block.timestamp
                    require members.length < members.length
                    mem[0] = 4
                    address(members[members.length].field_0) = address(_86)
                    _180 = mem[_87]
                    mem[0] = (3 * members.length) + sha3(4) + 1
                    uint256(members[members.length].field_256) = (2 * _180) + 1
                    t = sha3((3 * members.length) + sha3(4) + 1)
                    s = _87 + 32
                    while _87 + _180 + 32 > s:
                        uint256(stor[t]) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    if stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32 > Mask(251, 0, _180 + 31) >> 5:
                        uint256(stor[sha3((3 * members.length) + ('name', 'members', 4) + 1) + (Mask(251, 0, _180 + 31) >> 5)].field_0) = 0
                        s = sha3((3 * members.length) + sha3(4) + 1) + (Mask(251, 0, _180 + 31) >> 5) + 1
                        while sha3((3 * members.length) + sha3(4) + 1) + (stor[(3 * members.length) + ('name', 'members', 4) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(members[members.length].field_512) = block.timestamp
            mem[mem[64]] = address(_86)
            mem[mem[64] + 32] = 1
            emit MembershipChanged(address(_86), 1);
        idx = idx + 1
        continue 
}



}
