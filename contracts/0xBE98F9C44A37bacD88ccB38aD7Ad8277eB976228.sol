contract main {




// =====================  Runtime code  =====================


mapping of struct sub_19655709;

function sub_19655709(?) {
    return sub_19655709[address(arg1)].field_512
}

function sub_28181f74(?) {
    return sub_28181f74[arg1][5][0 len sub_28181f74[arg1][5].length].field_0
}

function sub_2f480c6a(?) {
    mem[128] = sub_19655709[arg1][5].field_0
    idx = 128
    s = 0
    while sub_19655709[arg1][5].length + 96 > idx:
        mem[idx + 32] = sub_19655709[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_19655709[arg1].field_0, 
           sub_19655709[arg1].field_256,
           sub_19655709[arg1].field_512,
           Array(len=sub_19655709[arg1][5].length, data=mem[128 len sub_19655709[arg1][5].length])
}

function sub_4f5bd029(?) {
    return sub_19655709[address(arg1)].field_0
}

function sub_64954c1f(?) {
    return sub_19655709[address(arg1)][5][0 len sub_19655709[address(arg1)][5].length].field_0
}

function sub_701e0ac3(?) {
    return sub_28181f74[arg1].field_512
}

function sub_8e62aa7c(?) {
    return sub_8e62aa7c[arg1][6][0 len sub_8e62aa7c[arg1][6].length].field_0
}

function sub_922ca22d(?) {
    return sub_8e62aa7c[arg1].field_0
}

function sub_a7ff2a43(?) {
    return bool(sub_8e62aa7c[arg1][4][address(arg2)].field_0)
}

function sub_b1c91d66(?) {
    mem[128] = sub_8e62aa7c[arg1][6].field_0
    idx = 128
    s = 0
    while sub_8e62aa7c[arg1][6].length + 96 > idx:
        mem[idx + 32] = sub_8e62aa7c[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_8e62aa7c[arg1].field_0, Array(len=sub_8e62aa7c[arg1][6].length, data=mem[128 len sub_8e62aa7c[arg1][6].length])
}

function sub_b5f6f73e(?) {
    return sub_8e62aa7c[arg1][5][address(arg2)].field_0
}

function sub_c1a614e9(?) {
    return sub_19655709[address(arg1)].field_256
}

function sub_d00412dc(?) {
    return sub_28181f74[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_a385e598(?) {
    if sub_19655709[address(arg1)].field_0:
        revert with 0, 'Contract already registered'
    sub_19655709[address(arg1)].field_0 = arg1
    sub_19655709[address(arg1)].field_256 = msg.sender
    sub_19655709[address(arg1)].field_512 = msg.sender
    emit 0x8162b5de: arg1
    return 1
}

function sub_e932e202(?) {
    mem[128] = sub_28181f74[arg1][5].field_0
    idx = 128
    s = 0
    while sub_28181f74[arg1][5].length + 96 > idx:
        mem[idx + 32] = sub_28181f74[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_28181f74[arg1].field_0, 
           sub_28181f74[arg1].field_512,
           Array(len=sub_28181f74[arg1][5].length, data=mem[128 len sub_28181f74[arg1][5].length])
}

function sub_f0a1ec2b(?) {
    if sub_8e62aa7c[arg1].field_0 != arg1:
        revert with 0, 'proofId not yet registered'
    if sub_28181f74[arg2].field_0 != arg2:
        revert with 0, 'vkId not yet registered'
    idx = 0
    s = 0
    while idx < sub_8e62aa7c[arg1].field_256:
        require idx < sub_8e62aa7c[arg1].field_256
        mem[0] = arg1
        mem[32] = 2
        if sub_8e62aa7c[arg1][idx + 1].field_0 != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if bool(s) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This proofId has not been associated with this vkId'
    sub_8e62aa7c[arg1][4][address(msg.sender)].field_0 = uint8(arg3)
    sub_8e62aa7c[arg1][5][tx.origin].field_0 = tx.origin
    emit 0xf140259f: arg1, msg.sender, arg3
}

function sub_0954406e(?) {
    if not sub_8e62aa7c[arg1].field_256:
        mem[(32 * sub_8e62aa7c[arg1].field_256) + 128] = 32
        mem[(32 * sub_8e62aa7c[arg1].field_256) + 160] = sub_8e62aa7c[arg1].field_256
        mem[(32 * sub_8e62aa7c[arg1].field_256) + 192 len floor32(sub_8e62aa7c[arg1].field_256)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_256)]
        return memory
          from (32 * sub_8e62aa7c[arg1].field_256) + 128
           len (96 * sub_8e62aa7c[arg1].field_256) + 64
    mem[128] = sub_8e62aa7c[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_8e62aa7c[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_8e62aa7c[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8e62aa7c[arg1].field_256) + 192 len floor32(sub_8e62aa7c[arg1].field_256)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_256)]
    return Array(len=sub_8e62aa7c[arg1].field_256, data=mem[128 len floor32(sub_8e62aa7c[arg1].field_256)], mem[(32 * sub_8e62aa7c[arg1].field_256) + floor32(sub_8e62aa7c[arg1].field_256) + 192 len (32 * sub_8e62aa7c[arg1].field_256) - floor32(sub_8e62aa7c[arg1].field_256)]), 
}

function sub_45a03396(?) {
    if not sub_8e62aa7c[arg1].field_768:
        mem[(32 * sub_8e62aa7c[arg1].field_768) + 128] = 32
        mem[(32 * sub_8e62aa7c[arg1].field_768) + 160] = sub_8e62aa7c[arg1].field_768
        mem[(32 * sub_8e62aa7c[arg1].field_768) + 192 len floor32(sub_8e62aa7c[arg1].field_768)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_768)]
        return memory
          from (32 * sub_8e62aa7c[arg1].field_768) + 128
           len (96 * sub_8e62aa7c[arg1].field_768) + 64
    mem[128] = sub_8e62aa7c[arg1][3].field_0
    idx = 128
    s = 0
    while (32 * sub_8e62aa7c[arg1].field_768) + 96 > idx:
        mem[idx + 32] = sub_8e62aa7c[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8e62aa7c[arg1].field_768) + 192 len floor32(sub_8e62aa7c[arg1].field_768)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_768)]
    return Array(len=sub_8e62aa7c[arg1].field_768, data=mem[128 len floor32(sub_8e62aa7c[arg1].field_768)], mem[(32 * sub_8e62aa7c[arg1].field_768) + floor32(sub_8e62aa7c[arg1].field_768) + 192 len (32 * sub_8e62aa7c[arg1].field_768) - floor32(sub_8e62aa7c[arg1].field_768)]), 
}

function sub_677d10d0(?) {
    if not sub_28181f74[arg1].field_768:
        mem[(32 * sub_28181f74[arg1].field_768) + 128] = 32
        mem[(32 * sub_28181f74[arg1].field_768) + 160] = sub_28181f74[arg1].field_768
        mem[(32 * sub_28181f74[arg1].field_768) + 192 len floor32(sub_28181f74[arg1].field_768)] = mem[128 len floor32(sub_28181f74[arg1].field_768)]
        return memory
          from (32 * sub_28181f74[arg1].field_768) + 128
           len (96 * sub_28181f74[arg1].field_768) + 64
    mem[128] = sub_28181f74[arg1][3].field_0
    idx = 128
    s = 0
    while (32 * sub_28181f74[arg1].field_768) + 96 > idx:
        mem[idx + 32] = sub_28181f74[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_28181f74[arg1].field_768) + 192 len floor32(sub_28181f74[arg1].field_768)] = mem[128 len floor32(sub_28181f74[arg1].field_768)]
    return Array(len=sub_28181f74[arg1].field_768, data=mem[128 len floor32(sub_28181f74[arg1].field_768)], mem[(32 * sub_28181f74[arg1].field_768) + floor32(sub_28181f74[arg1].field_768) + 192 len (32 * sub_28181f74[arg1].field_768) - floor32(sub_28181f74[arg1].field_768)]), 
}

function sub_6ed5e9ba(?) {
    if not sub_28181f74[arg1].field_256:
        mem[(32 * sub_28181f74[arg1].field_256) + 128] = 32
        mem[(32 * sub_28181f74[arg1].field_256) + 160] = sub_28181f74[arg1].field_256
        mem[(32 * sub_28181f74[arg1].field_256) + 192 len floor32(sub_28181f74[arg1].field_256)] = mem[128 len floor32(sub_28181f74[arg1].field_256)]
        return memory
          from (32 * sub_28181f74[arg1].field_256) + 128
           len (96 * sub_28181f74[arg1].field_256) + 64
    mem[128] = sub_28181f74[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_28181f74[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_28181f74[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_28181f74[arg1].field_256) + 192 len floor32(sub_28181f74[arg1].field_256)] = mem[128 len floor32(sub_28181f74[arg1].field_256)]
    return Array(len=sub_28181f74[arg1].field_256, data=mem[128 len floor32(sub_28181f74[arg1].field_256)], mem[(32 * sub_28181f74[arg1].field_256) + floor32(sub_28181f74[arg1].field_256) + 192 len (32 * sub_28181f74[arg1].field_256) - floor32(sub_28181f74[arg1].field_256)]), 
}

function sub_94476ee7(?) {
    if not sub_8e62aa7c[arg1].field_512:
        mem[(32 * sub_8e62aa7c[arg1].field_512) + 128] = 32
        mem[(32 * sub_8e62aa7c[arg1].field_512) + 160] = sub_8e62aa7c[arg1].field_512
        mem[(32 * sub_8e62aa7c[arg1].field_512) + 192 len floor32(sub_8e62aa7c[arg1].field_512)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_512)]
        return memory
          from (32 * sub_8e62aa7c[arg1].field_512) + 128
           len (96 * sub_8e62aa7c[arg1].field_512) + 64
    mem[128] = sub_8e62aa7c[arg1][2].field_0
    idx = 128
    s = 0
    while (32 * sub_8e62aa7c[arg1].field_512) + 96 > idx:
        mem[idx + 32] = sub_8e62aa7c[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_8e62aa7c[arg1].field_512) + 192 len floor32(sub_8e62aa7c[arg1].field_512)] = mem[128 len floor32(sub_8e62aa7c[arg1].field_512)]
    return Array(len=sub_8e62aa7c[arg1].field_512, data=mem[128 len floor32(sub_8e62aa7c[arg1].field_512)], mem[(32 * sub_8e62aa7c[arg1].field_512) + floor32(sub_8e62aa7c[arg1].field_512) + 192 len (32 * sub_8e62aa7c[arg1].field_512) - floor32(sub_8e62aa7c[arg1].field_512)]), 
}

