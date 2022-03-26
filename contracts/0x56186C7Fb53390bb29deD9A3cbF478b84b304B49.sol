contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
array of uint256 stor2;
mapping of uint256 memberId;
array of struct stor4;
uint256 stor5;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779004;

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return stor2.length
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < stor1.length
    return (uint256(stor1[arg1].field_1280) == sha3(arg2, arg3, arg4[all]))
}

function proposalDeadline(uint256 arg1) {
    require arg1 < stor1.length
    require stor4.length - 1
    return (uint256(stor1[arg1].field_1536) + (60 * 10^(-(5 * uint256(stor1[arg1].field_1024) / stor4.length - 1) + 6) * stor5 / 10))
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

function vote(uint256 arg1, bool arg2, string arg3) {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    require arg1 < stor1.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * arg1) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0) = 1
    if not arg2:
        uint256(stor1[arg1].field_1024)--
    else:
        uint256(stor1[arg1].field_1024)++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function members(uint256 arg1) {
    require arg1 < stor4.length
    mem[256] = uint256(stor[sha3((3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)])
    idx = 256
    s = 0
    while stor[(3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor4[arg1].field_0), 
           bool(uint8(stor4[arg1].field_160)),
           Array(len=stor[(3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length, data=mem[256 len stor[(3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + (floor32(stor[(3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length - 1) + -stor[(3 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 32 % 32)]),
           stor8A35[arg1]
}

function proposals(uint256 arg1) {
    require arg1 < stor1.length
    mem[352] = uint256(stor[sha3((9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308)])
    idx = 352
    s = 0
    while stor[(9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           storB10E[arg1],
           Array(len=stor[(9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length, data=mem[352 len stor[(9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + (floor32(stor[(9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length - 1) + -stor[(9 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f308].length + 32 % 32)]),
           bool(storB10E[arg1]),
           storB10E[arg1],
           storB10E[arg1],
           storB10E[arg1]
}

function changeMembership(address arg1, bool arg2, string arg3) {
    require msg.sender == address(owner)
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < stor4.length
        Mask(96, 0, stor4[stor3[address(arg1)]].field_160) = Mask(96, 0, arg2)
    else:
        memberId[address(arg1)] = stor4.length
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            mem[0] = 4
            idx = (3 * stor4.length) + 3
            while sha3(4) + (3 * stor4.length) > idx + sha3(mem[0]):
                Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require stor4.length < stor4.length
        address(stor4[stor4.length].field_0) = arg1
        Mask(96, 0, stor4[stor4.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor4[stor4.length].field_168) = Mask(88, 168, arg1) >> 168
        uint256(stor[sha3((3 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor4[stor4.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), arg2);
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor1.length
    require stor4.length - 1
    require block.timestamp >= uint256(stor1[arg1].field_1536) + (60 * 10^(-(5 * uint256(stor1[arg1].field_1024) / stor4.length - 1) + 6) * stor5 / 10)
    require storB10E[arg1] > 0
    require not storB10E[arg1]
    require arg1 < stor1.length
    mem[ceil32(arg2.length) + 128] = address(stor1[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = storB10E[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(stor1[arg1].field_1280) == sha3(address(stor1[arg1].field_0), storB10E[arg1], arg2[all])
    storB10E[arg1] = 1
    mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        call address(stor1[arg1].field_0) with:
           value storB10E[arg1] wei
             gas gas_remaining - 34050 wei
            args arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call address(stor1[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
           value storB10E[arg1] wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
    require arg1 < stor1.length
    require stor4.length - 1
    emit ProposalExecuted(arg1, storB10E[arg1], uint256(stor1[arg1].field_1536) + (60 * 10^(-(5 * uint256(stor1[arg1].field_1024) / stor4.length - 1) + 6) * stor5 / 10));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (9 * stor1.length) + 9
        while sha3(1) + (9 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
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
                uint256(stor1[s].field_0) = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 9
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    uint256(stor1[stor1.length].field_256) = arg2
    uint256(stor[sha3((9 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor1[stor1.length].field_1280) = sha3(arg1, arg2, arg4[all])
    uint8(stor1[stor1.length].field_768) = 0
    uint256(stor1[stor1.length].field_1536) = block.timestamp
    emit ProposalAdded(stor1.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    stor2.length = stor1.length + 1
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    require stor1.length < stor1.length
    require bool(uint8(stor[(9 * stor1.length) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * stor1.length) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0) = 1
    uint256(stor1[stor1.length].field_1024)++
    emit Voted(uint256 rg1, bool rg2, address rg3, string rg4):
               stor1.length,
               1,
               msg.sender,
               128,
               0,
    return stor1.length
}

function newProposalInEther(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (9 * stor1.length) + 9
        while sha3(1) + (9 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
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
                uint256(stor1[s].field_0) = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 9
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    uint256(stor1[stor1.length].field_256) = 10^18 * arg2
    uint256(stor[sha3((9 * stor1.length) + ('name', 'stor1', 1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor1[stor1.length].field_1280) = sha3(arg1, 10^18 * arg2, arg4[all])
    uint8(stor1[stor1.length].field_768) = 0
    uint256(stor1[stor1.length].field_1536) = block.timestamp
    emit ProposalAdded(stor1.length, address(arg1), 10^18 * arg2, Array(len=arg3.length, data=arg3[all]));
    stor2.length = stor1.length + 1
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(stor4[stor3[address(msg.sender)]].field_160)
    require stor1.length < stor1.length
    require bool(uint8(stor[(9 * stor1.length) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0)) != 1
    uint8(stor[(9 * stor1.length) + ('name', 'stor1', 1) + 8][address(msg.sender)].field_0) = 1
    uint256(stor1[stor1.length].field_1024)++
    emit Voted(uint256 rg1, bool rg2, address rg3, string rg4):
               stor1.length,
               1,
               msg.sender,
               128,
               0,
    return stor1.length
}

function changeMembers(address[] arg1, bool arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _51 = mem[(32 * idx) + 128]
        _52 = mem[64]
        mem[64] = mem[64] + 32
        mem[_52] = 0
        require msg.sender == address(owner)
        mem[0] = address(_51)
        mem[32] = 3
        if memberId[address(_51)]:
            mem[32] = 3
            require memberId[address(_51)] < stor4.length
            mem[0] = 4
            Mask(96, 0, stor4[stor3[address(_51)]].field_160) = Mask(96, 0, arg2)
        else:
            memberId[address(_51)] = stor4.length
            stor4.length++
            if not stor4.length > stor4.length + 1:
                _56 = mem[64]
                mem[64] = mem[64] + 128
                mem[_56] = _51
                mem[_56 + 32] = arg2
                mem[_56 + 64] = _52
                mem[_56 + 96] = block.timestamp
                require stor4.length < stor4.length
                address(stor4[stor4.length].field_0) = address(_51)
                Mask(96, 0, stor4[stor4.length].field_160) = Mask(96, 0, arg2)
                Mask(88, 0, stor4[stor4.length].field_168) = Mask(88, 168, _51) >> 168
                mem[0] = (3 * stor4.length) + sha3(4) + 1
                bool(stor4[stor4.length].field_256) = 0
                uint255(stor4[stor4.length].field_257) = 0
                Mask(248, 0, stor4[stor4.length].field_264) = mem[_52 + 32 len 31]
                s = sha3((3 * stor4.length) + sha3(4) + 1)
                while sha3((3 * stor4.length) + sha3(4) + 1) + (stor[(3 * stor4.length) + ('name', 'stor4', 4) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = 4
                s = sha3(mem[0]) + (3 * stor4.length) + 3
                while sha3(4) + (3 * stor4.length) > s:
                    Mask(168, 0, stor[s]) = 0
                    uint256(stor1[s].field_0) = 0
                    if 31 < stor[s + 1].length:
                        mem[0] = s + 1
                        t = sha3(s + 1)
                        while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                    stor2[s] = 0
                    s = s + 3
                    continue 
                _99 = mem[64]
                mem[64] = mem[64] + 128
                mem[_99] = _51
                mem[_99 + 32] = arg2
                mem[_99 + 64] = _52
                mem[_99 + 96] = block.timestamp
                require stor4.length < stor4.length
                mem[0] = 4
                address(stor4[stor4.length].field_0) = address(_51)
                Mask(96, 0, stor4[stor4.length].field_160) = Mask(96, 0, arg2)
                Mask(88, 0, stor4[stor4.length].field_168) = Mask(88, 168, _51) >> 168
                _109 = mem[_52]
                mem[0] = (3 * stor4.length) + sha3(4) + 1
                uint256(stor4[stor4.length].field_256) = (2 * _109) + 1
                t = sha3((3 * stor4.length) + sha3(4) + 1)
                s = _52 + 32
                while _52 + _109 + 32 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor4.length) + sha3(4) + 1) + (Mask(251, 0, _109 + 31) >> 5)
                while sha3((3 * stor4.length) + sha3(4) + 1) + (stor[(3 * stor4.length) + ('name', 'stor4', 4) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor4[stor4.length].field_512) = block.timestamp
        mem[mem[64]] = address(_51)
        mem[mem[64] + 32] = arg2
        emit MembershipChanged(address(_51), arg2);
        idx = idx + 1
        continue 
}



}
