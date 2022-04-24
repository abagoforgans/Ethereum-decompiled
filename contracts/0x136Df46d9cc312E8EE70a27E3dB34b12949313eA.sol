contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 931]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function stringToBytes32(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function bytes32ToString(bytes32 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, arg1 * 2^(8 * idx)):
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
    mem[64] = (_msize + 224) + ceil32(s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + ceil32(s) + 32] = 32
    mem[(_msize + 224) + ceil32(s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + ceil32(s) + 96 len ceil32(mem[_msize + 224])] = mem[(_msize + 224) + 32 len ceil32(mem[_msize + 224])]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + ceil32(s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + ceil32(s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return Array(len=mem[_msize + 224], data=mem[(_msize + 224) + ceil32(s) + 96 len floor32(mem[_msize + 224]) + 32])
}



}
