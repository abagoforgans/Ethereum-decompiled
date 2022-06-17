contract main {




// =====================  Runtime code  =====================


address sub_b1d131bfAddress;

function sub_b1d131bf(?) {
    return sub_b1d131bfAddress
}

function kill() {
    require msg.sender == sub_b1d131bfAddress
    selfdestruct(sub_b1d131bfAddress)
}

function _fallback() payable {
  stop
}

function sub_9278a35a(?) payable {
    require msg.sender == sub_b1d131bfAddress
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
}

function sub_3dba91eb(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 160 len 32 * arg1.length] = code.data[1355 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require arg1.length + -idx - 1 < mem[ceil32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + -idx + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('var', 0))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('var', 0))), 0) - 256
        idx = idx + 1
        continue 
    mem[(2 * ceil32(arg1.length)) + 160] = 32
    mem[(2 * ceil32(arg1.length)) + 192] = mem[ceil32(arg1.length) + 128]
    mem[(2 * ceil32(arg1.length)) + 224 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not mem[ceil32(arg1.length) + 128] % 32:
        return 32, mem[(2 * ceil32(arg1.length)) + 192 len mem[ceil32(arg1.length) + 128] + 32]
    mem[floor32(mem[ceil32(arg1.length) + 128]) + (2 * ceil32(arg1.length)) + 224] = mem[floor32(mem[ceil32(arg1.length) + 128]) + (2 * ceil32(arg1.length)) + -(mem[ceil32(arg1.length) + 128] % 32) + 256 len mem[ceil32(arg1.length) + 128] % 32]
    return 32, mem[(2 * ceil32(arg1.length)) + 192 len floor32(mem[ceil32(arg1.length) + 128]) + 64]
}

function sub_5fc27f96(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 160 len 32 * arg1.length] = code.data[1355 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require arg1.length + -idx - 1 < mem[ceil32(arg1.length) + 128]
        mem[ceil32(arg1.length) + arg1.length + -idx + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 1, ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))), ('var', 0))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 1, ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('mul', -1, ('cd', ('add', 4, ('param', 'arg1')))), ('var', 0))), 0) - 256
        idx = idx + 1
        continue 
    mem[(2 * ceil32(arg1.length)) + 160] = 32
    mem[(2 * ceil32(arg1.length)) + 192] = mem[ceil32(arg1.length) + 128]
    mem[(2 * ceil32(arg1.length)) + 224 len ceil32(mem[ceil32(arg1.length) + 128])] = mem[ceil32(arg1.length) + 160 len ceil32(mem[ceil32(arg1.length) + 128])]
    if not mem[ceil32(arg1.length) + 128] % 32:
        return 32, mem[(2 * ceil32(arg1.length)) + 192 len mem[ceil32(arg1.length) + 128] + 32]
    mem[floor32(mem[ceil32(arg1.length) + 128]) + (2 * ceil32(arg1.length)) + 224] = mem[floor32(mem[ceil32(arg1.length) + 128]) + (2 * ceil32(arg1.length)) + -(mem[ceil32(arg1.length) + 128] % 32) + 256 len mem[ceil32(arg1.length) + 128] % 32]
    return 32, mem[(2 * ceil32(arg1.length)) + 192 len floor32(mem[ceil32(arg1.length) + 128]) + 64]
}

function sub_79f94f2b(?) payable {
    require msg.sender == sub_b1d131bfAddress
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 160 len 32 * arg3.length] = code.data[1355 len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require arg3.length + -idx - 1 < mem[ceil32(arg3.length) + 128]
        mem[ceil32(arg3.length) + arg3.length + -idx + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 1, ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('var', 0))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 1, ('mem', ('range', ('add', 128, ('var', 0)), 1)), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('var', 0))), 0) - 256
        idx = idx + 1
        continue 
    mem[(2 * ceil32(arg3.length)) + 160 len ceil32(mem[ceil32(arg3.length) + 128])] = mem[ceil32(arg3.length) + 160 len ceil32(mem[ceil32(arg3.length) + 128])]
    if not mem[ceil32(arg3.length) + 128] % 32:
        call arg1.mem[(2 * ceil32(arg3.length)) + 160 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[(2 * ceil32(arg3.length)) + 164 len mem[ceil32(arg3.length) + 128] - 4]
    else:
        mem[floor32(mem[ceil32(arg3.length) + 128]) + (2 * ceil32(arg3.length)) + 160] = mem[floor32(mem[ceil32(arg3.length) + 128]) + (2 * ceil32(arg3.length)) + -(mem[ceil32(arg3.length) + 128] % 32) + 192 len mem[ceil32(arg3.length) + 128] % 32]
        call arg1.mem[(2 * ceil32(arg3.length)) + 160 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[(2 * ceil32(arg3.length)) + 164 len floor32(mem[ceil32(arg3.length) + 128]) + 28]
    require ext_call.success
}



}
