contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor4 = code.data[3952 len 32]
    if code.data[3984 len 32]:
        stor0 = code.data[3984 len 32]
    else:
        stor0 = 1
    stor1 = code.data[4016 len 32]
    return code.data[147 len 3805]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
array of struct proposals;
uint256 numProposals;
address sharesTokenAddress;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[384] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 2) + 2)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 2) + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 2) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 2) + 2].length, data=mem[384 len stor[(9 * arg1) + ('name', 'proposals', 2) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'proposals', 2) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'proposals', 2) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           uint8(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536)
}

function sharesTokenAddress() payable {
    return sharesTokenAddress
}

function numProposals() payable {
    return numProposals
}

function debatingPeriodInMinutes() payable {
    return debatingPeriodInMinutes
}

function minimumQuorum() payable {
    return minimumQuorum
}

function _fallback() payable {
  stop
}

function vote(uint256 arg1, bool arg2) payable {
    call sharesTokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < proposals.length
    require uint8(stor[(9 * arg1) + ('name', 'proposals', 2) + 8][address(msg.sender)].field_0) != 1
    uint256(proposals[arg1].field_1792)++
    if not uint256(proposals[arg1].field_1792) <= uint256(proposals[arg1].field_1792) + 1:
        idx = uint256(proposals[arg1].field_1792) + 1
        while uint256(proposals[arg1].field_1792) > idx:
            uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0) = 0
            address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_1792) < uint256(proposals[arg1].field_1792)
    uint256(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0) = arg2 or Mask(248, 8, uint256(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0))
    Mask(248, 0, stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8) = Mask(248, 0, msg.sender)
    uint8(stor[(9 * arg1) + ('name', 'proposals', 2) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280) = uint256(proposals[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(proposals[arg1].field_1792)
}

function executeProposal(uint256 arg1) payable {
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768) + (60 * debatingPeriodInMinutes)
    require uint8(proposals[arg1].field_1024)
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_1792):
        mem[0] = (9 * arg1) + sha3(2) + 7
        mem[100] = address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8)
        call sharesTokenAddress.balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + sha3(2) + 7)
            idx = idx + 1
            s = s
            t = t + ext_call.return_data[0]
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + sha3(2) + 7)
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        continue 
    if t > minimumQuorum:
        if s > 0:
            call address(proposals[arg1].field_0) with:
               funct uint32(proposals[arg1].field_1760)
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args Mask(224, 0, proposals[arg1].field_1536)
            uint8(proposals[arg1].field_1024) = 0
            uint8(proposals[arg1].field_1032) = 1
        else:
            if t > minimumQuorum:
                if 0 > s:
                    uint8(proposals[arg1].field_1024) = 0
                    uint8(proposals[arg1].field_1032) = 0
    emit ProposalTallied(arg1, 0, t, uint8(proposals[arg1].field_1024));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes32 arg4) payable {
    call sharesTokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 2
        idx = (9 * proposals.length) + 9
        while sha3(2) + (9 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7].field_0) > s:
                uint8(stor[s].field_0) = 0
                address(stor[s].field_8) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 2) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(proposals[proposals.length].field_1536) = arg4
    uint256(proposals[proposals.length].field_768) = block.timestamp
    uint8(proposals[proposals.length].field_1024) = 1
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}



}
