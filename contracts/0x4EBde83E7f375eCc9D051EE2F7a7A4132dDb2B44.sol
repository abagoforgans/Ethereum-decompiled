contract main {




// =====================  Runtime code  =====================


#
#  - sub_b8b16d61(?)
#
uint32 stor0;
uint32 stor0; offset 160
uint32 stor0; offset 192
address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of struct sub_dccecd8b;
mapping of struct sub_557841e5;
mapping of struct sub_2db5b655;

function sub_2db5b655(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    return sub_2db5b655[address(arg1)].field_0, sub_2db5b655[address(arg1)].field_256
}

function sub_557841e5(?) {
    require calldata.size - 4 >= 64
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('param', 'arg2')), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5)))))))), 
           sub_557841e5[arg1 << 224][arg2 << 224].field_1024,
           sub_557841e5[arg1 << 224][arg2 << 224].field_1792,
           sub_557841e5[arg1 << 224][arg2 << 224].field_1536
}

function sub_dccecd8b(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    return sub_dccecd8b[arg1 << 224].field_1280, 
           sub_dccecd8b[arg1 << 224].field_1536,
           sub_dccecd8b[arg1 << 224].field_2304,
           sub_dccecd8b[arg1 << 224].field_2560,
           sub_dccecd8b[arg1 << 224].field_1024
}

function zKill() {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    revert
}

function sub_77220577(?) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    return address(stor0.field_0), uint32(stor0.field_0), uint32(stor0.field_0), stor1.length, stor2, stor3
}

function sub_05f7db96(?) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    require stor3 > 0
    stor3 = 0
    call msg.sender with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7a36653e(?) {
    require sub_2db5b655[address(msg.sender)].field_0 > 0
    sub_2db5b655[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value sub_2db5b655[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1239a3f8: sub_2db5b655[address(msg.sender)].field_0, msg.sender
}

function sub_f6bd48fe(?) {
    require calldata.size - 4 >= 64
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    return sub_557841e5[arg1 << 224][arg2 << 224].field_0, 
           sub_557841e5[arg1 << 224][arg2 << 224].field_256,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('param', 'arg2')), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5)))))))),
           sub_557841e5[arg1 << 224][arg2 << 224].field_512,
           stor1.length,
           stor2
}

function sub_f028aeb7(?) {
    if block.timestamp >= sub_dccecd8b[uint32(stor0.field_0)].field_768:
        return Array(len=109, data='The last contest has expired, so', ' do not place a bet at this time', '.~nPlease check back often for a', ' new contest.' >> 512, Mask(104, -768, 'The last contest has expired, so', ' do not place a bet at this time', '.~nPlease check back often for a', ' new contest.') << 768), 
    mem[128] = sub_dccecd8b[uint32(stor0.field_0)][1].field_0
    idx = 128
    s = 0
    while sub_dccecd8b[uint32(stor0.field_0)][1].length + 96 > idx:
        mem[idx + 32] = sub_dccecd8b[uint32(stor0.field_0)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_dccecd8b[uint32(stor0.field_0)][1].length, data=mem[128 len sub_dccecd8b[uint32(stor0.field_0)][1].length]), 
}

