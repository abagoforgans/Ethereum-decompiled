contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor4 = code.data[3363 len 32]
    if code.data[3395 len 32]:
        stor0 = code.data[3395 len 32]
    else:
        stor0 = 1
    stor1 = code.data[3427 len 32]
    return code.data[96 len 3267]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
array of struct proposals;
uint256 numProposals;
address sharesTokenAddress;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of address stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747803;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747805;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747806;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747807;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747808;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747809;

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

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < proposals.length
    return (stor5640[arg1] == sha3(arg2, arg3, arg4[all]))
}

function vote(uint256 arg1, bool arg2) payable {
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < proposals.length
    require uint8(stor[(9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb62][address(msg.sender)].field_0) != 1
    stor5640[arg1]++
    if not stor5640[arg1] <= stor5640[arg1] + 1:
        idx = stor5640[arg1] + 1
        while stor5640[arg1] > idx:
            Mask(168, 0, stor[idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_0) = 0
            idx = idx + 1
            continue 
    require stor5640[arg1] < stor5640[arg1]
    uint8(stor[stor5640[arg1] + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_0) = uint8(arg2)
    Mask(248, 0, stor[stor5640[arg1] + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[stor5640[arg1] + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb62][address(msg.sender)].field_0) = 1
    stor5640[arg1] = stor5640[arg1] + 1
    emit Voted(arg1, arg2, msg.sender);
    return stor5640[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= stor5640[arg1]
    require uint8(stor5640[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = address(stor5640[arg1])
    mem[ceil32(arg2.length) + 148] = stor5640[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor5640[arg1] == sha3(address(stor5640[arg1]), stor5640[arg1], arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor5640[arg1]:
        mem[0] = (9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_8)
        call sharesTokenAddress.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    if t > minimumQuorum:
        if s <= 0:
            if t > minimumQuorum:
                if 0 > s:
                    uint16(stor5640[arg1].field_0) = 0
        else:
            mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                call address(stor5640[arg1]) with:
                   value 10^18 * stor5640[arg1] wei
                     gas gas_remaining - 34050 wei
                    args arg2[all]
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                call address(stor5640[arg1]).mem[ceil32(arg2.length) + 128 len 4] with:
                   value 10^18 * stor5640[arg1] wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
            uint8(stor5640[arg1].field_0) = 0
            uint8(stor5640[arg1].field_8) = 1
    emit ProposalTallied(arg1, 0, t, uint8(stor5640[arg1].field_0));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 2
        idx = (9 * proposals.length) + 9
        while sha3(2) + (9 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 7
                s = sha3(s + sha3(mem[0]) + 7)
                while sha3(s + sha3(mem[0]) + 7) + uint256(stor[s + sha3(mem[0]) + 7].field_0) > s + sha3(mem[0]):
                    Mask(168, 0, stor[s + sha3(mem[0])].field_0) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7].field_0) > s:
                Mask(168, 0, stor[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require proposals.length < proposals.length
    uint256(stor5640[stor2.length]) = arg1 or Mask(96, 160, uint256(stor5640[stor2.length]))
    stor4057[stor2.length] = arg2
    uint256(stor[sha3((9 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=arg3.length, data=arg3[all])
    stor5640[stor2.length] = sha3(arg1, arg2, arg4[all])
    stor5640[stor2.length] = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor5640[stor2.length].field_0) = 1
    uint8(stor5640[stor2.length].field_8) = 0
    stor5640[stor2.length] = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}



}