function sub_cb772eb4(?) {
    if not sub_28181f74[arg1].field_256:
        mem[(32 * sub_28181f74[arg1].field_256) + 128] = 32
        mem[(32 * sub_28181f74[arg1].field_256) + 160] = sub_28181f74[arg1].field_256
        mem[(32 * sub_28181f74[arg1].field_256) + 192 len floor32(sub_28181f74[arg1].field_256)] = mem[128 len floor32(sub_28181f74[arg1].field_256)]
        return memory
          from (32 * sub_28181f74[arg1].field_256) + 128
           len (96 * sub_28181f74[arg1].field_256) + 64
    mem[128] = sub_28181f74[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_28181f74[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_28181f74[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_28181f74[arg1].field_256) + 192 len floor32(sub_28181f74[arg1].field_256)] = mem[128 len floor32(sub_28181f74[arg1].field_256)]
    return Array(len=sub_28181f74[arg1].field_256, data=mem[128 len floor32(sub_28181f74[arg1].field_256)], mem[(32 * sub_28181f74[arg1].field_256) + floor32(sub_28181f74[arg1].field_256) + 192 len (32 * sub_28181f74[arg1].field_256) - floor32(sub_28181f74[arg1].field_256)]), 
}

function sub_bd564a20(?) {
    if not sub_28181f74[arg1].field_1024:
        mem[(32 * sub_28181f74[arg1].field_1024) + 128] = 32
        mem[(32 * sub_28181f74[arg1].field_1024) + 160] = sub_28181f74[arg1].field_1024
        mem[(32 * sub_28181f74[arg1].field_1024) + 192 len floor32(sub_28181f74[arg1].field_1024)] = mem[128 len floor32(sub_28181f74[arg1].field_1024)]
        return memory
          from (32 * sub_28181f74[arg1].field_1024) + 128
           len (96 * sub_28181f74[arg1].field_1024) + 64
    mem[128] = sub_28181f74[arg1][4].field_0
    idx = 128
    s = 0
    while (32 * sub_28181f74[arg1].field_1024) + 96 > idx:
        mem[idx + 32] = sub_28181f74[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_28181f74[arg1].field_1024) + 192 len floor32(sub_28181f74[arg1].field_1024)] = mem[128 len floor32(sub_28181f74[arg1].field_1024)]
    return Array(len=sub_28181f74[arg1].field_1024, data=mem[128 len floor32(sub_28181f74[arg1].field_1024)], mem[(32 * sub_28181f74[arg1].field_1024) + floor32(sub_28181f74[arg1].field_1024) + 192 len (32 * sub_28181f74[arg1].field_1024) - floor32(sub_28181f74[arg1].field_1024)]), 
}