function sub_c481458a(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    uint32(stor0.field_160) = uint32(uint32(stor0.field_160) + 1)
    uint32(stor0.field_192) = 0
    stor1.length = 0
    stor2 = 0
    sub_dccecd8b[uint32(stor0.field_0)].field_0 = block.timestamp
    sub_dccecd8b[uint32(stor0.field_0)].field_256 = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_dccecd8b[uint32(stor0.field_0)][s + 1].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_dccecd8b[uint32(stor0.field_0)][1].length + 31 / 32 > idx:
        sub_dccecd8b[uint32(stor0.field_0)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_dccecd8b[uint32(stor0.field_0)].field_512 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_dccecd8b[uint32(stor0.field_0)][s + 2].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_dccecd8b[uint32(stor0.field_0)][2].length + 31 / 32 > idx:
        sub_dccecd8b[uint32(stor0.field_0)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    sub_dccecd8b[uint32(stor0.field_0)].field_768 = uint32(cd[68])
    sub_dccecd8b[uint32(stor0.field_0)].field_800 = 0
    sub_dccecd8b[uint32(stor0.field_0)].field_1024 = uint8(cd[100])
}

function sub_bfbe7d39(?) payable {
    require calldata.size - 4 >= 32
    require msg.value > 0
    require block.timestamp < sub_dccecd8b[uint32(stor0.field_0)].field_768
    uint32(stor0.field_192) = uint32(uint32(stor0.field_192) + 1)
    sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_0 = block.timestamp
    sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_256 = msg.sender
    sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_512 = msg.value
    sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_768 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg1'))))
    if ('signextend', 0, ('signextend', 0, ('param', 'arg1'))) != 1:
        stor2 += msg.value
    else:
        stor1.length += msg.value
    mem[384] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
    idx = 384
    s = 0
    while sub_dccecd8b[uint32(stor0.field_0)][2].length + 384 > idx + 32:
        mem[idx + 32] = sub_dccecd8b[uint32(stor0.field_0)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
        emit 0x5e6ca176: sub_2db5b655[address(msg.sender)].field_0, Array(len=sub_dccecd8b[uint32(stor0.field_0)][2].length, data=mem[384 len sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32)]), Mask(24, 232, 'No'), sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_512, stor1.length, stor2, stor1.length + stor2, 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024, msg.sender
    else:
        emit 0x5e6ca176: sub_2db5b655[address(msg.sender)].field_0, Array(len=sub_dccecd8b[uint32(stor0.field_0)][2].length, data=mem[384 len sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32)]), Yes, sub_557841e5[uint32(stor0.field_0)][uint32(stor0.field_0)].field_512, stor1.length, stor2, stor1.length + stor2, 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024, msg.sender
}

function sub_d434f411(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    mem[96] = sub_dccecd8b[arg1 << 224][1].length
    mem[128] = sub_dccecd8b[arg1 << 224][1].field_0
    idx = 128
    s = 0
    while sub_dccecd8b[arg1 << 224][1].length + 96 > idx:
        mem[idx + 32] = sub_dccecd8b[arg1 << 224][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 160
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + 128] = sub_dccecd8b[arg1 << 224][2].length
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + 160] = sub_dccecd8b[arg1 << 224][2].field_0
    idx = ceil32(sub_dccecd8b[arg1 << 224][1].length) + 160
    s = 0
    while ceil32(sub_dccecd8b[arg1 << 224][1].length) + sub_dccecd8b[arg1 << 224][2].length + 128 > idx:
        mem[idx + 32] = sub_dccecd8b[arg1 << 224][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 4
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 160] = sub_dccecd8b[arg1 << 224].field_0
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 256] = sub_dccecd8b[arg1 << 224].field_768
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 288] = sub_dccecd8b[arg1 << 224].field_1792
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 320] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_dccecd8b', 4)))))))
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 192] = 192
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 352] = sub_dccecd8b[arg1 << 224][1].length
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 384 len ceil32(sub_dccecd8b[arg1 << 224][1].length)] = mem[128 len ceil32(sub_dccecd8b[arg1 << 224][1].length)]
    mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 224] = sub_dccecd8b[arg1 << 224][1].length + 224
    mem[sub_dccecd8b[arg1 << 224][1].length + ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 384] = sub_dccecd8b[arg1 << 224][2].length
    mem[sub_dccecd8b[arg1 << 224][1].length + ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 416 len ceil32(sub_dccecd8b[arg1 << 224][2].length)] = mem[ceil32(sub_dccecd8b[arg1 << 224][1].length) + 160 len ceil32(sub_dccecd8b[arg1 << 224][2].length)]
    if not sub_dccecd8b[arg1 << 224][2].length % 32:
        return sub_dccecd8b[arg1 << 224].field_0, 
               Array(len=sub_dccecd8b[arg1 << 224][1].length, data=mem[128 len ceil32(sub_dccecd8b[arg1 << 224][1].length)], mem[(2 * ceil32(sub_dccecd8b[arg1 << 224][1].length)) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 384 len sub_dccecd8b[arg1 << 224][2].length + sub_dccecd8b[arg1 << 224][1].length + -ceil32(sub_dccecd8b[arg1 << 224][1].length) + 32]),
               sub_dccecd8b[arg1 << 224][1].length + 224,
               sub_dccecd8b[arg1 << 224].field_768,
               sub_dccecd8b[arg1 << 224].field_1792,
               ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_dccecd8b', 4)))))))
    mem[floor32(sub_dccecd8b[arg1 << 224][2].length) + sub_dccecd8b[arg1 << 224][1].length + ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 416] = mem[floor32(sub_dccecd8b[arg1 << 224][2].length) + sub_dccecd8b[arg1 << 224][1].length + ceil32(sub_dccecd8b[arg1 << 224][1].length) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + -sub_dccecd8b[arg1 << 224][2].length % 32 + 448 len sub_dccecd8b[arg1 << 224][2].length % 32]
    return sub_dccecd8b[arg1 << 224].field_0, 
           Array(len=sub_dccecd8b[arg1 << 224][1].length, data=mem[128 len ceil32(sub_dccecd8b[arg1 << 224][1].length)], mem[(2 * ceil32(sub_dccecd8b[arg1 << 224][1].length)) + ceil32(sub_dccecd8b[arg1 << 224][2].length) + 384 len floor32(sub_dccecd8b[arg1 << 224][2].length) + sub_dccecd8b[arg1 << 224][1].length + -ceil32(sub_dccecd8b[arg1 << 224][1].length) + 64]),
           sub_dccecd8b[arg1 << 224][1].length + 224,
           sub_dccecd8b[arg1 << 224].field_768,
           sub_dccecd8b[arg1 << 224].field_1792,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_dccecd8b', 4)))))))
}

