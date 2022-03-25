contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[65 len 5050]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
address tokenAddress;
uint256 stor4;

function proposals(uint256 arg1) {
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
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536)
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function owner() {
    return address(owner)
}

function token() {
    return address(tokenAddress)
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function changeVotingRules(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    debatingPeriodInMinutes = arg2
    emit ChangeOfRules(debatingPeriodInMinutes);
}

function veto(uint256 arg1) {
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 2) + 8][address(msg.sender)].field_0)) != 1
    uint256(proposals[arg1].field_1792)++
    if not uint256(proposals[arg1].field_1792) <= uint256(proposals[arg1].field_1792) + 1:
        idx = uint256(proposals[arg1].field_1792) + 1
        while uint256(proposals[arg1].field_1792) > idx:
            uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0) = 0
            address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_1792) < uint256(proposals[arg1].field_1792)
    uint8(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0) = 1
    Mask(248, 0, stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8) = Mask(248, 0, msg.sender)
    uint8(stor[(9 * arg1) + ('name', 'proposals', 2) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280) = uint256(proposals[arg1].field_1792) + 1
    emit Voted(arg1, 1, msg.sender);
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x4a501381 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return uint256(proposals[arg1].field_1792)
}

function sub_dfe12c31(?) {
    require msg.sender == address(owner)
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
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = address(owner)
    uint256(proposals[proposals.length].field_256) = arg1
    uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 2) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(proposals[proposals.length].field_1536) = sha3(address(owner), arg1, arg3[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(owner), arg1, Array(len=arg2.length, data=arg2[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1, bytes arg2) {
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(proposals[arg1].field_1536) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < uint256(proposals[arg1].field_1792):
        mem[0] = (9 * arg1) + sha3(2) + 7
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8)
        require ext_code.size(address(tokenAddress))
        call address(tokenAddress).0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 2) + 7)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + sha3(2) + 7)
            idx = idx + 1
            s = s
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + sha3(2) + 7)
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    mem[ceil32(arg2.length) + 160] = 0
    require ext_code.size(address(tokenAddress))
    call address(tokenAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if s >= ext_call.return_data[0] / 2:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0) with:
               funct ext_call.return_data[0 len 4]
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0) with:
               funct ext_call.return_data[0 len 4]
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
    emit 0xe9de5427: arg1, 0, bool(uint8(proposals[arg1].field_1032))
    return 0
}



}
