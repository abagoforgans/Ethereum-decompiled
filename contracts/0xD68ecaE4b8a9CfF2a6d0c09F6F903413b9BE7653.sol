contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 16
uint256 stor3; offset 8
address sub_b1192744Address;
address stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
mapping of uint8 stor8;
mapping of address sub_d756851c;

function sub_451841db(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function sub_52d028ca(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function sub_589dcb54(?) {
    return bool(uint8(stor7))
}

function sub_b1192744(?) {
    return sub_b1192744Address
}

function sub_b7cda887(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_d756851c(?) {
    require calldata.size - 4 >= 32
    return sub_d756851c[address(arg1)]
}

function sub_f18a1568(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_53e6ad79(?) {
    require msg.sender
    require stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 0
    emit 0xedefd26c: msg.sender
}

function sub_9bb4e83b(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit 0xb1faf7ee: msg.sender
}

function sub_add2a07b(?) {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit 0xbcf48aa8: msg.sender
}

function sub_6684ff61(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    Mask(96, 0, stor7) = Mask(96, 0, arg1)
}

function setWhitelistContract(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    stor6 = arg1
    emit 0xeac5a5e6: msg.sender, arg1
}

function sub_8d79048f(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit 0xedefd26c: arg1
}

function sub_ab76044f(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xbcf48aa8: arg1
}

function sub_0a8d9f32(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit 0x74ce7ae5: arg1
}

function sub_417a579d(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit 0x20aba89e: arg1
}

function sub_49afe682(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0x8c197482: arg1
}

function getStorageAddress() {
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x7ccfd714 with:
         gas gas_remaining wei
        args 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function sub_240b6245(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x2d3a78c1 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_4867c36a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xa33b83c4 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function sub_06f95e81(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    uint8(stor3.field_0) = uint8(arg1)
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor3.field_16) = Mask(240, 16, arg1) >> 16
    emit 0xba2b7369: arg1, arg2
}

function sub_9ac8da7d(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x63b5b49b with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_d4b89a95(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x956d6803 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_d8c25157(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x9ddc5039 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_20475645(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x8e2e75c1 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function sub_1860592b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xa541a42b with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function sub_438e4f6a(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xc0a01786 with:
         gas gas_remaining wei
        args 0, 3, address(arg1), address(arg2), arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_dd655084(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x2069fedf with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function sub_53a3f249(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x53eb9119 with:
         gas gas_remaining wei
        args 0, 3, address(arg1), address(arg2), arg3, arg4, arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_68682050(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no ATadmin'
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xc6aca129 with:
         gas gas_remaining wei
        args 0, 3, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_67bc9b0a(?) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor2[address(msg.sender)]:
        revert with 0, 'no at2csAdmin'
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x48cdb8f7 with:
         gas gas_remaining wei
        args 0, 3, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d4cab6d3(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x86195ecf with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x94d04323: arg2, Mask(64, 192, arg3), arg1, msg.sender
    return delegate.return_data[0]
}

function sub_c6e387ae(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x6c94d1fb with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cc5ac948(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x88f074d1 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xa288cc97 with:
         gas gas_remaining wei
        args 3, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c2f07b63(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x7dabd0f1 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cfb7fa3b(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xc7269330 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x2fef5a49 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_aecf2c0b(?) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 32, 15, 0xfe6e6f20726f6f7420504661646d696e00000000000000000000000000000000
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x352cfe85 with:
         gas gas_remaining wei
        args 3, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_04138e6b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x63b5b49b with:
         gas gas_remaining wei
        args 3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'untrusted source2'
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xa541a42b with:
         gas gas_remaining wei
        args 3, msg.sender, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0]
}

function sub_8de05db5(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
    if uint8(stor3.field_8):
        delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0xa33b83c4 with:
             gas gas_remaining wei
            args 3, arg2
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x956d6803 with:
         gas gas_remaining wei
        args 3, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'untrusted'
    if uint8(stor3.field_0):
        require ext_code.size(0xda29e0f4eb69669f5ca582c8f300c4bff635f9d)
        delegate 0xda29e0f4eb69669f5ca582c8f300c4bff635f9d.0x84733868 with:
             gas gas_remaining wei
            args 0, 3, msg.sender, address(arg1), arg3, 'clearTransferFunds'
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