function sub_82f7f760(?) {
    if not sub_19655709[address(arg1)].field_768:
        mem[(32 * sub_19655709[address(arg1)].field_768) + 128] = 32
        mem[(32 * sub_19655709[address(arg1)].field_768) + 160] = sub_19655709[address(arg1)].field_768
        mem[(32 * sub_19655709[address(arg1)].field_768) + 192 len floor32(sub_19655709[address(arg1)].field_768)] = mem[128 len floor32(sub_19655709[address(arg1)].field_768)]
        return memory
          from (32 * sub_19655709[address(arg1)].field_768) + 128
           len (96 * sub_19655709[address(arg1)].field_768) + 64
    mem[128] = sub_19655709[address(arg1)][3].field_0
    idx = 128
    s = 0
    while (32 * sub_19655709[address(arg1)].field_768) + 96 > idx:
        mem[idx + 32] = sub_19655709[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_19655709[address(arg1)].field_768) + 192 len floor32(sub_19655709[address(arg1)].field_768)] = mem[128 len floor32(sub_19655709[address(arg1)].field_768)]
    return Array(len=sub_19655709[address(arg1)].field_768, data=mem[128 len floor32(sub_19655709[address(arg1)].field_768)], mem[(32 * sub_19655709[address(arg1)].field_768) + floor32(sub_19655709[address(arg1)].field_768) + 192 len (32 * sub_19655709[address(arg1)].field_768) - floor32(sub_19655709[address(arg1)].field_768)]), 
}

