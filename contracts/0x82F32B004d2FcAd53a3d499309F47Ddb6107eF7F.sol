contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() {
    stor1 = 0
    return code.data[38 len 3676]
}



// =====================  Runtime code  =====================


#
#  - toString(address arg1)
#  - get(string arg1)
#
uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    revert
}

function getTimestamp(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 128] = stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_a5bde23b(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 0
    _33 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2].length
    mem[0] = _33 + 2
    mem[ceil32(arg1.length) + 192] = stor[sha3(_33 + 2)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_33 + 2].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_33 + 2) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _63 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 160]
    _65 = mem[ceil32(arg1.length) + 160]
    if not mem[ceil32(arg1.length) + 160]:
        if not mem[ceil32(arg1.length) + 160] % 32:
            return 32, mem[mem[64] + 32 len mem[ceil32(arg1.length) + 160] + 32]
        mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + 64] = mem[floor32(mem[ceil32(arg1.length) + 160]) + mem[64] + -(mem[ceil32(arg1.length) + 160] % 32) + 96 len mem[ceil32(arg1.length) + 160] % 32]
        return 32, mem[mem[64] + 32 len floor32(_65) + 64]
    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 192]
    mem[mem[64] + 96 len floor32(_65 - 1)] = mem[ceil32(arg1.length) + 224 len floor32(_65 - 1)]
    if not _65 % 32:
        return 32, mem[mem[64] + 32 len _65 + 32]
    mem[floor32(_65) + mem[64] + 64] = mem[floor32(_65) + mem[64] + -(_65 % 32) + 96 len _65 % 32]
    return memory
      from mem[64]
       len floor32(_65) + _63 + -mem[64] + 96
}

function sub_f034d6b1(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
    if not stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = ceil32(arg1.length) + 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = 0
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 0
        _msize = max(192, arg1.length)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224] = 20
        idx = 0
        while idx < 20:
            require 2^(8 * -idx + 19)
            require idx < 20
            mem[(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224) + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('div', 'msg.sender', ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 0) - 256
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 160
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = block.timestamp
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = block.number
        mem[(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224) + 672 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224) + floor32(arg1.length) + -(arg1.length % 32) + 704 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + (ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 224) + 672] = 0
        _298 = arg2.length
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + floor32(arg1.length) + 896 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=_298, data=mem[ceil32(arg1.length) + 160 len _298])
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + floor32(arg1.length) + 896 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=20, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + 256 len 20])
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + _msize + floor32(arg1.length) + 896 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2][] = Array(len=arg3.length, data=arg3[all])
        stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 672, ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('var', '_msize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.timestamp
        stor4[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 672, ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('var', '_msize')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = block.number
        stor1++
}



}
