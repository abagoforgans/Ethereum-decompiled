contract main {




// =====================  Runtime code  =====================


#
#  - sub_23ab418e(?)
#  - addressToString(address arg1)
#  - sub_6b2a5712(?)
#  - sub_8faacc62(?)
#  - sub_bba05159(?)
#
uint256 required;
array of struct owners;
uint256 txCount;
mapping of struct transactions;
mapping of uint8 stor6;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function txCount() {
    return txCount
}

function transactions(bytes32 arg1) {
    return transactions[arg1].field_0, transactions[arg1].field_256, transactions[arg1].field_512
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function uintToAscii(uint256 arg1) {
    if arg1 < 10:
        return (arg1 + 48 << 248)
    require arg1 < 16
    return (arg1 + 87 << 248)
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function sub_fc98aa86(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[arg1.length + ceil32(arg1.length) + 160] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function uint2str(uint256 arg1) {
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[96]
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _34 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            return 32, mem[mem[64] + 32 len mem[96] + 32]
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        return memory
          from mem[64]
           len floor32(_34) + _32 + -mem[64] + 96
    mem[128 len 32 * s] = code.data[5779 len 32 * s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[96]
        mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _35 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    _37 = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        return 32, mem[mem[64] + 32 len mem[96] + 32]
    mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
    return memory
      from mem[64]
       len floor32(_37) + _35 + -mem[64] + 96
}

function bytes32ToString(bytes32 arg1) {
    mem[128 len 2112] = code.data[5779 len 2112]
    s = 0
    idx = 0
    while idx < 32:
        if Mask(4, 252, arg1 * 2^(8 * idx)) >> 252 < 10:
            require (2 * idx) + 2 < 66
            mem[(2 * idx) + 130 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 252, -252, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 252, -252, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) - 256
        else:
            require Mask(4, 252, arg1 * 2^(8 * idx)) >> 252 < 16
            require (2 * idx) + 2 < 66
            mem[(2 * idx) + 130 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 252, -252, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 252, -252, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) - 256
        if Mask(4, 248, arg1 * 2^(8 * idx)) >> 248 < 10:
            require (2 * idx) + 3 < 66
            mem[(2 * idx) + 131 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 248, -248, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 248, -248, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) - 256
        else:
            require Mask(4, 248, arg1 * 2^(8 * idx)) >> 248 < 16
            require (2 * idx) + 3 < 66
            mem[(2 * idx) + 131 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 248, -248, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 4, 248, -248, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        continue 
    return Array(len=66, data=mem[192 len 64], mem[286 len 2])
}

function sub_07f7011f(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = owners.length
    if not owners.length:
        mem[ceil32(arg1.length) + (32 * owners.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[ceil32(arg1.length) + (32 * owners.length) + 160] = arg1.length
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] = mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] and !(256^(-(arg1.length % 32) + 32) - 1)
        _98 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192 len arg1.length % 32])
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = sha3(_98, 6)
            if not stor6[_98][stor1[idx].field_0]:
                idx = idx + 1
                s = s
                continue 
            require idx < owners.length
            mem[0] = 1
            require s < owners.length
            mem[ceil32(arg1.length) + (32 * s) + 160] = owners[idx].field_0
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[ceil32(arg1.length) + 160 len 32 * owners.length] = code.data[5779 len 32 * owners.length]
        mem[ceil32(arg1.length) + (32 * owners.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[ceil32(arg1.length) + (32 * owners.length) + 160] = arg1.length
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] = mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192] and !(256^(-(arg1.length % 32) + 32) - 1)
        _103 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + floor32(arg1.length) + 192 len arg1.length % 32])
        idx = 0
        s = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = sha3(_103, 6)
            if not stor6[_103][stor1[idx].field_0]:
                idx = idx + 1
                s = s
                continue 
            require idx < owners.length
            mem[0] = 1
            require s < owners.length
            mem[ceil32(arg1.length) + (32 * s) + 160] = owners[idx].field_0
            idx = idx + 1
            s = s + 1
            continue 
    mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 192] = s
    if s:
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 224 len 32 * s] = code.data[5779 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + (32 * t) + 224] = mem[(32 * t) + ceil32(arg1.length) + 172 len 20]
        t = t + 1
        continue 
    mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + (32 * s) + 288 len floor32(s)] = mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 224 len floor32(s)]
    return Array(len=s, data=mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + 224 len floor32(s)], mem[arg1.length + ceil32(arg1.length) + (32 * owners.length) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
}



}
