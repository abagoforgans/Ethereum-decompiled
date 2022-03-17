contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor4 = code.data[2659 len 32]
    if code.data[2691 len 32]:
        stor0 = code.data[2691 len 32]
    else:
        stor0 = 1
    stor1 = code.data[2723 len 32]
    return code.data[96 len 2563]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
array of uint256 stor1;
array of struct proposals;
array of uint256 stor3;
array of uint16 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of address stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747803;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747805;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747806;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747807;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747808;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[352] = uint256(stor[sha3((8 * arg1) + ('name', 'proposals', 2) + 2)].field_0)
    idx = 352
    s = 0
    while stor[(8 * arg1) + ('name', 'proposals', 2) + 2].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'proposals', 2) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(8 * arg1) + ('name', 'proposals', 2) + 2].length, data=mem[352 len stor[(8 * arg1) + ('name', 'proposals', 2) + 2].length + (floor32(stor[(8 * arg1) + ('name', 'proposals', 2) + 2].length - 1) + -stor[(8 * arg1) + ('name', 'proposals', 2) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           uint8(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280)
}

function sharesTokenAddress() payable {
    return address(stor4.length)
}

function numProposals() payable {
    return stor3.length
}

function debatingPeriodInMinutes() payable {
    return stor1.length
}

function minimumQuorum() payable {
    return minimumQuorum
}

function _fallback() payable {
  stop
}

function vote(uint256 arg1, bool arg2) payable {
    call address(stor4.length).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < proposals.length
    require uint8(stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5][address(msg.sender)].field_0) != 1
    stor5640[arg1]++
    if not stor5640[arg1] <= stor5640[arg1] + 1:
        idx = stor5640[arg1] + 1
        while stor5640[arg1] > idx:
            Mask(168, 0, stor[idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_0) = 0
            idx = idx + 1
            continue 
    require stor5640[arg1] < stor5640[arg1]
    uint8(stor[stor5640[arg1] + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_0) = uint8(arg2)
    Mask(248, 0, stor[stor5640[arg1] + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[stor5640[arg1] + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb61][address(msg.sender)].field_0) = 1
    stor5640[arg1] = stor5640[arg1] + 1
    emit Voted(arg1, arg2, msg.sender);
    return stor5640[arg1]
}

function executeProposal(uint256 arg1) payable {
    require arg1 < proposals.length
    require block.timestamp >= (60 * stor1.length) + stor5640[arg1]
    require uint8(stor5640[arg1].field_0)
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor5640[arg1]:
        mem[0] = (8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60
        mem[100] = address(stor[idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_8)
        call address(stor4.length).balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_8)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((8 * arg1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)
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
            call address(stor5640[arg1]) with:
               value 10^18 * stor5640[arg1] wei
                 gas 0 wei
            uint8(stor5640[arg1].field_0) = 0
            uint8(stor5640[arg1].field_8) = 1
    emit ProposalTallied(arg1, 0, t, uint8(stor5640[arg1].field_0));
    return 0
}

function sub_de68e593(?) payable {
    call address(stor4.length).balanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = (8 * proposals.length + 1) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a
        while (8 * proposals.length) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
            address(stor[idx].field_0) = 0
            stor1[idx] = 0
            uint256(proposals[idx].field_0) = 0
            if 31 >= stor[idx + 2].length:
                stor3[idx] = 0
                uint16(stor4[idx]) = 0
                stor5[idx] = 0
                stor6[idx] = 0
                mem[0] = idx + 6
                s = sha3(s + 6)
                while sha3(s + 6) + stor6[s] > s:
                    Mask(168, 0, stor[s].field_0) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
            s = sha3(idx + 2)
            while sha3(idx + 2) + (stor[idx + 2].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            stor3[idx] = 0
            uint16(stor4[idx]) = 0
            stor5[idx] = 0
            stor6[idx] = 0
            mem[0] = idx + 6
            s = sha3(idx + 6)
            while sha3(idx + 6) + stor6[idx] > s:
                Mask(168, 0, stor[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require proposals.length < proposals.length
    uint256(stor5640[stor2.length]) = arg1 or Mask(96, 160, uint256(stor5640[stor2.length]))
    stor4057[stor2.length] = arg2
    uint256(stor[sha3((8 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=arg3.length, data=arg3[all])
    stor5640[stor2.length] = block.timestamp
    uint8(stor5640[stor2.length].field_0) = 1
    uint8(stor5640[stor2.length].field_8) = 0
    stor5640[stor2.length].field_256 % 1 = 0
    stor5640[stor2.length] = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    stor3.length = proposals.length + 1
    return proposals.length
}



}