function sub_37253126(?) {
    if not sub_19655709[address(arg1)].field_1024:
        mem[(32 * sub_19655709[address(arg1)].field_1024) + 128] = 32
        mem[(32 * sub_19655709[address(arg1)].field_1024) + 160] = sub_19655709[address(arg1)].field_1024
        mem[(32 * sub_19655709[address(arg1)].field_1024) + 192 len floor32(sub_19655709[address(arg1)].field_1024)] = mem[128 len floor32(sub_19655709[address(arg1)].field_1024)]
        return memory
          from (32 * sub_19655709[address(arg1)].field_1024) + 128
           len (96 * sub_19655709[address(arg1)].field_1024) + 64
    mem[128] = sub_19655709[address(arg1)][4].field_0
    idx = 128
    s = 0
    while (32 * sub_19655709[address(arg1)].field_1024) + 96 > idx:
        mem[idx + 32] = sub_19655709[address(arg1)][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_19655709[address(arg1)].field_1024) + 192 len floor32(sub_19655709[address(arg1)].field_1024)] = mem[128 len floor32(sub_19655709[address(arg1)].field_1024)]
    return Array(len=sub_19655709[address(arg1)].field_1024, data=mem[128 len floor32(sub_19655709[address(arg1)].field_1024)], mem[(32 * sub_19655709[address(arg1)].field_1024) + floor32(sub_19655709[address(arg1)].field_1024) + 192 len (32 * sub_19655709[address(arg1)].field_1024) - floor32(sub_19655709[address(arg1)].field_1024)]), 
}