function sub_1e77f044(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    mem[96] = uint32(uint32(stor0.field_192) + 1)
    if not uint32(uint32(stor0.field_192) + 1):
        mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128] = uint32(uint32(stor0.field_192) + 1)
        mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160] = uint32(uint32(stor0.field_192) + 1)
        mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192] = uint32(uint32(stor0.field_192) + 1)
        mem[64] = (uint32(uint32(stor0.field_192) + 1) << 7) + 224
        idx = 1
        while uint32(idx) <= uint32(stor0.field_192):
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = 0
            mem[_65 + 32] = 0
            mem[_65 + 64] = 0
            mem[_65 + 96] = 0
            mem[_65 + 128] = 0
            mem[_65 + 160] = 0
            mem[_65 + 192] = 0
            mem[_65 + 224] = 0
            mem[0] = uint32(idx)
            mem[32] = sha3(arg1 << 224, 5)
            _72 = mem[64]
            mem[64] = mem[64] + 256
            mem[_72] = sub_557841e5[arg1 << 224][idx << 224].field_0
            mem[_72 + 32] = sub_557841e5[arg1 << 224][idx << 224].field_256
            mem[_72 + 64] = sub_557841e5[arg1 << 224][idx << 224].field_512
            mem[_72 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
            mem[_72 + 128] = sub_557841e5[arg1 << 224][idx << 224].field_1024
            mem[_72 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
            mem[_72 + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1536
            mem[_72 + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1792
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = sub_557841e5[arg1 << 224][idx << 224].field_0
            require uint32(idx) < mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
            mem[(32 * uint32(idx)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 160] = sub_557841e5[arg1 << 224][idx << 224].field_256
            require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
            mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + 192] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))))
            require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
            mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224] = sub_557841e5[arg1 << 224][idx << 224].field_512
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _64 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        _115 = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])]
        mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * _115) + (32 * _64) + _62 + 192] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        _137 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        mem[(32 * _115) + (32 * _64) + _62 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])]
        mem[_62 + 96] = (32 * _137) + (32 * _115) + (32 * _64) + 224
        mem[(32 * _137) + (32 * _115) + (32 * _64) + _62 + 224] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        _153 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        mem[(32 * _137) + (32 * _115) + (32 * _64) + _62 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])]
        return memory
          from mem[64]
           len (32 * _153) + (32 * _137) + (32 * _115) + (32 * _64) + _62 + -mem[64] + 256
    mem[128 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128] = uint32(uint32(stor0.field_192) + 1)
    mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160] = uint32(uint32(stor0.field_192) + 1)
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192] = uint32(uint32(stor0.field_192) + 1)
    mem[64] = (uint32(uint32(stor0.field_192) + 1) << 7) + 224
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    idx = 1
    while uint32(idx) <= uint32(stor0.field_192):
        _69 = mem[64]
        mem[64] = mem[64] + 256
        mem[_69] = 0
        mem[_69 + 32] = 0
        mem[_69 + 64] = 0
        mem[_69 + 96] = 0
        mem[_69 + 128] = 0
        mem[_69 + 160] = 0
        mem[_69 + 192] = 0
        mem[_69 + 224] = 0
        mem[0] = uint32(idx)
        mem[32] = sha3(arg1 << 224, 5)
        _77 = mem[64]
        mem[64] = mem[64] + 256
        mem[_77] = sub_557841e5[arg1 << 224][idx << 224].field_0
        mem[_77 + 32] = sub_557841e5[arg1 << 224][idx << 224].field_256
        mem[_77 + 64] = sub_557841e5[arg1 << 224][idx << 224].field_512
        mem[_77 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
        mem[_77 + 128] = sub_557841e5[arg1 << 224][idx << 224].field_1024
        mem[_77 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
        mem[_77 + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1536
        mem[_77 + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1792
        require uint32(idx) < mem[96]
        mem[(32 * uint32(idx)) + 128] = sub_557841e5[arg1 << 224][idx << 224].field_0
        require uint32(idx) < mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        mem[(32 * uint32(idx)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 160] = sub_557841e5[arg1 << 224][idx << 224].field_256
        require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + 192] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))))
        require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224] = sub_557841e5[arg1 << 224][idx << 224].field_512
        idx = idx + 1
        continue 
    _66 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _68 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
    _118 = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])]
    mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]) + (32 * mem[96]) + 192
    mem[(32 * _118) + (32 * _68) + _66 + 192] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
    _140 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
    mem[(32 * _118) + (32 * _68) + _66 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])]
    mem[_66 + 96] = (32 * _140) + (32 * _118) + (32 * _68) + 224
    mem[(32 * _140) + (32 * _118) + (32 * _68) + _66 + 224] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
    _156 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
    mem[(32 * _140) + (32 * _118) + (32 * _68) + _66 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])]
    return memory
      from mem[64]
       len (32 * _156) + (32 * _140) + (32 * _118) + (32 * _68) + _66 + -mem[64] + 256
}

