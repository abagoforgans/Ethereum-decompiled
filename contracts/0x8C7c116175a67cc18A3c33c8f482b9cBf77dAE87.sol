contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_16115cf8;
array of struct sub_70de14cf;

function sub_16115cf8(?) payable {
    require calldata.size - 4 >= 32
    return sub_16115cf8[arg1].field_0, 
           sub_16115cf8[arg1].field_256,
           sub_16115cf8[arg1].field_512,
           bool(sub_16115cf8[arg1].field_672)
}

function sub_70de14cf(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_70de14cf[arg1].field_0
    idx = 128
    s = 0
    while sub_70de14cf[arg1].length + 96 > idx:
        mem[idx + 32] = sub_70de14cf[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_70de14cf[arg1].length, data=mem[128 len sub_70de14cf[arg1].length]), sub_70de14cf[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_f9e55629(?) payable {
    require calldata.size - 4 >= 32
    sub_16115cf8[arg1].field_672 = 0
    return 0
}

function sub_57f5bf1c(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    sub_70de14cf[address(arg1)].field_256 += arg2
    return sub_70de14cf[address(arg1)].field_256
}

function sub_048ede8c(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == stor0
    if sub_70de14cf[address(arg1)].field_256 > 0:
        mem[ceil32(arg2.length) + 128] = 0
    else:
        sub_70de14cf[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        sub_70de14cf[address(arg1)].field_256 = arg3
        mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_d24cfa01(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require sub_70de14cf[address(msg.sender)].field_256 > 0
    if sub_16115cf8[arg1].field_256 > 0:
        if sub_16115cf8[arg1].field_0 != msg.sender:
            return 0
    sub_16115cf8[arg1].field_0 = msg.sender
    sub_16115cf8[arg1].field_512 = arg3
    sub_16115cf8[arg1].field_672 = 0
    sub_16115cf8[arg1].field_768 = arg4.length
    if not arg4.length:
        idx = 0
        while sub_16115cf8[arg1].field_768 > idx:
            sub_16115cf8[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            sub_16115cf8[arg1][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while sub_16115cf8[arg1].field_768 > idx:
            sub_16115cf8[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    sub_16115cf8[arg1].field_256 = arg2
    sub_70de14cf[address(msg.sender)].field_256--
    return 1
}



}
