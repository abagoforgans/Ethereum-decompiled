contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1968]




// =====================  Runtime code  =====================


#
#  - sub_547ef043(?)
#
array of struct stor0;
mapping of struct sub_798766a2;

function sub_798766a2(?) {
    return sub_798766a2[arg1].field_0, 
           sub_798766a2[arg1].field_256,
           sub_798766a2[arg1].field_512,
           sub_798766a2[arg1].field_768,
           sub_798766a2[arg1].field_1024
}

function _fallback() payable {
    revert
}

function sub_59d17459(?) {
    sub_798766a2[arg1].field_0 = arg2
    sub_798766a2[arg1].field_256 = arg3
    sub_798766a2[arg1].field_512 = arg4
    sub_798766a2[arg1].field_768 = arg5
    sub_798766a2[arg1].field_1024 = msg.sender
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            stor0[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor0[stor0.length].field_0 = arg1
    return 1
}

function sub_de6cb14c(?) {
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor0.length) + 160] = 32
    mem[(32 * stor0.length) + 192] = stor0.length
    if Mask(251, 0, stor0.length):
        mem[(32 * stor0.length) + 224] = mem[160]
        mem[(32 * stor0.length) + 256 len floor32((32 * stor0.length) - 1)] = mem[192 len floor32((32 * stor0.length) - 1)]
    return Array(len=stor0.length, data=mem[(32 * stor0.length) + 224 len 32 * stor0.length])
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
    _76 = mem[_msize + 224]
    if not mem[max(0, s + 8) + 224]:
        if not mem[max(0, s + 8) + 224] % 32:
            return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
        mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
        return 32, mem[_msize + 224], mem[_msize + (32 * s) + 320 len floor32(_76) + 32]
    mem[(_msize + 224) + (32 * s) + 96] = mem[(_msize + 224) + 32]
    mem[(_msize + 224) + (32 * s) + 128 len floor32(mem[_msize + 224] - 1)] = mem[(_msize + 224) + 64 len floor32(mem[_msize + 224] - 1)]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[_msize + 224], mem[_msize + (32 * s) + 320 len floor32(mem[_msize + 224]) + 32]
}



}