function sub_16680861(?) {
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        if sub_8e62aa7c[cd[((32 * idx) + cd[4] + 36)]].field_0 != cd[((32 * idx) + cd[4] + 36)]:
            revert with 0, 'proofId not yet registered'
        if sub_28181f74[cd[((32 * idx) + cd[36] + 36)]].field_0 != cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 'vkId not yet registered'
        sub_8e62aa7c[cd[((32 * idx) + cd[4] + 36)]].field_256++
        stor[('array', 1, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 4))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[cd[((32 * idx) + cd[4] + 36)]].field_256].field_0 = cd[((32 * idx) + cd[36] + 36)]
        sub_8e62aa7c[cd[((32 * idx) + cd[4] + 36)]][4][address(msg.sender)].field_0 = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
        sub_8e62aa7c[cd[((32 * idx) + cd[4] + 36)]][5][tx.origin].field_0 = tx.origin
        mem[32] = 0
        sub_28181f74[cd[((32 * idx) + cd[36] + 36)]].field_1024++
        mem[0] = sha3(cd[((32 * idx) + cd[36] + 36)], 0) + 4
        stor[('array', 4, ('map', ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 36))), ('name', 'sub_28181f74', 0))) + sub_28181f74[cd[((32 * idx) + cd[36] + 36)]].field_1024].field_0 = cd[((32 * idx) + cd[4] + 36)]
        emit 0xf140259f: cd[((32 * idx) + cd[4] + 36)], msg.sender, bool(cd[((32 * idx) + cd[68] + 36)])
        s = bool(cd[((32 * idx) + cd[68] + 36)])
        s = cd[((32 * idx) + cd[36] + 36)]
        s = cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_67499910(?) {
    mem[(32 * ('cd', 4).length) + 160 len floor32(('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    mem[(32 * ('cd', 4).length) + 128] = 96 * ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 160 len floor32(96 * ('cd', 4).length)] = call.data[cd[4] + 36 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 160 len floor32(96 * ('cd', 4).length) - floor32(('cd', 4).length)]
    mem[(64 * ('cd', 4).length) + floor32(96 * ('cd', 4).length) + -(96 * ('cd', 4).length % 32) + 192 len 96 * ('cd', 4).length % 32] = mem[(32 * ('cd', 4).length) + floor32(96 * ('cd', 4).length) + -(96 * ('cd', 4).length % 32) + 192 len 96 * ('cd', 4).length % 32]
    if not sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_0:
        sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_0 = sha3(mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length])
    idx = 0
    while idx < ('cd', 36).length:
        if not sub_19655709[address(cd[((32 * idx) + cd[36] + 36)])].field_0:
            revert with 0, 'Verifier contract not yet registered'
        require idx < ('cd', 36).length
        sub_19655709[address(cd[((32 * idx) + cd[36] + 36)])].field_768++
        stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mul', 32, ('var', 0)), ('cd', 36)))), ('name', 'sub_19655709', 4))) + sub_19655709[address(cd[((32 * idx) + cd[36] + 36)])].field_768].field_0 = sha3(mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length])
        mem[32] = 0
        sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_768++
        mem[0] = sha3(sha3(mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]), 0) + 3
        stor[('array', 3, ('map', ('data', ('mem', ('range', ('add', 160, ('mul', 64, ('cd', ('add', 4, ('cd', 4))))), ('mul', 96, ('cd', ('add', 4, ('cd', 4))))))), ('name', 'sub_28181f74', 0))) + sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_768].field_0 = address(cd[((32 * idx) + cd[36] + 36)])
        idx = idx + 1
        continue 
    sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_256 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_256 > idx:
            sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]][s + 1].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_256 > idx:
            sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_28181f74[mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length]].field_512 = msg.sender
    emit 0x3dcebd57: sha3(mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length])
    return sha3(mem[(64 * ('cd', 4).length) + 160 len 96 * ('cd', 4).length])
}

