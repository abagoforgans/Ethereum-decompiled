contract main {




// =====================  Runtime code  =====================


array of uint256 sub_93f0899a;
uint8 sub_f4e15d5d;
address sub_1908484cAddress; offset 8
mapping of uint8 stor2;
mapping of uint256 sub_83c60f13;

function sub_1908484c(?) {
    return sub_1908484cAddress
}

function sub_83c60f13(?) {
    require calldata.size - 4 >= 32
    return sub_83c60f13[arg1]
}

function sub_93f0899a(?) {
    return sub_93f0899a[0 len sub_93f0899a.length]
}

function sub_d3fd5a98(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
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
    require sub_1908484cAddress != arg1
    sub_1908484cAddress = arg1
    return 1
}

function sub_00a8a8ec(?) {
    require calldata.size - 4 >= 96
    require sub_1908484cAddress == msg.sender
    require arg1
    require arg2
    sub_83c60f13[address(arg1)] = arg2
    stor2[address(arg1)] = uint8(arg3)
    return 1
}

function sub_8abb01fe(?) {
    require calldata.size - 4 >= 32
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x883eeb6e with:
         gas gas_remaining wei
        args sub_83c60f13[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_4994a6b0(?) {
    require calldata.size - 4 >= 64
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x981e326b with:
         gas gas_remaining wei
        args sub_83c60f13[address(msg.sender)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_bff60b4b(?) {
    require calldata.size - 4 >= 64
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x246b4bda with:
         gas gas_remaining wei
        args sub_83c60f13[address(msg.sender)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_f0532f3e(?) {
    require calldata.size - 4 >= 64
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xbf48de3f with:
         gas gas_remaining wei
        args sub_83c60f13[address(msg.sender)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_4b6f57bd(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require stor2[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args sub_83c60f13[address(msg.sender)], Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 0, 1
}

function sub_e9acc7d5(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require stor2[address(msg.sender)]
    require sub_83c60f13[address(msg.sender)]
    mem[ceil32(arg2.length) + 128 len 5156] = code.data[5780 len 5156]
    mem[ceil32(arg2.length) + 5444 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 5812 len -arg2.length + ceil32(arg2.length) + 5124], address(arg3), msg.sender, sub_83c60f13[address(msg.sender)], 128, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 5444] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5476 len arg2.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 5812 len -arg2.length + ceil32(arg2.length) + 5124], address(arg3), msg.sender, sub_83c60f13[address(msg.sender)], 128, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 5444 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require address(create.new_address)
    require ext_code.size(msg.sender)
    call msg.sender.0x9ee2a2b6 with:
         gas gas_remaining wei
        args address(create.new_address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 0, 1
}



}
