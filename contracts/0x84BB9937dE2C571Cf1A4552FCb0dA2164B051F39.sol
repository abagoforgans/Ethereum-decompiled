contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_5c691762(?)
#
address owner;
uint256 stor0;
array of struct sub_d1a48860;
array of uint256 sub_79634420;
array of struct sub_eba8ba13;
array of struct value;
uint256 sub_88a7905a;
array of struct sub_fc87c349;
array of struct sub_544f78fa;
array of struct status;
uint8 isClaimed;
uint8 stor9; offset 8
address sub_aaa7f6c2Address; offset 16
uint256 stor9; offset 8
uint256 stor9;
array of address sub_ca5997d5;
array of struct proposals;

function status() payable {
    return status[0 len status.length].field_0
}

function proposals(address arg1) payable {
    mem[320] = proposals[arg1].field_0
    idx = 320
    s = 0
    while proposals[arg1].length + 320 > idx + 32:
        mem[idx + 32] = proposals[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 320] = proposals[arg1][5].length
    mem[proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 352] = proposals[arg1][5].field_0
    idx = proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 352
    s = 0
    while proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + proposals[arg1][5].length + 352 > idx + 32:
        mem[idx + 32] = proposals[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=proposals[arg1].length, data=mem[320 len proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + proposals[arg1][5].length + (floor32(proposals[arg1][5].length - 1) + -proposals[arg1][5].length + 32 % 32) + 32]), 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           proposals[arg1].field_768,
           proposals[arg1].field_1024,
           proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 224
}

function value() payable {
    return value[0 len value.length].field_0
}

function sub_544f78fa(?) payable {
    return sub_544f78fa[0 len sub_544f78fa.length].field_0
}

function isClaimed() payable {
    return bool(isClaimed)
}

function sub_79634420(?) payable {
    return sub_79634420[0 len sub_79634420.length]
}

function sub_88a7905a(?) payable {
    return sub_88a7905a
}

function owner() payable {
    return address(owner)
}

function sub_aaa7f6c2(?) payable {
    return sub_aaa7f6c2Address
}

function sub_ca5997d5(?) payable {
    require arg1 < sub_ca5997d5.length
    return sub_ca5997d5[arg1]
}

function sub_d1a48860(?) payable {
    return sub_d1a48860[0 len sub_d1a48860.length].field_0
}

function sub_eba8ba13(?) payable {
    return sub_eba8ba13[0 len sub_eba8ba13.length].field_0
}

function sub_fc87c349(?) payable {
    return sub_fc87c349[0 len sub_fc87c349.length].field_0
}

function _fallback() payable {
    revert 
}

function sub_afefb184(?) payable {
    return 32, 32, arg1
}

function sub_c919e84f(?) payable {
    require msg.sender == address(owner)
    sub_88a7905a = arg1
    emit 0xef447aa0: block.timestamp, sha3('current_maturity Changed'), sha3(sub_88a7905a), msg.sender
}

function sub_08822402(?) payable {
    require msg.sender == address(owner)
    uint256(stor9.field_0) = arg1 or Mask(248, 8, uint256(stor9.field_0))
    if not isClaimed:
        emit 0xef447aa0: block.timestamp, sha3('isClaimed Changed'), sha3('false'), msg.sender
    else:
        emit 0xef447aa0: block.timestamp, sha3('isClaimed Changed'), sha3('true'), msg.sender
}

