contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;

function _fallback() payable {
    stor4 = code.data[3578 len 32]
    if code.data[3610 len 32]:
        stor0 = code.data[3610 len 32]
    else:
        stor0 = 1
    stor1 = code.data[3642 len 32]
    return code.data[83 len 3495]
}



// =====================  Runtime code  =====================


uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
address sharesTokenAddress;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403028;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403029;

function sharesTokenAddress() {
    return sharesTokenAddress
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function minimumQuorum() {
    return minimumQuorum
}

function _fallback() payable {
    revert 
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < stor2.length
    return (uint256(stor2[arg1].field_1536) == sha3(arg2, arg3, arg4[all]))
}

function proposals(uint256 arg1) {
    require arg1 < stor2.length
    mem[384] = uint256(stor[sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1].field_0), 
           stor4057[arg1],
           Array(len=stor[(9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length, data=mem[384 len stor[(9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32)]),
           stor4057[arg1],
           bool(uint8(stor4057[arg1].field_0)),
           bool(uint8(stor4057[arg1].field_8)),
           stor4057[arg1],
           stor4057[arg1]
}

function vote(uint256 arg1, bool arg2) {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < stor2.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'stor2', 2) + 8][address(msg.sender)].field_0)) != 1
    uint256(stor2[arg1].field_1792)++
    if not uint256(stor2[arg1].field_1792) <= uint256(stor2[arg1].field_1792) + 1:
        idx = uint256(stor2[arg1].field_1792) + 1
        while uint256(stor2[arg1].field_1792) > idx:
            Mask(168, 0, stor[idx + sha3((9 * arg1) + ('name', 'stor2', 2) + 7)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(stor2[arg1].field_1792) < uint256(stor2[arg1].field_1792)
    uint8(stor[uint256(stor2[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor2', 2) + 7)].field_0) = uint8(arg2)
    Mask(248, 0, stor[uint256(stor2[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor2', 2) + 7)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[uint256(stor2[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor2', 2) + 7)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + ('name', 'stor2', 2) + 8][address(msg.sender)].field_0) = 1
    uint256(stor2[arg1].field_1280) = uint256(stor2[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(stor2[arg1].field_1792)
}

function executeProposal(uint256 arg1, bytes arg2) {
    require arg1 < stor2.length
    require block.timestamp >= stor4057[arg1]
    require uint8(stor4057[arg1].field_0)
    require stor4057[arg1] == sha3(address(stor2[arg1].field_0), stor4057[arg1], arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor4057[arg1]:
        mem[0] = (9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)].field_8)
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(stor[idx + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad5)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    if t > minimumQuorum:
        if s > 0:
            uint8(stor4057[arg1].field_0) = 0
            uint8(stor4057[arg1].field_8) = 1
        else:
            if t > minimumQuorum:
                if 0 > s:
                    uint16(stor4057[arg1].field_0) = 0
    emit ProposalTallied(arg1, 0, t, bool(uint8(stor4057[arg1].field_0)));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (9 * stor2.length) + 9
        while sha3(2) + (9 * stor2.length) > idx + sha3(mem[0]):
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
                s = s + 9
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
            idx = idx + 9
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
    stor4057[stor2.length] = arg2
    uint256(stor[sha3((9 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][].field_0) = Array(len=arg3.length, data=arg3[all])
    stor4057[stor2.length] = sha3(arg1, arg2, arg4[all])
    stor4057[stor2.length] = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor4057[stor2.length].field_0) = 1
    uint8(stor4057[stor2.length].field_8) = 0
    stor4057[stor2.length] = 0
    emit ProposalAdded(stor2.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor2.length + 1
    return stor2.length
}



}
