contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = 1
    stor0 = code.data[3297 len 32]
    stor1 = 60 * code.data[3329 len 32]
    return code.data[136 len 3161]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
array of address stor1;
uint256 sub_fd46146a;
address founderAddress;
array of struct proposals;
uint256 numProposals;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[320] = uint256(stor[sha3((8 * arg1) + ('name', 'proposals', 4) + 3)].field_0)
    idx = 320
    s = 0
    while stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'proposals', 4) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           uint256(proposals[arg1].field_512),
           Array(len=stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length, data=mem[320 len stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + (floor32(stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length - 1) + -stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + 32 % 32)]),
           uint256(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1280)
}

function debatingPeriod() payable {
    return stor1.length
}

function numProposals() payable {
    return numProposals
}

function founder() payable {
    return founderAddress
}

function minimumQuorum() payable {
    return minimumQuorum
}

function sub_fd46146a(?) payable {
    return sub_fd46146a
}

function kill() payable {
    if founderAddress != msg.sender:
    selfdestruct(founderAddress)
}

function _fallback() payable {
  stop
}

function vote(uint256 arg1, int256 arg2) payable {
    if arg2 < -1:
        if arg2 > 1:
            return 0
    require arg1 < proposals.length
    if uint8(stor[(8 * arg1) + ('name', 'proposals', 4) + 7][address(msg.sender)].field_0) == 1:
        return 0
    uint256(proposals[arg1].field_1536)++
    if not uint256(proposals[arg1].field_1536) <= uint256(proposals[arg1].field_1536) + 1:
        idx = 2 * uint256(proposals[arg1].field_1536) + 1
        while 2 * uint256(proposals[arg1].field_1536) > idx:
            uint256(stor[idx + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_0) = 0
            address(stor[idx + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_256) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_1536) < uint256(proposals[arg1].field_1536)
    uint256(stor[(2 * uint256(proposals[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_0) = arg2
    uint256(stor[(2 * uint256(proposals[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_256) = msg.sender or Mask(96, 160, uint256(stor[(2 * uint256(proposals[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_256))
    uint8(stor[(8 * arg1) + ('name', 'proposals', 4) + 7][address(msg.sender)].field_0) = 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(proposals[arg1].field_1536)
}

function newProposal(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = 8 * proposals.length + 1
        while sha3(4) + (8 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint8(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(idx + sha3(mem[0]) + 6)
            while sha3(idx + sha3(mem[0]) + 6) + (2 * uint256(stor[idx + sha3(mem[0]) + 6])) > s:
                uint256(stor[s]) = 0
                stor1[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(proposals[proposals.length].field_512) = arg3
    uint256(stor[sha3((8 * proposals.length) + ('name', 'proposals', 4) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint256(proposals[proposals.length].field_1024) = block.timestamp
    uint8(proposals[proposals.length].field_1280) = 1
    emit ProposalAdded(proposals.length, address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1) payable {
    require arg1 < proposals.length
    if block.timestamp <= uint256(proposals[arg1].field_1024) + stor1.length:
        return 0
    if not uint8(proposals[arg1].field_1280):
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_1536):
        mem[0] = (8 * arg1) + sha3(4) + 6
        s = sub_fd46146a
        s = (2 * idx) + sha3((8 * arg1) + sha3(4) + 6)
        idx = idx + 1
        s = s + sub_fd46146a
        t = t + (sub_fd46146a * uint256(stor[(2 * idx) + sha3((8 * arg1) + ('name', 'proposals', 4) + 6)].field_0))
        continue 
    if s * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) >= minimumQuorum:
        if t * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) > 0:
            uint8(proposals[arg1].field_1280) = 0
        else:
            if s * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) >= minimumQuorum:
                if t * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) < 0:
                    uint8(proposals[arg1].field_1280) = 0
    emit ProposalTallied(arg1, t * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536), s * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536), uint8(proposals[arg1].field_1280));
    return (t * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536) * uint256(proposals[arg1].field_1536))
}



}
