contract main {




// =====================  Runtime code  =====================


uint8 version; offset 160
uint64 sub_f17d8d4a; offset 168
address owner;
uint128 stor1; offset 160
address stor1;
uint8 stor2; offset 160
uint128 stor2;
uint128 stor2; offset 80
uint256 stor2; offset 80
uint64 stor3;
uint128 stor4;
uint64 stor5;
uint64 stor5; offset 64
uint64 stor5; offset 128
uint64 stor5; offset 192
uint128 stor6;
mapping of struct sub_2640a2b5;
array of uint256 stor8;

function sub_2640a2b5(?) {
    return bool(uint8(sub_2640a2b5[Mask(80, 176, arg1)].field_0)), sub_2640a2b5[Mask(80, 176, arg1)].field_8
}

function version() {
    return version
}

function owner() {
    return owner
}

function sub_f17d8d4a(?) {
    return sub_f17d8d4a
}

function _fallback() payable {
    revert
}

function order() {
    return stor3, stor3, stor3, stor4
}

function activate() {
    uint8(stor2.field_160) = 1
    emit Activate()
}

function deactivate() {
    uint8(stor2.field_160) = 0
    emit Deactivate()
}

function progress() {
    return uint64(stor5.field_0), uint64(stor5.field_0), uint64(stor5.field_0), stor6
}

function details() {
    return Mask(160, 96, address(stor1.field_0)), 
           Mask(96, 0, stor1.field_160) << 176,
           Mask(80, 176, Mask(80, 0, stor2.field_0)),
           Mask(176, 0, stor2.field_80) << 176,
           bool(uint8(stor2.field_160))
}

function sub_571b3424(?) {
    if owner != msg.sender:
        revert with 0, 'No permission to update'
    Mask(80, 0, stor2.field_80) = Mask(80, 176, arg1) >> 176
    if arg2 != 1:
        if not arg2:
            if 1 == bool(uint8(stor2.field_160)):
                uint8(stor2.field_160) = 0
                emit Deactivate()
    else:
        if not uint8(stor2.field_160):
            uint8(stor2.field_160) = 1
            emit Activate()
        else:
            if not arg2:
                if 1 == bool(uint8(stor2.field_160)):
                    uint8(stor2.field_160) = 0
                    emit Deactivate()
}

function sub_cdea24cb(?) {
    if not stor8.length:
        mem[(32 * stor8.length) + 128] = 32
        mem[(32 * stor8.length) + 160] = stor8.length
        mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 128
           len (96 * stor8.length) + 64
    mem[128] = stor8 / 256^0 << 176
    idx = 128
    s = 0
    while (32 * stor8.length) + 96 > idx:
        mem[idx + 32] = stor8 / 256^((-10 * s + 19 / 32) + s + (-1 * s + 19 / 32 * s) + 10) << 176
        idx = idx + 32
        s = (-10 * s + 19 / 32) + s + (-1 * s + 19 / 32 * s) + 10
        continue 
    mem[(32 * stor8.length) + 192 len floor32(stor8.length)] = mem[128 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[128 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 192 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function sub_0d8a4da5(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'No permission to update'
    if bool(uint8(stor2.field_160)) != 1:
        revert with 0, 'Campaign is not active'
    if arg1.length != arg2.length:
        revert with 0, 'Invalid fees10000 length'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        if uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0):
            require uint8(idx) < arg2.length
            require uint8(idx) < arg1.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 183 len 9]
            require uint8(idx) < arg1.length
            require uint8(idx) < arg2.length
            _72 = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = Mask(72, 0, _72)
            emit 0xf3a02781: mem[(32 * arg2.length) + (32 * arg1.length) + 160], _72 << 184
        else:
            require uint8(idx) < arg1.length
            uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0) = 1
            require uint8(idx) < arg1.length
            stor8.length++
            stor8[stor8.length / 3] = mem[(32 * uint8(idx)) + 128 len 10] * 256^(10 * stor8.length % 3) or stor8[stor8.length / 3] and !(test266151307() * 256^(10 * stor8.length % 3))
            require uint8(idx) < arg2.length
            require uint8(idx) < arg1.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = mem[(32 * uint8(idx)) + (32 * arg1.length) + 183 len 9]
            require uint8(idx) < arg1.length
            require uint8(idx) < arg2.length
            _82 = mem[(32 * arg1.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = Mask(72, 0, _82)
            emit 0xf3a02781: mem[(32 * arg2.length) + (32 * arg1.length) + 160], _82 << 184
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor8.length:
        mem[0] = stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176
        mem[32] = 7
        idx = idx + 1
        s = sub_2640a2b5[stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176].field_8 + s
        continue 
    emit 0x88764271: uint64(stor5.field_0), uint64(stor5.field_0), uint64(stor5.field_0), Mask(72, 0, stor[_88] * None)
}

function sub_80004957(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if owner != msg.sender:
        revert with 0, 'No permission to update'
    if bool(uint8(stor2.field_160)) != 1:
        revert with 0, 'Campaign is not active'
    if arg4.length != arg5.length:
        revert with 0, 'Invalid fees10000 length'
    uint64(stor5.field_0) = uint64(arg2 + uint64(stor5.field_0))
    uint64(stor5.field_64) = 0
    uint64(stor5.field_64) = uint64(arg1 + uint64(stor5.field_64))
    uint64(stor5.field_128) = uint64(arg3 + uint64(stor5.field_128))
    uint64(stor5.field_192) = 0
    sub_f17d8d4a = arg6
    mem[(32 * arg5.length) + (32 * arg4.length) + 160] = arg1
    mem[(32 * arg5.length) + (32 * arg4.length) + 192] = arg2
    mem[(32 * arg5.length) + (32 * arg4.length) + 224] = arg3
    emit 0xd4f50871: arg1 << 192, arg2 << 192, arg3
    idx = 0
    while uint8(idx) < arg4.length:
        require uint8(idx) < arg4.length
        if uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0):
            require uint8(idx) < arg5.length
            require uint8(idx) < arg4.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = Mask(72, 0, mem[(32 * uint8(idx)) + (32 * arg4.length) + 160] + sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8)
            require uint8(idx) < arg4.length
            require uint8(idx) < arg5.length
            _74 = mem[(32 * arg4.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg5.length) + (32 * arg4.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg5.length) + (32 * arg4.length) + 192] = Mask(72, 0, _74)
            emit 0xec90a586: mem[(32 * arg5.length) + (32 * arg4.length) + 160], _74 << 184
        else:
            require uint8(idx) < arg4.length
            uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0) = 1
            require uint8(idx) < arg4.length
            stor8.length++
            stor8[stor8.length / 3] = mem[(32 * uint8(idx)) + 128 len 10] * 256^(10 * stor8.length % 3) or stor8[stor8.length / 3] and !(test266151307() * 256^(10 * stor8.length % 3))
            require uint8(idx) < arg5.length
            require uint8(idx) < arg4.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = Mask(72, 0, mem[(32 * uint8(idx)) + (32 * arg4.length) + 160] + sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8)
            require uint8(idx) < arg4.length
            require uint8(idx) < arg5.length
            _84 = mem[(32 * arg4.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg5.length) + (32 * arg4.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg5.length) + (32 * arg4.length) + 192] = Mask(72, 0, _84)
            emit 0xec90a586: mem[(32 * arg5.length) + (32 * arg4.length) + 160], _84 << 184
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor8.length:
        mem[0] = stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176
        mem[32] = 7
        idx = idx + 1
        s = sub_2640a2b5[stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176].field_8 + s
        continue 
    emit 0x88764271: uint64(stor5.field_0), uint64(stor5.field_0), uint64(stor5.field_0), Mask(72, 0, stor[_90] * None)
}

function sub_b660b06a(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if owner != msg.sender:
        revert with 0, 'No permission to update'
    if bool(uint8(stor2.field_160)) != 1:
        revert with 0, 'Campaign is not active'
    if arg4.length != arg5.length:
        revert with 0, 'Invalid fees10000 length'
    uint64(stor5.field_0) = uint64(uint64(stor5.field_0) - arg2)
    uint64(stor5.field_64) = 0
    uint64(stor5.field_64) = uint64(uint64(stor5.field_64) - arg1)
    uint64(stor5.field_128) = uint64(uint64(stor5.field_128) - arg3)
    uint64(stor5.field_192) = 0
    sub_f17d8d4a = arg6
    mem[(32 * arg5.length) + (32 * arg4.length) + 160] = arg1
    mem[(32 * arg5.length) + (32 * arg4.length) + 192] = arg2
    mem[(32 * arg5.length) + (32 * arg4.length) + 224] = arg3
    emit 0x99d0abd3: arg1 << 192, arg2 << 192, arg3
    idx = 0
    while uint8(idx) < arg4.length:
        require uint8(idx) < arg4.length
        if uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0):
            require uint8(idx) < arg5.length
            require uint8(idx) < arg4.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = Mask(72, 0, sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 - mem[(32 * uint8(idx)) + (32 * arg4.length) + 160])
            require uint8(idx) < arg4.length
            require uint8(idx) < arg5.length
            _74 = mem[(32 * arg4.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg5.length) + (32 * arg4.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg5.length) + (32 * arg4.length) + 192] = Mask(72, 0, _74)
            emit 0xb29b8fc6: mem[(32 * arg5.length) + (32 * arg4.length) + 160], _74 << 184
        else:
            require uint8(idx) < arg4.length
            uint8(sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_0) = 1
            require uint8(idx) < arg4.length
            stor8.length++
            stor8[stor8.length / 3] = mem[(32 * uint8(idx)) + 128 len 10] * 256^(10 * stor8.length % 3) or stor8[stor8.length / 3] and !(test266151307() * 256^(10 * stor8.length % 3))
            require uint8(idx) < arg5.length
            require uint8(idx) < arg4.length
            mem[0] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[32] = 7
            sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 = Mask(72, 0, sub_2640a2b5[Mask(80, 176, mem[(32 * uint8(idx)) + 128])].field_8 - mem[(32 * uint8(idx)) + (32 * arg4.length) + 160])
            require uint8(idx) < arg4.length
            require uint8(idx) < arg5.length
            _84 = mem[(32 * arg4.length) + (32 * uint8(idx)) + 160]
            mem[(32 * arg5.length) + (32 * arg4.length) + 160] = Mask(80, 176, mem[(32 * uint8(idx)) + 128])
            mem[(32 * arg5.length) + (32 * arg4.length) + 192] = Mask(72, 0, _84)
            emit 0xb29b8fc6: mem[(32 * arg5.length) + (32 * arg4.length) + 160], _84 << 184
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while uint8(idx) < stor8.length:
        mem[0] = stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176
        mem[32] = 7
        idx = idx + 1
        s = sub_2640a2b5[stor8[uint8(idx) / 3] / 256^(10 * uint8(idx) % 3) << 176].field_8 + s
        continue 
    emit 0x88764271: uint64(stor5.field_0), uint64(stor5.field_0), uint64(stor5.field_0), Mask(72, 0, stor[_90] * None)
}



}
