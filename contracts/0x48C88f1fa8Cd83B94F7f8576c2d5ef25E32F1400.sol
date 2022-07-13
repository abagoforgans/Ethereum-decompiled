contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d7dd8b26(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    require arg3 + -arg2 + 1
    if var12004 < (0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1) + (arg3 * 0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1) - (arg2 * 0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1):
        require arg3 + -arg2 + 1
        mem[ceil32(arg1.length) + 128] = (var12004 % arg3 + -arg2 + 1) + arg2
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 160] = var12004
    mem[ceil32(arg1.length) + 128] = 32
    mem[64] = ceil32(arg1.length) + 192
    _27 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg3 + -arg2 + 1
    s = var12004
    while _27 >= (0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1) + (arg3 * 0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1) - (arg2 * 0x8000000000000000000000000000000000000000000000000000000000000000 / arg3 + -arg2 + 1):
        mem[mem[64] + 32] = _27
        mem[mem[64]] = ceil32(arg1.length) + -mem[64] + 160
        mem[64] = ceil32(arg1.length) + 192
        _27 = sha3(mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
        require arg3 + -arg2 + 1
        s = sha3(mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
        continue 
    if arg3 + -arg2 + 1:
        return ((_27 % arg3 + -arg2 + 1) + arg2)
    revert
}



}