function sub_c6edb448(?) {
    if sub_28181f74[arg3].field_0 != arg3:
        revert with 0, 'vkId not yet registered'
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length))] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length)) - floor32(arg1.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + floor32((32 * arg2.length) + (96 * arg1.length)) + -((32 * arg2.length) + (96 * arg1.length) % 32) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32((32 * arg2.length) + (96 * arg1.length)) + -((32 * arg2.length) + (96 * arg1.length) % 32) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32]
    _108 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    if not sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_0:
        sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_512++
    stor[('array', 2, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 96, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_512].field_0 = tx.origin
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_256++
    stor[('array', 1, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 96, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_256].field_0 = arg3
    sub_28181f74[arg3].field_1024++
    stor[('array', 4, ('map', ('param', 'arg3'), ('name', 'sub_28181f74', 0))) + sub_28181f74[arg3].field_1024].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    mem[(64 * arg2.length) + (64 * arg1.length) + 192] = 64
    mem[(64 * arg2.length) + (64 * arg1.length) + 256] = arg1.length
    mem[(64 * arg2.length) + (64 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg2.length) + (64 * arg1.length) + 224] = (32 * arg1.length) + 96
    mem[(64 * arg2.length) + (98 * arg1.length) + 288] = arg2.length
    mem[(64 * arg2.length) + (98 * arg1.length) + 320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    emit 0xa99a07ce: mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (96 * arg2.length) + (161 * arg1.length) + 128], _108
    return _108
}

function sub_0d2aaf41(?) {
    if not sub_19655709[address(arg4)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Verifier contract not yet registered'
    if sub_28181f74[arg3].field_0 != arg3:
        revert with 0, 'vkId not yet registered'
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length))] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length)) - floor32(arg1.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + floor32((32 * arg2.length) + (96 * arg1.length)) + -((32 * arg2.length) + (96 * arg1.length) % 32) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + -((32 * arg2.length) + (96 * arg1.length) % 32) + floor32((32 * arg2.length) + (96 * arg1.length)) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32]
    _135 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)])
    if not sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_0:
        sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)])
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_512++
    stor[('array', 2, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 223, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_512].field_0 = tx.origin
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_256++
    stor[('array', 1, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 223, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_256].field_0 = arg3
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_768++
    stor[('array', 3, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 223, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)]].field_768].field_0 = arg4
    sub_28181f74[arg3].field_1024++
    stor[('array', 4, ('map', ('param', 'arg3'), ('name', 'sub_28181f74', 0))) + sub_28181f74[arg3].field_1024].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)])
    sub_19655709[address(arg4)].field_1024++
    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'sub_19655709', 4))) + sub_19655709[address(arg4)].field_1024].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (223 * arg1.length)])
    mem[(64 * arg2.length) + (64 * arg1.length) + 192] = 64
    mem[(64 * arg2.length) + (64 * arg1.length) + 256] = arg1.length
    mem[(64 * arg2.length) + (64 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg2.length) + (64 * arg1.length) + 224] = (32 * arg1.length) + 96
    mem[(64 * arg2.length) + (98 * arg1.length) + 288] = arg2.length
    mem[(64 * arg2.length) + (98 * arg1.length) + 320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    emit 0xa99a07ce: mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (160 * arg1.length) + (32 * arg2.length) + 128], _135
    mem[(64 * arg2.length) + (64 * arg1.length) + 192] = _135
    return memory
      from (64 * arg2.length) + (64 * arg1.length) + 192
       len (127 * arg1.length) + 32
}

