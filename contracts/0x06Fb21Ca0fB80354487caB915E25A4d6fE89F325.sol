contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor5;

function _fallback() payable {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor5 = code.data[4730 len 20]
    if code.data[4750 len 32]:
        stor1 = code.data[4750 len 32]
        stor2 = code.data[4782 len 32]
        emit ChangeOfRules(code.data[4750 len 32], code.data[4782 len 32], stor5);
    else:
        stor1 = 1
        stor2 = code.data[4782 len 32]
        emit ChangeOfRules(1, code.data[4782 len 32], stor5);
    return code.data[270 len 4448]
}



// =====================  Runtime code  =====================


address owner;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
address sharesTokenAddress;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[384] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length, data=mem[384 len stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536)
}

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

function changeVotingRules(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    sharesTokenAddress = arg1
    if arg2:
        minimumQuorum = arg2
        debatingPeriodInMinutes = arg3
        emit ChangeOfRules(arg2, arg3, sharesTokenAddress);
    else:
        minimumQuorum = 1
        debatingPeriodInMinutes = arg3
        emit ChangeOfRules(1, arg3, sharesTokenAddress);
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 128] = address(arg2)
    mem[ceil32(arg4.length) + 148] = arg3
    mem[ceil32(arg4.length) + 180 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + 180] = mem[ceil32(arg4.length) + floor32(arg4.length) + 180] and 256^(-(arg4.length % 32) + 32) - 1 or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[arg4.length + 128 len -(arg4.length % 32) + 32] and !(256^(-(arg4.length % 32) + 32) - 1)
    return (uint256(proposals[arg1].field_1536) == sha3(arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 180 len arg4.length % 32]))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(arg3)
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
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

function vote(uint256 arg1, bool arg2) {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0)) != 1
    uint256(proposals[arg1].field_1792)++
    require uint256(proposals[arg1].field_1792) < uint256(proposals[arg1].field_1792)
    uint8(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0) = uint8(arg2)
    address(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8) = msg.sender
    Mask(88, 0, stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280) = uint256(proposals[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(proposals[arg1].field_1792)
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
    require uint256(proposals[arg1].field_1536) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 180 len arg2.length % 32])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_1792):
        mem[0] = (9 * arg1) + sha3(3) + 7
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8)
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + sha3(3) + 7)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + sha3(3) + 7)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    require t > minimumQuorum
    if s <= 0:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        if arg2.length:
            mem[ceil32(arg2.length) + 128] = mem[128]
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 3
        idx = (9 * proposals.length) + 9
        while sha3(3) + (9 * proposals.length) > idx + sha3(mem[0]):
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
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7]) > s:
                Mask(168, 0, stor[s]) = 0
                s = s + 1
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
        uint256(stor[s + sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(9 * proposals.length) + ('name', 'proposals', 3) + 2].length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while stor[(9 * proposals.length) + ('name', 'proposals', 3) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 180] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212] = 256^(-(arg4.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212] or call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[ceil32(arg3.length) + arg4.length + 160 len -(arg4.length % 32) + 32] and !(256^(-(arg4.length % 32) + 32) - 1)
    uint256(proposals[proposals.length].field_1536) = sha3(arg1, arg2, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212 len arg4.length % 32])
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
