contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_fb511572(?) {
    return stor0[address(arg1)].field_256, 
           stor0[address(arg1)].field_512,
           stor0[address(arg1)].field_768,
           stor0[address(arg1)].field_1024,
           stor0[address(arg1)].field_1280,
           stor0[address(arg1)].field_1536,
           stor0[address(arg1)].field_1792,
           bool(stor0[address(arg1)].field_2048)
}

function settle(address arg1) {
    require 0 < stor0[address(arg1)].field_1024
    require ext_code.size(0x6c17b1e0b409270f8896547f843a146d21c4c1f6)
    delegate 0x6c17b1e0b409270f8896547f843a146d21c4c1f6.0x996c9862 with:
         gas gas_remaining wei
        args sha3(address(arg1), 0), this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4639ada9(?) {
    require 0 < stor0[address(arg1)].field_1024
    require ext_code.size(0x6c17b1e0b409270f8896547f843a146d21c4c1f6)
    delegate 0x6c17b1e0b409270f8896547f843a146d21c4c1f6.0xbaf8e537 with:
         gas gas_remaining wei
        args sha3(address(arg1), 0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xad9d12e2: block.number, msg.sender, stor0[address(arg1)].field_1280
}

function sub_9cdf3a1a(?) {
    require 0 < stor0[address(arg1)].field_1024
    require ext_code.size(0x6c17b1e0b409270f8896547f843a146d21c4c1f6)
    delegate 0x6c17b1e0b409270f8896547f843a146d21c4c1f6.0x38367dde with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), this.address, address(arg1), arg2, arg3, arg4 << 248, arg5, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc61b98e9: arg3, msg.sender
}

function sub_e2eb7a28(?) {
    require 0 >= stor0[address(arg1)].field_1024
    require msg.sender == stor1
    stor0[address(arg1)].field_0 = arg1
    require ext_code.size(0x6c17b1e0b409270f8896547f843a146d21c4c1f6)
    delegate 0x6c17b1e0b409270f8896547f843a146d21c4c1f6.0xee15c015 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), address(arg2), address(arg3), arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3496012f(?) {
    require 0 < stor0[address(arg1)].field_1024
    require ext_code.size(0x6c17b1e0b409270f8896547f843a146d21c4c1f6)
    delegate 0x6c17b1e0b409270f8896547f843a146d21c4c1f6.0xde295007 with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(arg1), 0)), this.address, address(arg1), arg2, arg3, arg4 << 248, arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xad9d12e2: block.number, msg.sender, arg3
}



}