function sub_a38199a8(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    mem[96] = uint32(uint32(stor0.field_192) + 1)
    if not uint32(uint32(stor0.field_192) + 1):
        mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128] = uint32(uint32(stor0.field_192) + 1)
        mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160] = uint32(uint32(stor0.field_192) + 1)
        mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192] = uint32(uint32(stor0.field_192) + 1)
        mem[64] = (uint32(uint32(stor0.field_192) + 1) << 7) + 224
        idx = 1
        while uint32(idx) <= uint32(stor0.field_192):
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = 0
            mem[_65 + 32] = 0
            mem[_65 + 64] = 0
            mem[_65 + 96] = 0
            mem[_65 + 128] = 0
            mem[_65 + 160] = 0
            mem[_65 + 192] = 0
            mem[_65 + 224] = 0
            mem[0] = uint32(idx)
            mem[32] = sha3(arg1 << 224, 5)
            _72 = mem[64]
            mem[64] = mem[64] + 256
            mem[_72] = sub_557841e5[arg1 << 224][idx << 224].field_0
            mem[_72 + 32] = sub_557841e5[arg1 << 224][idx << 224].field_256
            mem[_72 + 64] = sub_557841e5[arg1 << 224][idx << 224].field_512
            mem[_72 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
            mem[_72 + 128] = sub_557841e5[arg1 << 224][idx << 224].field_1024
            mem[_72 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
            mem[_72 + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1536
            mem[_72 + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1792
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))))
            require uint32(idx) < mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
            mem[(32 * uint32(idx)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 160] = sub_557841e5[arg1 << 224][idx << 224].field_1024
            require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
            mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1792
            require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
            mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1536
            idx = idx + 1
            continue 
        _62 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _64 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        _115 = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])]
        mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * _115) + (32 * _64) + _62 + 192] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        _137 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        mem[(32 * _115) + (32 * _64) + _62 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])]
        mem[_62 + 96] = (32 * _137) + (32 * _115) + (32 * _64) + 224
        mem[(32 * _137) + (32 * _115) + (32 * _64) + _62 + 224] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        _153 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        mem[(32 * _137) + (32 * _115) + (32 * _64) + _62 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])]
        return memory
          from mem[64]
           len (32 * _153) + (32 * _137) + (32 * _115) + (32 * _64) + _62 + -mem[64] + 256
    mem[128 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128] = uint32(uint32(stor0.field_192) + 1)
    mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160] = uint32(uint32(stor0.field_192) + 1)
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192] = uint32(uint32(stor0.field_192) + 1)
    mem[64] = (uint32(uint32(stor0.field_192) + 1) << 7) + 224
    mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len 32 * uint32(uint32(stor0.field_192) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_192) + 1)]
    idx = 1
    while uint32(idx) <= uint32(stor0.field_192):
        _69 = mem[64]
        mem[64] = mem[64] + 256
        mem[_69] = 0
        mem[_69 + 32] = 0
        mem[_69 + 64] = 0
        mem[_69 + 96] = 0
        mem[_69 + 128] = 0
        mem[_69 + 160] = 0
        mem[_69 + 192] = 0
        mem[_69 + 224] = 0
        mem[0] = uint32(idx)
        mem[32] = sha3(arg1 << 224, 5)
        _77 = mem[64]
        mem[64] = mem[64] + 256
        mem[_77] = sub_557841e5[arg1 << 224][idx << 224].field_0
        mem[_77 + 32] = sub_557841e5[arg1 << 224][idx << 224].field_256
        mem[_77 + 64] = sub_557841e5[arg1 << 224][idx << 224].field_512
        mem[_77 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
        mem[_77 + 128] = sub_557841e5[arg1 << 224][idx << 224].field_1024
        mem[_77 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))
        mem[_77 + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1536
        mem[_77 + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1792
        require uint32(idx) < mem[96]
        mem[(32 * uint32(idx)) + 128] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'sub_557841e5', 5))))))))))
        require uint32(idx) < mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
        mem[(32 * uint32(idx)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 160] = sub_557841e5[arg1 << 224][idx << 224].field_1024
        require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
        mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + 192] = sub_557841e5[arg1 << 224][idx << 224].field_1792
        require uint32(idx) < mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
        mem[(32 * uint32(idx)) + (64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224] = sub_557841e5[arg1 << 224][idx << 224].field_1536
        idx = idx + 1
        continue 
    _66 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _68 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
    _118 = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128])]
    mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_192) + 1)) + 128]) + (32 * mem[96]) + 192
    mem[(32 * _118) + (32 * _68) + _66 + 192] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
    _140 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160]
    mem[(32 * _118) + (32 * _68) + _66 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + 160])]
    mem[_66 + 96] = (32 * _140) + (32 * _118) + (32 * _68) + 224
    mem[(32 * _140) + (32 * _118) + (32 * _68) + _66 + 224] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
    _156 = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192]
    mem[(32 * _140) + (32 * _118) + (32 * _68) + _66 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_192) + 1)) + (32 * uint32(uint32(stor0.field_192) + 1)) + 192])]
    return memory
      from mem[64]
       len (32 * _156) + (32 * _140) + (32 * _118) + (32 * _68) + _66 + -mem[64] + 256
}