function sub_6d809492(?) payable {
    idx = 0
    while idx < 20:
        require idx < 20
        mem[idx + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    mem[864] = mem[172 len 8], mem[884 len 12]
    return Array(len=20, data=mem[864])
}

function setValue(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    value[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(value.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + value.length + 128 > idx + 32:
        mem[idx + 32] = value[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('value Changed'), sha3(mem[ceil32(arg1.length) + 128 len value.length]), msg.sender
}

function setStatus(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    status[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(status.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + status.length + 128 > idx + 32:
        mem[idx + 32] = status[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('Status Changed'), sha3(mem[ceil32(arg1.length) + 128 len status.length]), msg.sender
}

function sub_fae0c41b(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    sub_fc87c349[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(sub_fc87c349.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + sub_fc87c349.length + 128 > idx + 32:
        mem[idx + 32] = sub_fc87c349[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('current_currency Changed'), sha3(mem[ceil32(arg1.length) + 128 len sub_fc87c349.length]), msg.sender
}

function sub_44e4319e(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    sub_eba8ba13[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(sub_eba8ba13.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + sub_eba8ba13.length + 128 > idx + 32:
        mem[idx + 32] = sub_eba8ba13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('total_issued_value Changed'), sha3(mem[ceil32(arg1.length) + 128 len sub_eba8ba13.length]), msg.sender
}

function sub_8ee66bf1(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    sub_d1a48860[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(sub_d1a48860.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + sub_d1a48860.length + 128 > idx + 32:
        mem[idx + 32] = sub_d1a48860[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('limpid_facility_id Changed'), sha3(mem[ceil32(arg1.length) + 128 len sub_d1a48860.length]), msg.sender
}

function sub_91a81eb3(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    sub_544f78fa[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(sub_544f78fa.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + sub_544f78fa.length + 128 > idx + 32:
        mem[idx + 32] = sub_544f78fa[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('current_spread_formula Changed'), sha3(mem[ceil32(arg1.length) + 128 len sub_544f78fa.length]), msg.sender
}

function setLock(bool arg1) payable {
    require msg.sender == address(owner)
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
    mem[96] = uint256(status.field_0)
    if not uint8(stor9.field_8):
        idx = 96
        s = 0
        while status.length + 96 > idx + 32:
            mem[idx + 32] = status[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xef447aa0: block.timestamp, sha3('Facility unlocked'), sha3(mem[96 len status.length]), msg.sender
    else:
        idx = 96
        s = 0
        while status.length + 96 > idx + 32:
            mem[idx + 32] = status[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xef447aa0: block.timestamp, sha3('Facility locked'), sha3(mem[96 len status.length]), msg.sender
}

function sub_826e9747(?) payable {
    if not proposals[address(msg.sender)].field_256:
        mem[ceil32(arg1.length) + 288] = Mask(224, 16, 'Error! Proposal doesn't exist.') >> 16, mem[ceil32(arg1.length) + 318 len 2]
        return Array(len=30, data=mem[ceil32(arg1.length) + 288])
    if proposals[address(msg.sender)].field_1024 != 'accepted':
        mem[ceil32(arg1.length) + 352] = mem[ceil32(arg1.length) + 373 len 11]
        return Array(len=43, data='Error! Your proposal has not bee', 'n accepted.', mem[ceil32(arg1.length) + 352])
    if not uint8(stor9.field_8):
        mem[ceil32(arg1.length) + 352] = mem[ceil32(arg1.length) + 373 len 11]
        return Array(len=43, data='Error! Your proposal has not bee', 'n accepted.', mem[ceil32(arg1.length) + 352])
    proposals[address(msg.sender)][5][].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    emit 0xef447aa0: block.timestamp, sha3('proof_submitted'), sha3(arg1[all]), msg.sender
    mem[ceil32(arg1.length) + 288] = Mask(128, 64, 'Acceptance achnowledged.') >> 64, mem[ceil32(arg1.length) + 312 len 8]
    return Array(len=24, data=mem[ceil32(arg1.length) + 288])
}

function sub_e323dde7(?) payable {
    if not proposals[address(msg.sender)].field_256:
        mem[256] = Mask(224, 16, 'Error! Proposal doesn't exist.') >> 16, mem[286 len 2]
        return Array(len=30, data=mem[256])
    if proposals[address(msg.sender)].field_1024 != 'accepted':
        mem[320] = mem[341 len 11]
        return Array(len=43, data='Error! Your proposal has not bee', 'n accepted.', mem[320])
    if not uint8(stor9.field_8):
        mem[320] = mem[341 len 11]
        return Array(len=43, data='Error! Your proposal has not bee', 'n accepted.', mem[320])
    require msg.sender == address(owner)
    bool(status.length) = 0
    uint255(status.length.field_1) = 12
    Mask(248, 0, status.length.field_8) = 'acknowledged' / 256
    idx = 0
    while status.length + 31 / 32 > idx:
        status[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = uint256(status.field_0)
    idx = 192
    s = 0
    while status.length + 192 > idx + 32:
        mem[idx + 32] = status[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('Status Changed'), sha3(mem[192 len status.length]), msg.sender
    idx = 0
    while idx < 20:
        require idx < 20
        mem[idx + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('proposal acceptance acknowledged'), sha3(mem[256 len 20]), msg.sender
    mem[1024] = Mask(128, 64, 'Acceptance achnowledged.') >> 64, mem[1048 len 8]
    return Array(len=24, data=mem[1024])
}

function sub_9b87f49e(?) payable {
    require msg.sender == address(owner)
    bool(status.length) = 0
    uint255(status.length.field_1) = 17
    Mask(248, 0, status.length.field_8) = 'funds_transferred' / 256
    idx = 0
    while status.length + 31 / 32 > idx:
        status[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = uint256(status.field_0)
    idx = 192
    s = 0
    while status.length + 192 > idx + 32:
        mem[idx + 32] = status[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('Status Changed'), sha3(mem[192 len status.length]), msg.sender
    idx = 0
    while idx < 20:
        require idx < 20
        mem[idx + 256 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('funds_transfer_confirmed'), sha3(mem[256 len 20]), msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    idx = 0
    while idx < 20:
        require idx < 20
        mem[idx + 960 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
        idx = idx + 1
        continue 
    emit 0xef447aa0: block.timestamp, sha3('new_facility_owner'), sha3(mem[960 len 20]), msg.sender
    require msg.sender == address(owner)
    isClaimed = 1
    if not isClaimed:
        emit 0xef447aa0: block.timestamp, sha3('isClaimed Changed'), sha3('false'), msg.sender
    else:
        emit 0xef447aa0: block.timestamp, sha3('isClaimed Changed'), sha3('true'), msg.sender
    mem[1856] = mem[1883 len 5]
    return Array(len=69, data='Successfully set status to funds', '_transferred, then changed owner', 'ship.' >> 256, mem[1856])
}

function getProposal(address arg1) payable {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 11
    mem[160] = proposals[address(arg1)].length
    mem[192] = proposals[address(arg1)].field_0
    idx = 192
    s = 0
    while proposals[address(arg1)].length + 160 > idx:
        mem[idx + 32] = proposals[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 224
    mem[ceil32(proposals[address(arg1)].length) + 192] = proposals[address(arg1)][5].length
    mem[0] = sha3(address(arg1), 11) + 5
    mem[ceil32(proposals[address(arg1)].length) + 224] = proposals[address(arg1)][5].field_0
    idx = ceil32(proposals[address(arg1)].length) + 224
    s = 0
    while ceil32(proposals[address(arg1)].length) + proposals[address(arg1)][5].length + 192 > idx:
        mem[idx + 32] = proposals[address(arg1)][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 256] = proposals[address(arg1)].field_256
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 288] = proposals[address(arg1)].field_768
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 320] = proposals[address(arg1)].field_1024
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 224] = 160
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 384] = proposals[address(arg1)].length
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 416 len proposals[address(arg1)].length] = mem[192 len proposals[address(arg1)].length]
    mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 352] = proposals[address(arg1)].length + 192
    mem[proposals[address(arg1)].length + ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 416] = proposals[address(arg1)][5].length
    mem[proposals[address(arg1)].length + ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 448 len proposals[address(arg1)][5].length] = mem[ceil32(proposals[address(arg1)].length) + 224 len proposals[address(arg1)][5].length]
    if not proposals[address(arg1)][5].length % 32:
        return Array(len=proposals[address(arg1)].length, data=mem[192 len proposals[address(arg1)].length], proposals[address(arg1)][5].length, mem[ceil32(proposals[address(arg1)].length) + 224 len proposals[address(arg1)][5].length]), 
               proposals[address(arg1)].field_256,
               proposals[address(arg1)].field_768,
               proposals[address(arg1)].field_1024,
               proposals[address(arg1)].length + 192
    mem[floor32(proposals[address(arg1)][5].length) + proposals[address(arg1)].length + ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + 448] = mem[floor32(proposals[address(arg1)][5].length) + proposals[address(arg1)].length + ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + -proposals[address(arg1)][5].length % 32 + 480 len proposals[address(arg1)][5].length % 32]
    return Array(len=proposals[address(arg1)].length, data=mem[192 len proposals[address(arg1)].length], proposals[address(arg1)][5].length, mem[ceil32(proposals[address(arg1)].length) + ceil32(proposals[address(arg1)][5].length) + proposals[address(arg1)].length + 448 len floor32(proposals[address(arg1)][5].length) + 32]), 
           proposals[address(arg1)].field_256,
           proposals[address(arg1)].field_768,
           proposals[address(arg1)].field_1024,
           proposals[address(arg1)].length + 192
}

function sub_9f309e55(?) payable {
    mem[96] = 0
    require msg.sender == address(owner)
    if not proposals[address(arg1)].field_256:
        mem[256] = Mask(224, 16, 'Error! Proposal doesn't exist.') >> 16, mem[286 len 2]
        return Array(len=30, data=mem[256])
    if proposals[address(arg1)].field_1024 == 'accepted':
        mem[320] = mem[342 len 10]
        return Array(len=42, data='Error! Proposal has already been', ' accepted.', mem[320])
    if uint8(stor9.field_8):
        mem[320] = 0, mem[349 len 3]
        return Array(len=61, data='Error! Facility locked. Have you', ' already approved a proposal?', mem[320])
    mem[32] = 11
    require msg.sender == address(owner)
    if not arg2:
        uint8(stor9.field_8) = 0
        mem[128] = uint256(status.field_0)
        if not uint8(stor9.field_8):
            idx = 128
            s = 0
            while status.length + 128 > idx + 32:
                mem[idx + 32] = status[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xef447aa0: block.timestamp, sha3('Facility unlocked'), sha3(mem[128 len status.length]), msg.sender
            proposals[address(arg1)].field_1024 = 'rejected'
            mem[64] = 192
            mem[128] = 6
            mem[160] = 'active'
            require msg.sender == address(owner)
            bool(status.length) = 0
            uint255(status.length.field_1) = 6
            Mask(248, 0, status.length.field_8) = 'active' / 256
            idx = 0
            while status.length + 31 / 32 > idx:
                status[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = 8
            mem[192] = uint256(status.field_0)
            idx = mem[64]
            s = 0
            while status.length + 192 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _4270 = sha3(mem[mem[64] len status.length + -mem[64] + 192])
            mem[mem[64]] = block.timestamp
            emit 0xef447aa0: block.timestamp, sha3('Status Changed'), _4270, msg.sender
            _4517 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4517] = 0
            _4518 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 20
                mem[64] = mem[64] + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_4518]
                    mem[_4518 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6119 = mem[_4518]
                mem[mem[64] len mem[_4518]] = mem[_4518 + 32 len mem[_4518]]
                emit 0xef447aa0: block.timestamp, sha3('rejected'), sha3(mem[mem[64] len _6119]), msg.sender
                _6127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6127] = 27
                mem[_6127 + 32] = 'Proposal has been rejected.'
            else:
                _5079 = max(160, floor32(status.length - 1) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, mem[64]) + 32
                _msize = max(160, floor32(status.length - 1) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, mem[64])
                mem[_msize + 32] = 20
                mem[64] = _5079 + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_5079]
                    mem[_5079 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6129 = mem[_5079]
                mem[mem[64] len mem[_5079]] = mem[_5079 + 32 len mem[_5079]]
                emit 0xef447aa0: block.timestamp, sha3('rejected'), sha3(mem[mem[64] len _6129]), msg.sender
                _6137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6137] = 27
                mem[_6137 + 32] = 'Proposal has been rejected.'
        else:
            idx = 128
            s = 0
            while status.length + 128 > idx + 32:
                mem[idx + 32] = status[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xef447aa0: block.timestamp, sha3('Facility locked'), sha3(mem[128 len status.length]), msg.sender
            proposals[address(arg1)].field_1024 = 'rejected'
            mem[64] = 192
            mem[128] = 6
            mem[160] = 'active'
            require msg.sender == address(owner)
            bool(status.length) = 0
            uint255(status.length.field_1) = 6
            Mask(248, 0, status.length.field_8) = 'active' / 256
            idx = 0
            while status.length + 31 / 32 > idx:
                status[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = 8
            mem[192] = uint256(status.field_0)
            idx = mem[64]
            s = 0
            while status.length + 192 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _4284 = sha3(mem[mem[64] len status.length + -mem[64] + 192])
            mem[mem[64]] = block.timestamp
            emit 0xef447aa0: block.timestamp, sha3('Status Changed'), _4284, msg.sender
            _4683 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4683] = 0
            _4684 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 20
                mem[64] = mem[64] + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_4684]
                    mem[_4684 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6159 = mem[_4684]
                mem[mem[64] len mem[_4684]] = mem[_4684 + 32 len mem[_4684]]
                emit 0xef447aa0: block.timestamp, sha3('rejected'), sha3(mem[mem[64] len _6159]), msg.sender
                _6167 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6167] = 27
                mem[_6167 + 32] = 'Proposal has been rejected.'
            else:
                _5081 = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, _4683) + 32
                _msize = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, _4683)
                mem[_msize + 32] = 20
                mem[64] = _5081 + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_5081]
                    mem[_5081 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6169 = mem[_5081]
                mem[mem[64] len mem[_5081]] = mem[_5081 + 32 len mem[_5081]]
                emit 0xef447aa0: block.timestamp, sha3('rejected'), sha3(mem[mem[64] len _6169]), msg.sender
                _6177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6177] = 27
                mem[_6177 + 32] = 'Proposal has been rejected.'
        mem[mem[64] + 64 len 27] = 'Proposal has been rejected.'
        mem[mem[64] + 64] = Mask(176, 40, 'Proposal has been rejected.') >> 40, mem[mem[64] + 91 len 5]
    else:
        uint8(stor9.field_8) = 1
        mem[128] = uint256(status.field_0)
        if not uint8(stor9.field_8):
            idx = 128
            s = 0
            while status.length + 128 > idx + 32:
                mem[idx + 32] = status[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xef447aa0: block.timestamp, sha3('Facility unlocked'), sha3(mem[128 len status.length]), msg.sender
            proposals[address(arg1)].field_1024 = 'accepted'
            mem[64] = 192
            mem[128] = 17
            mem[160] = 'proposal_accepted'
            require msg.sender == address(owner)
            bool(status.length) = 0
            uint255(status.length.field_1) = 17
            Mask(248, 0, status.length.field_8) = 'proposal_accepted' / 256
            idx = 0
            while status.length + 31 / 32 > idx:
                status[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = 8
            mem[192] = uint256(status.field_0)
            idx = mem[64]
            s = 0
            while status.length + 192 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _4298 = sha3(mem[mem[64] len status.length + -mem[64] + 192])
            mem[mem[64]] = block.timestamp
            emit 0xef447aa0: block.timestamp, sha3('Status Changed'), _4298, msg.sender
            _4849 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4849] = 0
            _4850 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 20
                mem[64] = mem[64] + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_4850]
                    mem[_4850 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6199 = mem[_4850]
                mem[mem[64] len mem[_4850]] = mem[_4850 + 32 len mem[_4850]]
                emit 0xef447aa0: block.timestamp, sha3('proposal_approved'), sha3(mem[mem[64] len _6199]), msg.sender
                _6207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6207] = 27
                mem[_6207 + 32] = 'Proposal has been approved.'
            else:
                _5083 = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, _4849) + 32
                _msize = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, _4849)
                mem[_msize + 32] = 20
                mem[64] = _5083 + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_5083]
                    mem[_5083 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6209 = mem[_5083]
                mem[mem[64] len mem[_5083]] = mem[_5083 + 32 len mem[_5083]]
                emit 0xef447aa0: block.timestamp, sha3('proposal_approved'), sha3(mem[mem[64] len _6209]), msg.sender
                _6217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6217] = 27
                mem[_6217 + 32] = 'Proposal has been approved.'
        else:
            idx = 128
            s = 0
            while status.length + 128 > idx + 32:
                mem[idx + 32] = status[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0xef447aa0: block.timestamp, sha3('Facility locked'), sha3(mem[128 len status.length]), msg.sender
            proposals[address(arg1)].field_1024 = 'accepted'
            mem[64] = 192
            mem[128] = 17
            mem[160] = 'proposal_accepted'
            require msg.sender == address(owner)
            bool(status.length) = 0
            uint255(status.length.field_1) = 17
            Mask(248, 0, status.length.field_8) = 'proposal_accepted' / 256
            idx = 0
            while status.length + 31 / 32 > idx:
                status[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[0] = 8
            mem[192] = uint256(status.field_0)
            idx = mem[64]
            s = 0
            while status.length + 192 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            _4312 = sha3(mem[mem[64] len status.length + -mem[64] + 192])
            mem[mem[64]] = block.timestamp
            emit 0xef447aa0: block.timestamp, sha3('Status Changed'), _4312, msg.sender
            _5015 = mem[64]
            mem[64] = mem[64] + 32
            mem[_5015] = 0
            _5016 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 20
                mem[64] = mem[64] + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_5016]
                    mem[_5016 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6239 = mem[_5016]
                mem[mem[64] len mem[_5016]] = mem[_5016 + 32 len mem[_5016]]
                emit 0xef447aa0: block.timestamp, sha3('proposal_approved'), sha3(mem[mem[64] len _6239]), msg.sender
                _6247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6247] = 27
                mem[_6247 + 32] = 'Proposal has been approved.'
            else:
                _5085 = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, mem[64], _5015) + 32
                _msize = max(max(0, floor32(status.length - 1)) + 160, mem[64] + max(0, floor32(status.length + -mem[64] + 31) + 5) + 32, mem[64], _5015)
                mem[_msize + 32] = 20
                mem[64] = _5085 + 672
                idx = 0
                while idx < 20:
                    require idx < mem[_5085]
                    mem[_5085 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
                    idx = idx + 1
                    continue 
                _6249 = mem[_5085]
                mem[mem[64] len mem[_5085]] = mem[_5085 + 32 len mem[_5085]]
                emit 0xef447aa0: block.timestamp, sha3('proposal_approved'), sha3(mem[mem[64] len _6249]), msg.sender
                _6257 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6257] = 27
                mem[_6257 + 32] = 'Proposal has been approved.'
        mem[mem[64] + 64 len 27] = 'Proposal has been approved.'
        mem[mem[64] + 64] = Mask(176, 40, 'Proposal has been approved.') >> 40, mem[mem[64] + 91 len 5]
    return Array(len=27, data=mem[mem[64] + 64])
}



}
