contract main {




// =====================  Runtime code  =====================


address owner;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
address sharesTokenAddress;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < proposals.length
    mem[128] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_0)
    idx = 128
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length, data=mem[128 len stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length]),
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
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function changeVotingRules(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sharesTokenAddress = arg1
    if arg2:
        minimumQuorum = arg2
    else:
        minimumQuorum = 1
    debatingPeriodInMinutes = arg3
    emit ChangeOfRules(minimumQuorum, debatingPeriodInMinutes, sharesTokenAddress);
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 160] = address(arg2)
    mem[ceil32(arg4.length) + 180] = arg3
    mem[ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 244 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + 128] = arg4.length + 52
    mem[arg4.length + ceil32(arg4.length) + 212] = uint256(proposals[arg1].field_1536) == sha3(mem[ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]])
    return memory
      from arg4.length + ceil32(arg4.length) + 212
       len 32
}

function vote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sharesTokenAddress)
    staticcall sharesTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0)) != 1
    uint256(proposals[arg1].field_1792)++
    if uint256(proposals[arg1].field_1792) > uint256(proposals[arg1].field_1792) + 1:
        idx = uint256(proposals[arg1].field_1792) + 1
        while uint256(proposals[arg1].field_1792) > idx:
            uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0) = 0
            address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_1792) < uint256(proposals[arg1].field_1792)
    uint8(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 7) + uint256(proposals[arg1].field_1792)].field_0) = uint8(arg2)
    address(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 7) + uint256(proposals[arg1].field_1792)].field_8) = msg.sender
    uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280) = uint256(proposals[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(proposals[arg1].field_1792)
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = arg1
    mem[ceil32(arg4.length) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit receivedTokens(address arg1, uint256 arg2, address arg3, bytes arg4):
                            0,
                            uint128(arg1) << 96,
                            arg2,
                            address(arg3),
                            128,
                            arg4.length,
                            Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256,
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 288] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 320 len arg4.length % 32]
        emit receivedTokens(address arg1, uint256 arg2, address arg3, bytes arg4):
                            0,
                            uint128(arg1) << 96,
                            arg2,
                            address(arg3),
                            128,
                            arg4.length,
                            Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                            mem[(2 * ceil32(arg4.length)) + 288 len floor32(arg4.length) + -ceil32(arg4.length) + 32],
}

function executeProposal(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg1 < proposals.length
    require block.timestamp > uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 160] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 180] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 212 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 244 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length + 52
    require uint256(proposals[arg1].field_1536) == sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_1792):
        mem[0] = (9 * arg1) + sha3(3) + 7
        mem[arg2.length + ceil32(arg2.length) + 216] = address(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 7) + idx].field_8)
        require ext_code.size(sharesTokenAddress)
        staticcall sharesTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 7) + idx].field_8)
        mem[arg2.length + ceil32(arg2.length) + 212] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not uint8(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 7) + idx].field_0):
            idx = idx + 1
            s = s
            t = t + ext_call.return_data[0]
            continue 
        idx = idx + 1
        s = s + ext_call.return_data[0]
        t = t + ext_call.return_data[0]
        continue 
    require t >= minimumQuorum
    if s <= 0:
        Mask(248, 0, proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        mem[arg2.length + ceil32(arg2.length) + 212 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 244 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call address(proposals[arg1].field_0).mem[arg2.length + ceil32(arg2.length) + 212 len 4] with:
           value uint256(proposals[arg1].field_256) wei
             gas gas_remaining wei
            args mem[arg2.length + ceil32(arg2.length) + 216 len arg2.length - 4]
        require ext_call.success
        Mask(248, 0, proposals[arg1].field_1032) = 1
    emit ProposalTallied(arg1, s, t, bool(uint8(proposals[arg1].field_1032)));
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require ext_code.size(sharesTokenAddress)
    staticcall sharesTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    proposals.length++
    if proposals.length <= proposals.length + 1:
        require proposals.length < proposals.length
        address(proposals[proposals.length].field_0) = arg1
        uint256(proposals[proposals.length].field_256) = arg2
        mem[0] = (9 * proposals.length) + sha3(3) + 2
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = address(arg1)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 212] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 244 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 52
    else:
        mem[0] = 3
        idx = (9 * proposals.length) + 9
        while sha3(3) + (9 * proposals.length) > idx + sha3(mem[0]):
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
        address(proposals[proposals.length].field_0) = arg1
        uint256(proposals[proposals.length].field_256) = arg2
        mem[0] = (9 * proposals.length) + sha3(3) + 2
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = address(arg1)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 212] = arg2
        _421 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 244 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 52
    uint256(proposals[proposals.length].field_1536) = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    Mask(248, 0, proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function newProposalInEther(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require ext_code.size(sharesTokenAddress)
    staticcall sharesTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(sharesTokenAddress)
    staticcall sharesTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    proposals.length++
    if proposals.length <= proposals.length + 1:
        require proposals.length < proposals.length
        address(proposals[proposals.length].field_0) = arg1
        uint256(proposals[proposals.length].field_256) = 10^18 * arg2
        mem[0] = (9 * proposals.length) + sha3(3) + 2
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = address(arg1)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 212] = 10^18 * arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 244 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 52
    else:
        mem[0] = 3
        idx = (9 * proposals.length) + 9
        while sha3(3) + (9 * proposals.length) > idx + sha3(mem[0]):
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
        address(proposals[proposals.length].field_0) = arg1
        uint256(proposals[proposals.length].field_256) = 10^18 * arg2
        mem[0] = (9 * proposals.length) + sha3(3) + 2
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = address(arg1)
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 212] = 10^18 * arg2
        _421 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 244 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 244])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 52
    uint256(proposals[proposals.length].field_1536) = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    Mask(248, 0, proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), 10^18 * arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}



}
