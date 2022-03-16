contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor2 = 1
    stor0 = code.data[3033 len 32]
    stor1 = 60 * code.data[3065 len 32]
    return code.data[130 len 2903]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
array of address stor1;
uint256 sub_fd46146a;
address founderAddress;
mapping of struct stor4;
uint256 numProposals;

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

function _fallback() payable {
  stop
}

function proposals(uint256 arg1) payable {
    require arg1 < stor4.length
    if not uint256(stor4[arg1].field_768):
        return address(stor4[arg1].field_0), 
               uint256(stor4[arg1].field_256),
               uint256(stor4[arg1].field_512),
               192,
               uint256(stor4[arg1].field_1024),
               uint8(stor4[arg1].field_1280),
               uint256(stor4[arg1].field_768)
    mem[320] = uint256(stor[sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_0)
    idx = 320
    s = 0
    while uint256(stor4[arg1].field_768) + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'stor4', 4) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor4[arg1].field_0), 
           uint256(stor4[arg1].field_256),
           uint256(stor4[arg1].field_512),
           Array(len=uint256(stor4[arg1].field_768), data=mem[320 len uint256(stor4[arg1].field_768) + (floor32(uint256(stor4[arg1].field_768) - 1) + -uint256(stor4[arg1].field_768) + 32 % 32)]),
           uint256(stor4[arg1].field_1024),
           uint8(stor4[arg1].field_1280)
}

function vote(uint256 arg1, int256 arg2) payable {
    if arg2 < -1:
        if arg2 > 1:
            return 0
    require arg1 < stor4.length
    if uint8(stor[(8 * arg1) + ('name', 'stor4', 4) + 7][address(msg.sender)].field_0) == 1:
        return 0
    uint256(stor4[arg1].field_1536)++
    if not uint256(stor4[arg1].field_1536) <= uint256(stor4[arg1].field_1536) + 1:
        idx = 2 * uint256(stor4[arg1].field_1536) + 1
        while 2 * uint256(stor4[arg1].field_1536) > idx:
            uint256(stor[idx + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_0) = 0
            address(stor[idx + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_256) = 0
            idx = idx + 1
            continue 
    require uint256(stor4[arg1].field_1536) < uint256(stor4[arg1].field_1536)
    uint256(stor[(2 * uint256(stor4[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_0) = arg2
    uint256(stor[(2 * uint256(stor4[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_256) = msg.sender or Mask(96, 160, uint256(stor[(2 * uint256(stor4[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_256))
    uint8(stor[(8 * arg1) + ('name', 'stor4', 4) + 7][address(msg.sender)].field_0) = 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(stor4[arg1].field_1536)
}

function newProposal(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    mem[128 len arg4.length] = arg4[all]
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = 8 * stor4.length + 1
        while sha3(4) + (8 * stor4.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            s = sha3(idx + sha3(mem[0]) + 3)
            while sha3(idx + sha3(mem[0]) + 3) + (uint256(stor[idx + sha3(mem[0]) + 3]) + 31 / 32) > s:
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
    require stor4.length < stor4.length
    uint256(stor4[stor4.length].field_0) = arg1 or Mask(96, 160, uint256(stor4[stor4.length].field_0))
    uint256(stor4[stor4.length].field_256) = arg2
    uint256(stor4[stor4.length].field_512) = arg3
    uint256(stor4[stor4.length].field_768) = arg4.length
    if not arg4.length:
        idx = 0
        while uint256(stor4[stor4.length].field_768) + 31 / 32 > idx:
            uint256(stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg4.length + 128 > idx:
            uint256(stor[s + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg4.length + 31) >> 5
        while uint256(stor4[stor4.length].field_768) + 31 / 32 > idx:
            uint256(stor[idx + sha3((8 * stor4.length) + ('name', 'stor4', 4) + 3)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor4[stor4.length].field_1024) = block.timestamp
    uint8(stor4[stor4.length].field_1280) = 1
    emit ProposalAdded(stor4.length, address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]));
    numProposals = stor4.length + 1
    return stor4.length
}

function executeProposal(uint256 arg1) payable {
    require arg1 < stor4.length
    if block.timestamp <= uint256(stor4[arg1].field_1024) + stor1.length:
        return 0
    if not uint8(stor4[arg1].field_1280):
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(stor4[arg1].field_1536):
        mem[0] = (8 * arg1) + sha3(4) + 6
        s = sub_fd46146a
        s = (2 * idx) + sha3((8 * arg1) + sha3(4) + 6)
        idx = idx + 1
        s = s + sub_fd46146a
        t = t + (sub_fd46146a * uint256(stor[(2 * idx) + sha3((8 * arg1) + ('name', 'stor4', 4) + 6)].field_0))
        continue 
    if s * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) > minimumQuorum:
        if t * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) > 0:
            call address(stor4[arg1].field_0) with:
               funct uint32(stor4[arg1].field_736)
               value uint256(stor4[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args Mask(224, 0, stor4[arg1].field_512)
            uint8(stor4[arg1].field_1280) = 0
        else:
            if s * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) > minimumQuorum:
                if t * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) < 0:
                    uint8(stor4[arg1].field_1280) = 0
    emit ProposalTallied(arg1, t * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536), s * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536), uint8(stor4[arg1].field_1280));
    return (t * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536) * uint256(stor4[arg1].field_1536))
}



}
