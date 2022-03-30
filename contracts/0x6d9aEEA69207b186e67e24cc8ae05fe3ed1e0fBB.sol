contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1847]




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert 
}

function notarize(string arg1) {
    if 64 == arg1.length:
        if 0 == stor0[arg1[all]]:
            stor0[arg1[all]] = block.timestamp
}

function uintToBytes(uint256 arg1) {
    if 0 == arg1:
        return '0'
    s = 0
    idx = arg1
    while idx > 0:
        s = s / 256 or (idx % 10) + 48 << 248
        idx = idx / 10
        continue 
    return s
}

function verify(string arg1) {
    if 0 == stor0[arg1[all]]:
        return 0
    require ext_code.size(msg.sender)
    call msg.sender.getYear(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.getMonth(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.getDay(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.getHour(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.getMinute(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    require ext_code.size(msg.sender)
    call msg.sender.getSecond(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args stor0[arg1[all]]
    require ext_call.success
    return ext_call.return_data[0] << 240, 
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           ext_call.return_data[0] << 248,
           uint8(ext_call.return_data[0])
}

function bytes32ToString(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if 0 == Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + (32 * s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + (32 * s) + 32] = 32
    mem[(_msize + 224) + (32 * s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + (32 * s) + 96 len mem[_msize + 224]] = mem[(_msize + 224) + 32 len mem[_msize + 224]]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return Array(len=mem[_msize + 224], data=mem[(_msize + 224) + (32 * s) + 96 len floor32(mem[_msize + 224]) + 32])
}

function uintToString(uint16 arg1) {
    mem[96] = 0
    if 0 == arg1:
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 32
        s = 0
        idx = 0
        s = 0
        while idx < 32:
            if 0 == Mask(8, 248, '0' * 2^(8 * idx)):
                s = '0' * 2^(8 * idx)
                idx = idx + 1
                s = s
                continue 
            require s < 32
            mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', "'0'", ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', "'0'", ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
            s = '0' * 2^(8 * idx)
            idx = idx + 1
            s = s + 1
            continue 
        _msize = max(0, s + 8)
        mem[_msize + 256] = s
        mem[64] = (_msize + 256) + (32 * s) + 32
        t = 0
        while t < s:
            require t < 32
            require t < mem[_msize + 256]
            mem[(_msize + 256) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 2)), 32))), 0) - 256
            t = t + 1
            continue 
        mem[(_msize + 256) + (32 * s) + 32] = 32
        mem[(_msize + 256) + (32 * s) + 64] = mem[_msize + 256]
        mem[(_msize + 256) + (32 * s) + 96 len mem[_msize + 256]] = mem[(_msize + 256) + 32 len mem[_msize + 256]]
        if not mem[max(0, s + 8) + 256] % 32:
            return 32, mem[(_msize + 256) + (32 * s) + 64 len mem[_msize + 256] + 32]
        mem[floor32(mem[_msize + 256]) + (_msize + 256) + (32 * s) + 96] = mem[floor32(mem[_msize + 256]) + (_msize + 256) + (32 * s) + -(mem[_msize + 256] % 32) + 128 len mem[_msize + 256] % 32]
        return Array(len=mem[_msize + 256], data=mem[(_msize + 256) + (32 * s) + 96 len floor32(mem[_msize + 256]) + 32])
    s = 0
    idx = arg1
    while idx > 0:
        s = s / 256 or (idx % 10) + 48 << 248
        idx = idx / 10
        continue 
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 32
    t = 0
    idx = 0
    t = 0
    while idx < 32:
        if 0 == Mask(8, 248, s * 2^(8 * idx)):
            t = s * 2^(8 * idx)
            idx = idx + 1
            t = t
            continue 
        require t < 32
        mem[t + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('var', 1), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('var', 1), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        t = s * 2^(8 * idx)
        idx = idx + 1
        t = t + 1
        continue 
    _msize = max(0, t + 8)
    mem[_msize + 256] = t
    mem[64] = (_msize + 256) + (32 * t) + 32
    s = 0
    while s < t:
        require s < 32
        require s < mem[_msize + 256]
        mem[(_msize + 256) + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 1)), 32))), 0) - 256
        s = s + 1
        continue 
    mem[(_msize + 256) + (32 * t) + 32] = 32
    mem[(_msize + 256) + (32 * t) + 64] = mem[_msize + 256]
    mem[(_msize + 256) + (32 * t) + 96 len mem[_msize + 256]] = mem[(_msize + 256) + 32 len mem[_msize + 256]]
    if not mem[max(0, t + 8) + 256] % 32:
        return 32, mem[(_msize + 256) + (32 * t) + 64 len mem[_msize + 256] + 32]
    mem[floor32(mem[_msize + 256]) + (_msize + 256) + (32 * t) + 96] = mem[floor32(mem[_msize + 256]) + (_msize + 256) + (32 * t) + -(mem[_msize + 256] % 32) + 128 len mem[_msize + 256] % 32]
    return 32, mem[(_msize + 256) + (32 * t) + 64 len floor32(mem[_msize + 256]) + 64]
}



}