function sub_513236e4(?) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    mem[96] = uint32(uint32(stor0.field_160) + 1)
    if not uint32(uint32(stor0.field_160) + 1):
        mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128] = uint32(uint32(stor0.field_160) + 1)
        mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160] = uint32(uint32(stor0.field_160) + 1)
        mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192] = uint32(uint32(stor0.field_160) + 1)
        mem[64] = (uint32(uint32(stor0.field_160) + 1) << 7) + 224
        idx = 1
        while uint32(idx) <= uint32(stor0.field_160):
            _207 = mem[64]
            mem[64] = mem[64] + 352
            mem[_207] = 0
            mem[_207 + 32] = 96
            mem[_207 + 64] = 96
            mem[_207 + 96] = 0
            mem[_207 + 128] = 0
            mem[_207 + 160] = 0
            mem[_207 + 192] = 0
            mem[_207 + 224] = 0
            mem[_207 + 256] = 0
            mem[_207 + 288] = 0
            mem[_207 + 320] = 0
            mem[0] = uint32(idx)
            mem[32] = 4
            _213 = mem[64]
            mem[64] = mem[64] + 352
            mem[_213] = sub_dccecd8b[idx << 224].field_0
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(sub_dccecd8b[idx << 224][1].length) + 32
            mem[_214] = sub_dccecd8b[idx << 224][1].length
            mem[0] = sha3(idx << 224, 4) + 1
            mem[_214 + 32] = sub_dccecd8b[idx << 224][1].field_0
            s = _214 + 32
            t = sha3(mem[0])
            while _214 + sub_dccecd8b[idx << 224][1].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_213 + 32] = _214
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(sub_dccecd8b[idx << 224][2].length) + 32
            mem[_406] = sub_dccecd8b[idx << 224][2].length
            mem[0] = sha3(idx << 224, 4) + 2
            mem[_406 + 32] = sub_dccecd8b[idx << 224][2].field_0
            s = _406 + 32
            t = sha3(mem[0])
            while _406 + sub_dccecd8b[s << 224][2].length > s:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_213 + 64] = _406
            mem[_213 + 96] = sub_dccecd8b[s << 224].field_768
            mem[_213 + 128] = sub_dccecd8b[s << 224].field_1024
            mem[_213 + 160] = sub_dccecd8b[s << 224].field_1280
            mem[_213 + 192] = sub_dccecd8b[s << 224].field_1536
            mem[_213 + 224] = sub_dccecd8b[s << 224].field_1792
            mem[_213 + 256] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 1)), ('name', 'sub_dccecd8b', 4)))))))
            mem[_213 + 288] = sub_dccecd8b[s << 224].field_2304
            mem[_213 + 320] = sub_dccecd8b[s << 224].field_2560
            require uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[96]
            mem[(32 * uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + 128] = mem[_213]
            require uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
            mem[(32 * uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 160] = sub_dccecd8b[s << 224].field_768
            require uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
            mem[(32 * uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (64 * uint32(uint32(stor0.field_160) + 1)) + 192] = sub_dccecd8b[s << 224].field_1792
            require uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
            mem[(32 * uint32(_406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 224] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 1)), ('name', 'sub_dccecd8b', 4)))))))))
            s = _406 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 33
            continue 
        _204 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _206 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
        _399 = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128])]
        mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * _399) + (32 * _206) + _204 + 192] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
        _505 = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
        mem[(32 * _399) + (32 * _206) + _204 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160])]
        mem[_204 + 96] = (32 * _505) + (32 * _399) + (32 * _206) + 224
        mem[(32 * _505) + (32 * _399) + (32 * _206) + _204 + 224] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
        _537 = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
        mem[(32 * _505) + (32 * _399) + (32 * _206) + _204 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192])]
        return memory
          from mem[64]
           len (32 * _537) + (32 * _505) + (32 * _399) + (32 * _206) + _204 + -mem[64] + 256
    mem[128 len 32 * uint32(uint32(stor0.field_160) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_160) + 1)]
    mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128] = uint32(uint32(stor0.field_160) + 1)
    mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 160 len 32 * uint32(uint32(stor0.field_160) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_160) + 1)]
    mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160] = uint32(uint32(stor0.field_160) + 1)
    mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 192 len 32 * uint32(uint32(stor0.field_160) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_160) + 1)]
    mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192] = uint32(uint32(stor0.field_160) + 1)
    mem[64] = (uint32(uint32(stor0.field_160) + 1) << 7) + 224
    mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 224 len 32 * uint32(uint32(stor0.field_160) + 1)] = code.data[20405 len 32 * uint32(uint32(stor0.field_160) + 1)]
    idx = 1
    while uint32(idx) <= uint32(stor0.field_160):
        _211 = mem[64]
        mem[64] = mem[64] + 352
        mem[_211] = 0
        mem[_211 + 32] = 96
        mem[_211 + 64] = 96
        mem[_211 + 96] = 0
        mem[_211 + 128] = 0
        mem[_211 + 160] = 0
        mem[_211 + 192] = 0
        mem[_211 + 224] = 0
        mem[_211 + 256] = 0
        mem[_211 + 288] = 0
        mem[_211 + 320] = 0
        mem[0] = uint32(idx)
        mem[32] = 4
        _216 = mem[64]
        mem[64] = mem[64] + 352
        mem[_216] = sub_dccecd8b[idx << 224].field_0
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(sub_dccecd8b[idx << 224][1].length) + 32
        mem[_217] = sub_dccecd8b[idx << 224][1].length
        mem[0] = sha3(idx << 224, 4) + 1
        mem[_217 + 32] = sub_dccecd8b[idx << 224][1].field_0
        s = _217 + 32
        t = sha3(mem[0])
        while _217 + sub_dccecd8b[idx << 224][1].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_216 + 32] = _217
        _411 = mem[64]
        mem[64] = mem[64] + ceil32(sub_dccecd8b[idx << 224][2].length) + 32
        mem[_411] = sub_dccecd8b[idx << 224][2].length
        mem[0] = sha3(idx << 224, 4) + 2
        mem[_411 + 32] = sub_dccecd8b[idx << 224][2].field_0
        s = _411 + 32
        t = sha3(mem[0])
        while _411 + sub_dccecd8b[s << 224][2].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_216 + 64] = _411
        mem[_216 + 96] = sub_dccecd8b[s << 224].field_768
        mem[_216 + 128] = sub_dccecd8b[s << 224].field_1024
        mem[_216 + 160] = sub_dccecd8b[s << 224].field_1280
        mem[_216 + 192] = sub_dccecd8b[s << 224].field_1536
        mem[_216 + 224] = sub_dccecd8b[s << 224].field_1792
        mem[_216 + 256] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 1)), ('name', 'sub_dccecd8b', 4)))))))
        mem[_216 + 288] = sub_dccecd8b[s << 224].field_2304
        mem[_216 + 320] = sub_dccecd8b[s << 224].field_2560
        require uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[96]
        mem[(32 * uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + 128] = mem[_216]
        require uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
        mem[(32 * uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 160] = sub_dccecd8b[s << 224].field_768
        require uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
        mem[(32 * uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (64 * uint32(uint32(stor0.field_160) + 1)) + 192] = sub_dccecd8b[s << 224].field_1792
        require uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32) < mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
        mem[(32 * uint32(_411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 32)) + (64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 224] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 1)), ('name', 'sub_dccecd8b', 4)))))))))
        s = _411 + floor32(sub_dccecd8b[s << 224][2].length - 1) + 33
        continue 
    _208 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _210 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
    _402 = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128])] = mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 160 len floor32(mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128])]
    mem[mem[64] + 64] = (32 * mem[(32 * uint32(uint32(stor0.field_160) + 1)) + 128]) + (32 * mem[96]) + 192
    mem[(32 * _402) + (32 * _210) + _208 + 192] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
    _508 = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160]
    mem[(32 * _402) + (32 * _210) + _208 + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160])] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 192 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + 160])]
    mem[_208 + 96] = (32 * _508) + (32 * _402) + (32 * _210) + 224
    mem[(32 * _508) + (32 * _402) + (32 * _210) + _208 + 224] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
    _540 = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192]
    mem[(32 * _508) + (32 * _402) + (32 * _210) + _208 + 256 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192])] = mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 224 len floor32(mem[(64 * uint32(uint32(stor0.field_160) + 1)) + (32 * uint32(uint32(stor0.field_160) + 1)) + 192])]
    return memory
      from mem[64]
       len (32 * _540) + (32 * _508) + (32 * _402) + (32 * _210) + _208 + -mem[64] + 256
}

