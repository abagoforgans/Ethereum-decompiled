contract main {




// =====================  Runtime code  =====================


array of uint256 sub_93f0899a;
uint8 sub_f4e15d5d;
address sub_1908484cAddress; offset 8

function sub_1908484c(?) {
    return sub_1908484cAddress
}

function sub_93f0899a(?) {
    return sub_93f0899a[0 len sub_93f0899a.length]
}

function sub_f4e15d5d(?) {
    return sub_f4e15d5d
}

function _fallback() payable {
    revert
}

function sub_d2fe9e59(?) {
    require calldata.size - 4 >= 32
    require sub_1908484cAddress == msg.sender
    require arg1
    require arg1 != sub_1908484cAddress
    sub_1908484cAddress = arg1
    return 1
}

function sub_b16af8e5(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require sub_1908484cAddress == msg.sender
    mem[ceil32(arg2.length) + 128 len 18383] = code.data[1821 len 18383]
    mem[ceil32(arg2.length) + 18671 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 1853 len -arg2.length + ceil32(arg2.length) + 18351], msg.sender, address(arg1), 128, address(arg3), arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 18671] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 18703 len arg2.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 1853 len -arg2.length + ceil32(arg2.length) + 18351], msg.sender, address(arg1), 128, address(arg3), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 18671 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
