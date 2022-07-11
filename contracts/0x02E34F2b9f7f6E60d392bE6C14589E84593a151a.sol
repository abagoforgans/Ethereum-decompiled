contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_fb511572(?) {
    return stor0[address(arg1)].field_256, 
           stor0[address(arg1)].field_512,
           stor0[address(arg1)].field_768,
           stor0[address(arg1)].field_0,
           stor0[address(arg1)].field_1024,
           stor0[address(arg1)].field_256,
           stor0[address(arg1)].field_1280,
           bool(stor0[address(arg1)].field_672)
}

function settle(address arg1) {
    require stor0[address(arg1)].field_160 > 0
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0x3a1bb508 with:
         gas gas_remaining wei
        args sha3(address(arg1), 0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2d903c2(?) {
    require stor0[address(arg1)].field_160 > 0
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0xa1352d85 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), address(arg1), arg2, arg3, arg4 << 248, arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4639ada9(?) {
    require stor0[address(arg1)].field_160 > 0
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0xbaf8e537 with:
         gas gas_remaining wei
        args sha3(address(arg1), 0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x54a1a28f: address(arg1), block.number, msg.sender, stor0[address(arg1)].field_1024
}

function sub_9cdf3a1a(?) {
    require stor0[address(arg1)].field_160 > 0
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0xdb8a26e4 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), address(arg1), arg2, arg3, arg4 << 248, arg5, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc61b98e9: arg3, msg.sender
}

function sub_a3230bad(?) {
    require not stor0[address(arg1)].field_160
    require msg.sender == stor1
    stor0[address(arg1)].field_0 = arg1
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0x572afe94 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), address(arg2), address(arg3), arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3496012f(?) {
    require stor0[address(arg1)].field_160 > 0
    require ext_code.size(0xefb5e4f4a1d0157a63d521abbb78fff71dabace3)
    delegate 0xefb5e4f4a1d0157a63d521abbb78fff71dabace3.0x70bc2330 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), address(arg1), arg2, arg3, arg4 << 248, arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x54a1a28f: address(arg1), block.number, msg.sender, arg3
}



}
