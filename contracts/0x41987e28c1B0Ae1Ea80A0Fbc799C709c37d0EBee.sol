contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3702]




// =====================  Runtime code  =====================


#
#  - verify(string arg1)
#
array of uint256 result;
mapping of uint256 stor1;

function result() {
    return result[0 len result.length]
}

function _fallback() payable {
    revert 
}

function notarize(string arg1) {
    if 64 == arg1.length:
        if 0 == stor1[arg1[all]]:
            stor1[arg1[all]] = block.timestamp
}

function uintToString(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 100
    s = 0
    s = 0
    idx = arg1
    while idx:
        require s < 100
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = idx % 10
        s = s + 1
        idx = idx / 10
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s + 1
    mem[64] = (_msize + 224) + (32 * s + 1) + 32
    t = 0
    while t <= s:
        require s - t < 100
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + (32 * s + 1) + 32] = 32
    mem[(_msize + 224) + (32 * s + 1) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + (32 * s + 1) + 96 len mem[_msize + 224]] = mem[(_msize + 224) + 32 len mem[_msize + 224]]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + (32 * s + 1) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s + 1) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s + 1) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return Array(len=mem[_msize + 224], data=mem[(_msize + 224) + (32 * s + 1) + 96 len floor32(mem[_msize + 224]) + 32])
}



}
