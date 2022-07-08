contract main {




// =====================  Runtime code  =====================


const sub_f3bc843e(?) = 'governance'


mapping of uint8 stor0;
mapping of address sub_b5d7ccc3;
mapping of uint8 stor99;

function lookup(bytes4 arg1) {
    return sub_b5d7ccc3[Mask(32, 224, arg1)]
}

function sub_b5d7ccc3(?) {
    return sub_b5d7ccc3[Mask(32, 224, arg1)]
}

function _fallback() payable {
    revert
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_f566ca90(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 10
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 'governance'
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 0] = None
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 10] = 'governance'
    mem[(32 * arg2.length) + (32 * arg1.length) + 234] = 0
    require stor0['governance'][address(msg.sender)]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = Mask(32, 224, mem[(32 * idx) + 128])
        mem[32] = 1
        sub_b5d7ccc3[Mask(32, 224, mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}

function stringToSig(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[arg1.length + ceil32(arg1.length) + 160] = Mask(32, 224, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]))
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function register(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 10
    mem[ceil32(arg1.length) + 160] = 'governance'
    mem[ceil32(arg1.length) + 202] = 0
    require stor0['governance'][address(msg.sender)]
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 224] = mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 224] and 256^(-(arg1.length % 32) + 32) - 1 or mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len -(arg1.length % 32) + 32], mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    sub_b5d7ccc3[Mask(32, 224, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 224, ('cd', ('add', 4, ('param', 'arg1'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg2
}



}
