contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 2385]
}



// =====================  Runtime code  =====================


const checkBalance = eth.balance(this.address)


array of struct stor0;
address stor1;

function sub_6d8b35bf(?) {
    return stor0.length
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function sub_49b6cba5(?) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, bool(stor0[arg1].field_160), stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_4d4aacad(?) payable {
    require stor1 == msg.sender
    idx = 0
    while uint8(idx) < stor0.length:
        mem[0] = 0
        if stor0[uint8(idx)].field_160:
            require uint8(idx) < stor0.length
            mem[0] = 0
            if stor0[uint8(idx)].field_256 <= 100:
                require uint8(idx) < stor0.length
                stor0[uint8(idx)].field_256 += 34
                call stor0[uint8(idx)].field_0 with:
                   value 15 * 10^15 wei
                     gas 0 wei
                require ext_call.success
                require uint8(idx) < stor0.length
                mem[0] = 0
                mem[96] = stor0[uint8(idx)].field_0
                emit 0x977d147c: stor0[uint8(idx)].field_0
        idx = idx + 1
        continue 
}

function sub_b026bf4a(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require stor1 == msg.sender
    idx = 0
    while uint8(idx) < stor0.length:
        _25 = mem[96]
        t = 128
        u = mem[64]
        s = mem[96]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[96])] = Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])]) or mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _45 = sha3(mem[mem[64] len _25])
        require uint8(idx) < stor0.length
        mem[0] = 0
        if stor0[uint8(idx)].field_512 != _45:
            idx = idx + 1
            continue 
        require uint8(idx) < stor0.length
        mem[0] = 0
        if stor0[uint8(idx)].field_160:
            idx = idx + 1
            continue 
        require uint8(idx) < stor0.length
        stor0[uint8(idx)].field_160 = 1
        stor0[uint8(idx)].field_256 = 0
        stor0[uint8(idx)].field_0 = arg2
        emit 0xeb21bb2c: 1, 1
        return 1
    emit 0xeb21bb2c: 0
    return 0
}

function sub_41a62a87(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 256
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    require stor1 == msg.sender
    idx = 0
    while uint8(idx) < stor0.length:
        _44 = mem[96]
        t = 128
        u = mem[64]
        s = mem[96]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[96])] = Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])]) or mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        _85 = sha3(mem[mem[64] len _44])
        require uint8(idx) < stor0.length
        mem[0] = 0
        if stor0[uint8(idx)].field_512 != _85:
            idx = idx + 1
            continue 
        return 0
    _40 = mem[64]
    mem[64] = mem[64] + 128
    mem[_40] = 0
    mem[_40 + 32] = 0
    mem[_40 + 64] = 0
    _42 = mem[96]
    mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    mem[_40 + 96] = sha3(mem[mem[64] len _42])
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = (3 * stor0.length) + 3
        while 3 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor0[stor0.length].field_0 = 0
    stor0[stor0.length].field_160 = 0
    stor0[stor0.length].field_256 = 0
    stor0[stor0.length].field_512 = mem[_40 + 96]
    emit 0xeb21bb2c: 1, 1
    return 1
}



}