function sub_c5572797(?) {
    if sub_28181f74[arg3].field_0 != arg3:
        revert with 0, 'vkId not yet registered'
    if not sub_19655709[address(arg4)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Verifier contract not yet registered'
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length))] = call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 192 len floor32((32 * arg2.length) + (96 * arg1.length)) - floor32(arg1.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + floor32((32 * arg2.length) + (96 * arg1.length)) + -((32 * arg2.length) + (96 * arg1.length) % 32) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + floor32((32 * arg2.length) + (96 * arg1.length)) + -((32 * arg2.length) + (96 * arg1.length) % 32) + 224 len (32 * arg2.length) + (96 * arg1.length) % 32]
    _195 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    if not sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_0:
        sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_512++
    stor[('array', 2, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 96, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_512].field_0 = msg.sender
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_256++
    stor[('array', 1, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 96, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_256].field_0 = arg3
    sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_768++
    stor[('array', 3, ('map', ('data', ('mem', ('range', ('add', 192, ('mul', 64, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 64, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', ('mul', 32, ('cd', ('add', 4, ('param', 'arg2')))), ('mul', 96, ('cd', ('add', 4, ('param', 'arg1')))))))), ('name', 'sub_8e62aa7c', 2))) + sub_8e62aa7c[mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)]].field_768].field_0 = arg4
    sub_28181f74[arg3].field_1024++
    stor[('array', 4, ('map', ('param', 'arg3'), ('name', 'sub_28181f74', 0))) + sub_28181f74[arg3].field_1024].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    sub_19655709[address(arg4)].field_1024++
    stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg4')), ('name', 'sub_19655709', 4))) + sub_19655709[address(arg4)].field_1024].field_0 = sha3(mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (32 * arg2.length) + (96 * arg1.length)])
    mem[(64 * arg2.length) + (64 * arg1.length) + 192] = 64
    mem[(64 * arg2.length) + (64 * arg1.length) + 256] = arg1.length
    mem[(64 * arg2.length) + (64 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg2.length) + (64 * arg1.length) + 224] = (32 * arg1.length) + 96
    mem[(64 * arg2.length) + (98 * arg1.length) + 288] = arg2.length
    mem[(64 * arg2.length) + (98 * arg1.length) + 320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    emit 0xa99a07ce: mem[(64 * arg2.length) + (64 * arg1.length) + 192 len (96 * arg2.length) + (161 * arg1.length) + 128], _195
    mem[(64 * arg2.length) + (64 * arg1.length) + 260] = arg3
    mem[(64 * arg2.length) + (64 * arg1.length) + 196] = 96
    mem[(64 * arg2.length) + (64 * arg1.length) + 292] = arg1.length
    mem[(64 * arg2.length) + (64 * arg1.length) + 324 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(64 * arg2.length) + (64 * arg1.length) + 228] = (32 * arg1.length) + 128
    mem[(64 * arg2.length) + (98 * arg1.length) + 324] = arg2.length
    mem[(64 * arg2.length) + (98 * arg1.length) + 356 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg4)
    call arg4.0x4146a229 with:
         gas gas_remaining wei
        args mem[(64 * arg2.length) + (64 * arg1.length) + 196 len (96 * arg2.length) + (161 * arg1.length) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf140259f: _195, arg4, bool(ext_call.return_data[0])
    sub_8e62aa7c[_195][4][address(arg4)].field_0 = uint8(bool(ext_call.return_data[0]))
    sub_8e62aa7c[_195][5][address(msg.sender)].field_0 = msg.sender
    return _195, bool(ext_call.return_data[0])
}



}
