contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() {
    stor3 = 3600
    stor4 = block.timestamp - 3600
    s = 0
    idx = 0
    while idx < 3:
        s = 0
        while s < 3:
            require idx < 3
            require s < 3
            uint255(stor[(0.03125 / s) + idx + 11].field_0) = uint255(256^(s % 32))
            bool(stor[(0.03125 / s) + idx + 11].field_255) = 0
            s = s + 1
            continue 
        s = 3
        idx = idx + 1
        continue 
    return code.data[178 len 7656]
}



// =====================  Runtime code  =====================


#
#  - sub_b11c4dd3(?)
#
array of uint256 sub_a0a3861d;
array of uint256 sub_ec310cae;
uint8 stor10; offset 160
address stor10;
uint8 stor14;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor3;
uint256 stor4;
array of uint256 sub_02dcf8ba;
array of uint256 sub_beddd1f6;
address stor7;
address stor8;
array of uint256 sub_5450398b;

function sub_02dcf8ba(?) {
    return uint256(sub_02dcf8ba[0 len sub_02dcf8ba.length].field_0)
}

function sub_5450398b(?) {
    return uint256(sub_5450398b[0 len sub_5450398b.length].field_0)
}

function sub_8e80888e(?) {
    return bool(uint8(stor2.field_8))
}

function sub_a0a3861d(?) {
    return sub_a0a3861d[0 len sub_a0a3861d.length]
}

function sub_beddd1f6(?) {
    return uint256(sub_beddd1f6[0 len sub_beddd1f6.length].field_0)
}

function sub_c16d9b07(?) {
    return bool(uint8(stor2.field_0))
}

function sub_ec310cae(?) {
    return sub_ec310cae[0 len sub_ec310cae.length]
}

function _fallback() payable {
    revert
}

function sub_a9b1aae9(?) {
    require arg1 < 3
    require arg2 < 3
    require uint8(stor2.field_0)
    require arg1 < 3
    require arg2 < 3
    require stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)] <= 2
    if stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)] == 2:
        return 'Free cell'
    require stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)] <= 2
    if not stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)]:
        return ''
    require stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)] <= 2
    if stor((Mask(3, 5, arg2) >> 5) + arg1 + 11)[uint8(arg2)] != 1:
        return ''
    return ''
}

function sub_79b6def2(?) {
    mem[128 len arg2.length] = arg2[all]
    require block.timestamp > stor4 + stor3
    stor4 = block.timestamp
    address(stor10.field_0) = 0
    mem[ceil32(arg2.length) + 128] = 0
    bool(sub_5450398b.length) = 0
    uint255(sub_5450398b.length.field_1) = 0
    Mask(248, 0, sub_5450398b.length.field_8) = mem[ceil32(arg2.length) + 160 len 31]
    idx = 0
    while sub_5450398b.length + 31 / 32 > idx:
        uint256(sub_5450398b[idx].field_0) = 0
        idx = idx + 1
        continue 
    bool(sub_02dcf8ba.length) = 0
    uint255(sub_02dcf8ba.length.field_1) = 0
    Mask(248, 0, sub_02dcf8ba.length.field_8) = mem[ceil32(arg2.length) + 192 len 31]
    idx = 0
    while sub_02dcf8ba.length + 31 / 32 > idx:
        uint256(sub_02dcf8ba[idx].field_0) = 0
        idx = idx + 1
        continue 
    bool(sub_beddd1f6.length) = 0
    uint255(sub_beddd1f6.length.field_1) = 0
    Mask(248, 0, sub_beddd1f6.length.field_8) = mem[ceil32(arg2.length) + 224 len 31]
    idx = 0
    while sub_beddd1f6.length + 31 / 32 > idx:
        uint256(sub_beddd1f6[idx].field_0) = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 0
    uint8(stor10.field_160) = 0
    s = 0
    idx = 0
    while idx < 3:
        s = 0
        while s < 3:
            require idx < 3
            require s < 3
            uint255(stor[(0.03125 / s) + idx + 11].field_0) = uint255(256^(s % 32))
            bool(stor[(0.03125 / s) + idx + 11].field_255) = 0
            s = s + 1
            continue 
        s = 3
        idx = idx + 1
        continue 
    uint8(stor2.field_8) = 1
    if not arg1:
        stor8 = msg.sender
        uint256(sub_beddd1f6[].field_0) = Array(len=arg2.length, data=arg2[all])
        stor14 = 0
    else:
        stor7 = msg.sender
        uint256(sub_02dcf8ba[].field_0) = Array(len=arg2.length, data=arg2[all])
        stor14 = 1
    mem[ceil32(arg2.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg1:
        if not arg2.length % 32:
            emit 0x36e2f335: 64, 128, 6, 0x4e6f756768740000000000000000000000000000000000000000000000000000, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x36e2f335: 64, 128, 6, 0x4e6f756768740000000000000000000000000000000000000000000000000000, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 384 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    else:
        if not arg2.length % 32:
            emit 0x36e2f335: 64, 128, 5, 0x43726f7373000000000000000000000000000000000000000000000000000000, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0x36e2f335: 64, 128, 5, 0x43726f7373000000000000000000000000000000000000000000000000000000, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 384 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}

function sub_e78aca34(?) {
    mem[128 len arg1.length] = arg1[all]
    require uint8(stor2.field_8)
    require stor14 <= 2
    if stor14 != 1:
        require stor8 != msg.sender
    else:
        require stor7 != msg.sender
    uint8(stor2.field_8) = 0
    require stor14 <= 2
    if stor14:
        stor8 = msg.sender
        uint256(sub_beddd1f6[].field_0) = Array(len=arg1.length, data=arg1[all])
    else:
        stor7 = msg.sender
        uint256(sub_02dcf8ba[].field_0) = Array(len=arg1.length, data=arg1[all])
    stor4 = block.timestamp
    address(stor10.field_0) = stor7
    mem[ceil32(arg1.length) + 128] = 5
    bool(sub_5450398b.length) = 0
    uint255(sub_5450398b.length.field_1) = 5
    sub_5450398b.length.field_216 % 1099511627776 = 289682715507
    idx = 0
    while sub_5450398b.length + 31 / 32 > idx:
        uint256(sub_5450398b[idx].field_0) = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 1
    require stor14 <= 2
    if stor14 == 2:
        mem[ceil32(arg1.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            emit 0xe1c4d90c: 64, 128, 9, 'Free cell' << 184, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
            emit 0xe1c4d90c: 64, 128, 9, 'Free cell' << 184, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 448 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
    else:
        require stor14 <= 2
        if not stor14:
            mem[ceil32(arg1.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                emit 0xe1c4d90c: 64, 128, 5, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
                emit 0xe1c4d90c: 64, 128, 5, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 448 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
        else:
            require stor14 <= 2
            if stor14 != 1:
                mem[ceil32(arg1.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xe1c4d90c: 64, 96, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 352] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 384 len arg1.length % 32]
                    emit 0xe1c4d90c: 64, 96, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 352 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
            else:
                mem[ceil32(arg1.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    emit 0xe1c4d90c: 64, 128, 6, 0, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 448] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 480 len arg1.length % 32]
                    emit 0xe1c4d90c: 64, 128, 6, 0, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 448 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