function sub_bd777394(?) {
    require calldata.size - 4 >= 32
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'Sender not authorized.'
    require not sub_dccecd8b[uint32(stor0.field_0)].field_1792
    mem[64] = 352
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    sub_dccecd8b[uint32(stor0.field_0)].field_2048 = uint8(('signextend', 0, ('signextend', 0, ('param', 'arg1'))))
    sub_dccecd8b[uint32(stor0.field_0)].field_1280 = stor1.length
    sub_dccecd8b[uint32(stor0.field_0)].field_1536 = stor2
    sub_dccecd8b[uint32(stor0.field_0)].field_1792 = block.timestamp
    if ('signextend', 0, ('signextend', 0, ('param', 'arg1'))) != 1:
        sub_dccecd8b[uint32(stor0.field_0)].field_2304 = stor2
        mem[0] = uint32(stor0.field_160)
        sub_dccecd8b[uint32(stor0.field_0)].field_2560 = stor1.length
        if ('signextend', 0, ('signextend', 0, ('param', 'arg1'))) == 2:
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024 = block.timestamp
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1280 = 2
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                sub_dccecd8b[uint32(stor0.field_0)].field_2304 = 0
                mem[0] = uint32(stor0.field_160)
                mem[32] = 4
                sub_dccecd8b[uint32(stor0.field_0)].field_2560 = 0
                idx = idx + 1
                continue 
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 1:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3694 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3694 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3694 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3694 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3694 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3694 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3731 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3731 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3731 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3731 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3731 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3731 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3743 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3743 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3743 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3743 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3743 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3743 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3863 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3863 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3863 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3863 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3863 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3863 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3755 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3755 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3755 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3755 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3755 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3755 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3876 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3876 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3876 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3876 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3876 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3876 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3888 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3888 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3888 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3888 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3888 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3888 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4133 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4133 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4133 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4133 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4133 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4133 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3767 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3767 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3767 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3767 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3767 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3767 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3901 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3901 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3901 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3901 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3901 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3901 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3913 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3913 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3913 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3913 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3913 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3913 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4148 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4148 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4148 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4148 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4148 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4148 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3925 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3925 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3925 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3925 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3925 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3925 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4161 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4161 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4161 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4161 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4161 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4161 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4173 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4173 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4173 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4173 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4173 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4173 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4485 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4485 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4485 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4485 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4485 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4485 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                else:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3779 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3779 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3779 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3779 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3779 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3779 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3938 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3938 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3938 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3938 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3938 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3938 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3950 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3950 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3950 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3950 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3950 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3950 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4188 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4188 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4188 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4188 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4188 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4188 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3962 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3962 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3962 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3962 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3962 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3962 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4201 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4201 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4201 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4201 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4201 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4201 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4213 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4213 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4213 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4213 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4213 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4213 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4504 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4504 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4504 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4504 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4504 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4504 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3974 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3974 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3974 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3974 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3974 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3974 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4226 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4226 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4226 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4226 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4226 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4226 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4238 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4238 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4238 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4238 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4238 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4238 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4519 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4519 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4519 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4519 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4519 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4519 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4250 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4250 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4250 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4250 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4250 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4250 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4532 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4532 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4532 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4532 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4532 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4532 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4544 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4544 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4544 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4544 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4544 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4544 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4854 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4854 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4854 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4854 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4854 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4854 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                idx = idx + 1
                continue 
        else:
            s = 96
            idx = 1
            t = stor1.length
            while uint32(idx) <= uint32(stor0.field_192):
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024 = block.timestamp
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                _1233 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1233] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_0
                mem[_1233 + 32] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                mem[_1233 + 64] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                mem[_1233 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_1233 + 128] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024
                mem[_1233 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_1233 + 192] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                mem[_1233 + 224] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                if ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))) != ('signextend', 0, ('signextend', 0, ('param', 'arg1'))):
                    s = _1233
                    idx = idx + 1
                    t = t
                    continue 
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1280 = 1
                if t > sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512:
                    sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 + (sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * uint8(-sub_dccecd8b[uint32(stor0.field_0)].field_1024 + 100) / 100)
                    stor3 += sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                    mem[0] = uint32(idx)
                    mem[32] = sha3(uint32(stor0.field_0), 5)
                    sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                    s = _1233
                    idx = idx + 1
                    t = t - sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                    continue 
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 + (t * uint8(-sub_dccecd8b[uint32(stor0.field_0)].field_1024 + 100) / 100)
                stor3 += t * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536 = t * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                s = _1233
                idx = idx + 1
                t = 0
                continue 
            v = v
            u = uint32(stor0.field_192)
            w = w
            while uint32(u) > 0:
                mem[0] = uint32(u)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                _3531 = mem[64]
                mem[64] = mem[64] + 256
                mem[_3531] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_0
                mem[_3531 + 32] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                mem[_3531 + 64] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                mem[_3531 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_3531 + 128] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1024
                mem[_3531 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_3531 + 192] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1536
                mem[_3531 + 224] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                if ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))) == ('signextend', 0, ('signextend', 0, ('param', 'arg1'))):
                    mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                    mem[32] = 6
                    sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                    v = _3531
                    u = u - 1
                    w = w
                    continue 
                if w > sub_557841e5[uint32(stor0.field_0)][u << 224].field_512:
                    sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                    mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                    mem[32] = 6
                    sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                    v = _3531
                    u = u - 1
                    w = w - sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                    continue 
                sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792 = w
                mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                mem[32] = 6
                sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                v = _3531
                u = u - 1
                w = 0
                continue 
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 1:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5890 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5890 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5890 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5890 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5890 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5890 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _5915 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5915 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5915 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5915 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5915 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5915 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5927 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5927 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5927 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5927 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5927 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5927 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6039 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6039 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6039 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6039 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6039 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6039 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5939 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5939 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5939 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5939 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5939 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5939 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6052 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6052 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6052 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6052 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6052 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6052 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6064 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6064 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6064 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6064 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6064 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6064 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6295 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6295 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6295 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6295 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6295 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6295 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5951 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5951 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5951 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5951 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5951 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5951 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6077 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6077 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6077 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6077 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6077 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6077 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6089 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6089 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6089 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6089 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6089 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6089 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6310 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6310 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6310 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6310 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6310 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6310 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6101 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6101 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6101 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6101 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6101 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6101 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6323 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6323 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6323 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6323 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6323 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6323 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6335 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6335 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6335 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6335 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6335 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6335 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6574 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6574 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6574 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6574 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6574 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6574 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                else:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5963 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5963 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5963 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5963 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5963 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5963 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6114 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6114 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6114 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6114 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6114 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6114 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6126 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6126 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6126 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6126 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6126 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6126 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6350 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6350 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6350 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6350 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6350 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6350 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6138 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6138 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6138 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6138 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6138 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6138 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6363 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6363 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6363 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6363 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6363 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6363 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6375 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6375 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6375 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6375 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6375 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6375 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6593 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6593 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6593 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6593 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6593 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6593 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6150 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6150 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6150 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6150 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6150 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6150 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6388 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6388 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6388 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6388 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6388 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6388 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6400 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6400 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6400 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6400 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6400 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6400 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6608 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6608 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6608 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6608 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6608 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6608 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6412 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6412 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6412 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6412 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6412 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6412 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6621 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6621 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6621 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6621 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6621 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6621 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6633 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6633 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6633 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6633 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6633 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6633 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6756 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6756 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6756 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6756 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6756 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6756 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                idx = idx + 1
                continue 
    else:
        sub_dccecd8b[uint32(stor0.field_0)].field_2304 = stor1.length
        mem[0] = uint32(stor0.field_160)
        sub_dccecd8b[uint32(stor0.field_0)].field_2560 = stor2
        if ('signextend', 0, ('signextend', 0, ('param', 'arg1'))) == 2:
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024 = block.timestamp
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1280 = 2
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                sub_dccecd8b[uint32(stor0.field_0)].field_2304 = 0
                mem[0] = uint32(stor0.field_160)
                mem[32] = 4
                sub_dccecd8b[uint32(stor0.field_0)].field_2560 = 0
                idx = idx + 1
                continue 
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 1:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3712 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3712 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3712 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3712 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3712 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3712 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3798 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3798 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3798 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3798 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3798 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3798 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3810 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3810 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3810 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3810 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3810 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3810 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _3991 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3991 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3991 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3991 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3991 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3991 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3822 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3822 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3822 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3822 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3822 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3822 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4004 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4004 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4004 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4004 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4004 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4004 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4016 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4016 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4016 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4016 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4016 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4016 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4281 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4281 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4281 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4281 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4281 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4281 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3834 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3834 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3834 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3834 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3834 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3834 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4029 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4029 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4029 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4029 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4029 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4029 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4041 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4041 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4041 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4041 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4041 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4041 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4296 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4296 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4296 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4296 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4296 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4296 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4053 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4053 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4053 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4053 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4053 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4053 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4309 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4309 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4309 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4309 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4309 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4309 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4321 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4321 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4321 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4321 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4321 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4321 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4631 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4631 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4631 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4631 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4631 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4631 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                else:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _3846 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_3846 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_3846 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _3846 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _3846 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _3846 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4066 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4066 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4066 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4066 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4066 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4066 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4078 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4078 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4078 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4078 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4078 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4078 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4336 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4336 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4336 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4336 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4336 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4336 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4090 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4090 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4090 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4090 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4090 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4090 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4349 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4349 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4349 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4349 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4349 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4349 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4361 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4361 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4361 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4361 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4361 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4361 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4650 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4650 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4650 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4650 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4650 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4650 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4102 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4102 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4102 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4102 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4102 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4102 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4374 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4374 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4374 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4374 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4374 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4374 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4386 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4386 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4386 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4386 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4386 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4386 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4665 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4665 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4665 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4665 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4665 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4665 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4398 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4398 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4398 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4398 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4398 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4398 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _4678 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4678 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4678 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4678 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4678 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4678 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _4690 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_4690 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_4690 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _4690 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _4690 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _4690 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _5018 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5018 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5018 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5018 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5018 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5018 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                idx = idx + 1
                continue 
        else:
            s = 96
            idx = 1
            t = stor2
            while uint32(idx) <= uint32(stor0.field_192):
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024 = block.timestamp
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                _1254 = mem[64]
                mem[64] = mem[64] + 256
                mem[_1254] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_0
                mem[_1254 + 32] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                mem[_1254 + 64] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                mem[_1254 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_1254 + 128] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1024
                mem[_1254 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_1254 + 192] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                mem[_1254 + 224] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                if ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))) != ('signextend', 0, ('signextend', 0, ('param', 'arg1'))):
                    s = _1254
                    idx = idx + 1
                    t = t
                    continue 
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1280 = 1
                if t > sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512:
                    sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 + (sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * uint8(-sub_dccecd8b[uint32(stor0.field_0)].field_1024 + 100) / 100)
                    stor3 += sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                    mem[0] = uint32(idx)
                    mem[32] = sha3(uint32(stor0.field_0), 5)
                    sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                    s = _1254
                    idx = idx + 1
                    t = t - sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                    continue 
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512 + (t * uint8(-sub_dccecd8b[uint32(stor0.field_0)].field_1024 + 100) / 100)
                stor3 += t * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536 = t * sub_dccecd8b[uint32(stor0.field_0)].field_1024 / 100
                s = _1254
                idx = idx + 1
                t = 0
                continue 
            v = v
            u = uint32(stor0.field_192)
            w = w
            while uint32(u) > 0:
                mem[0] = uint32(u)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                _3535 = mem[64]
                mem[64] = mem[64] + 256
                mem[_3535] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_0
                mem[_3535 + 32] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                mem[_3535 + 64] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                mem[_3535 + 96] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_3535 + 128] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1024
                mem[_3535 + 160] = ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))
                mem[_3535 + 192] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1536
                mem[_3535 + 224] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                if ('signextend', 0, ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 3)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))))) == ('signextend', 0, ('signextend', 0, ('param', 'arg1'))):
                    mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                    mem[32] = 6
                    sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                    v = _3535
                    u = u - 1
                    w = w
                    continue 
                if w > sub_557841e5[uint32(stor0.field_0)][u << 224].field_512:
                    sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792 = sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                    mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                    mem[32] = 6
                    sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                    v = _3535
                    u = u - 1
                    w = w - sub_557841e5[uint32(stor0.field_0)][u << 224].field_512
                    continue 
                sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792 = w
                mem[0] = sub_557841e5[uint32(stor0.field_0)][u << 224].field_256
                mem[32] = 6
                sub_2db5b655[stor5[uint32(stor0.field_0)][u << 224].field_256].field_0 += sub_557841e5[uint32(stor0.field_0)][u << 224].field_1792
                v = _3535
                u = u - 1
                w = 0
                continue 
            idx = 1
            while uint32(idx) <= uint32(stor0.field_192):
                mem[0] = uint32(idx)
                mem[32] = sha3(uint32(stor0.field_0), 5)
                if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 1:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5902 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5902 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5902 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5902 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5902 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5902 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _5976 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5976 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5976 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5976 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5976 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5976 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _5988 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_5988 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_5988 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _5988 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _5988 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _5988 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6165 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6165 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6165 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6165 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6165 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6165 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6000 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6000 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6000 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6000 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6000 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6000 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6178 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6178 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6178 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6178 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6178 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6178 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6190 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6190 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6190 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6190 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6190 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6190 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6431 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Mask(24, 232, 'No')
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6431 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6431 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6431 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6431 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6431 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6012 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6012 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6012 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6012 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6012 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6012 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6203 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6203 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6203 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6203 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6203 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6203 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6215 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6215 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6215 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6215 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6215 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6215 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6446 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6446 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6446 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6446 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6446 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6446 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6227 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6227 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6227 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6227 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6227 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6227 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6459 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6459 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6459 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6459 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6459 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6459 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6471 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6471 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6471 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6471 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6471 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6471 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6659 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6659 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6659 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6659 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6659 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6659 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                else:
                    if ('signextend', 0, ('signextend', 0, ('field', 2048, ('stor', ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_dccecd8b', 4)))))) != 2:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6024 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6024 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6024 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6024 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6024 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6024 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6240 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6240 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6240 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6240 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6240 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6240 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6252 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6252 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6252 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6252 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6252 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6252 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6486 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6486 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6486 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6486 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6486 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6486 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6264 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6264 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6264 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6264 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6264 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6264 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6499 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6499 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6499 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6499 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6499 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6499 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6511 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6511 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6511 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6511 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6511 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6511 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6678 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Yes
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6678 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6678 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6678 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6678 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6678 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                    else:
                        if ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6276 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6276 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6276 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6276 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6276 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6276 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6524 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6524 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6524 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6524 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6524 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6524 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6536 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6536 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6536 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6536 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6536 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6536 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6693 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Mask(24, 232, 'No')
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6693 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6693 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6693 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6693 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6693 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                        else:
                            if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 1:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6548 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Lost
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6548 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6548 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6548 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6548 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6548 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6706 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6706 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6706 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6706 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6706 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6706 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                            else:
                                if ('signextend', 0, ('signextend', 0, ('field', 1280, ('stor', ('map', ('mask_shl', 32, 0, 224, ('var', 0)), ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'sub_557841e5', 5))))))) != 2:
                                    _6718 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Mask(32, 224, 'Won')
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6718 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6718 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6718 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6718 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6718 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                                else:
                                    _6794 = mem[64]
                                    mem[mem[64]] = sub_2db5b655[stor5[uint32(stor0.field_0)][idx << 224].field_256].field_0
                                    mem[mem[64] + 64] = Tie
                                    mem[mem[64] + 96] = Yes
                                    mem[mem[64] + 128] = Push
                                    mem[mem[64] + 160] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_512
                                    mem[mem[64] + 192] = sub_dccecd8b[uint32(stor0.field_0)].field_2304
                                    mem[mem[64] + 224] = sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 256] = sub_dccecd8b[uint32(stor0.field_0)].field_2304 + sub_dccecd8b[uint32(stor0.field_0)].field_2560
                                    mem[mem[64] + 288] = 10^16 * sub_dccecd8b[uint32(stor0.field_0)].field_1024
                                    mem[mem[64] + 320] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1536
                                    mem[mem[64] + 352] = sub_557841e5[uint32(stor0.field_0)][idx << 224].field_1792
                                    mem[mem[64] + 32] = 384
                                    mem[_6794 + 384] = sub_dccecd8b[uint32(stor0.field_0)][2].length
                                    mem[0] = sha3(uint32(stor0.field_0), 4) + 2
                                    mem[_6794 + 416] = sub_dccecd8b[uint32(stor0.field_0)][2].field_0
                                    s = _6794 + 416
                                    t = sha3(sha3(uint32(stor0.field_0), 4) + 2)
                                    while _6794 + sub_dccecd8b[uint32(stor0.field_0)][2].length + 416 > s + 32:
                                        mem[s + 32] = stor1[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    emit 0xdb9b27a3: mem[mem[64] len _6794 + sub_dccecd8b[uint32(stor0.field_0)][2].length + (floor32(sub_dccecd8b[uint32(stor0.field_0)][2].length - 1) + -sub_dccecd8b[uint32(stor0.field_0)][2].length + 32 % 32) + -mem[64] + 416], sub_557841e5[uint32(stor0.field_0)][idx << 224].field_256
                idx = idx + 1
                continue 
}



}
