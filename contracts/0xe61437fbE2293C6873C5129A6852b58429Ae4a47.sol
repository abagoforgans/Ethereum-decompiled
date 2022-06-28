contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 160
uint8 sub_dd2b301d; offset 168
address stor0;

function sub_dd2b301d(?) {
    return sub_dd2b301d
}

function _fallback() payable {
    revert
}

function sub_109a1d76(?) {
    if uint8(stor0.field_160):
        return 'pool only'
    return 'external only'
}

function sub_d6c9a1e2(?) {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5a55d490 with:
         gas gas_remaining wei
        args sub_dd2b301d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fcd28b38(?) {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).getTokenAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0c89b908(?) {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if bool(ext_call.return_data[0]) != 1:
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
    call address(ext_call.return_data[0]).0xeb53225f with:
         gas gas_remaining wei
        args sub_dd2b301d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2660e032(?) {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if bool(ext_call.return_data[0]) != 1:
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
    call address(ext_call.return_data[0]).0xeb53225f with:
         gas gas_remaining wei
        args sub_dd2b301d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9e55e72f(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if bool(ext_call.return_data[0]) != 1:
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
    call address(ext_call.return_data[0]).0x684a446 with:
         gas gas_remaining wei
        args 0, 128, (32 * arg1.length) + 160, uint8(stor0.field_0), msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], arg2.length, call.data[arg2 + 36 len 32 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5f7cb3ee(?) {
    require 1 == bool(uint8(stor0.field_160))
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
    if ('cd', 4).length != 1:
        revert with 0, 'Transfer to Pool only allowed.'
    if ('cd', 36).length != 1:
        revert with 0, 'Only one mount allowed.'
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).getPoolAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < ('cd', 4).length
    if address(('cd', 4)[0]) != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Destination address must coincide with Pool address.'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x684a446 with:
         gas gas_remaining wei
        args 0, 128, (32 * ('cd', 4).length) + 160, uint8(stor0.field_0), msg.sender, ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length], ('cd', 36).length, call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79094493(?) {
    require 1 == bool(uint8(stor0.field_160))
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if bool(ext_call.return_data[0]) != 1:
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
    call address(ext_call.return_data[0]).0x3eedf11a with:
         gas gas_remaining wei
        args sub_dd2b301d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x540ffa34 with:
         gas gas_remaining wei
        args uint8(stor0.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xb9d6a4f9 with:
         gas gas_remaining wei
        args uint8(stor0.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).getPoolAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        revert with 0, 'Transfer to Pool only allowed.'
    if ext_call.return_data[0] != 1:
        revert with 0, 'Transfer to Pool only allowed.'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x471eb0a with:
         gas gas_remaining wei
        args uint8(stor0.field_0), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).getTokenAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x5c0803d8 with:
             gas gas_remaining wei
            args sub_dd2b301d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_07bac7d3(?) payable {
    mem[64] = 96
    require not msg.value
    require not uint8(stor0.field_160)
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xd9deecab with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 == bool(ext_call.return_data[0]):
        mem[132] = msg.sender
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x471eb0a with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[96] = 0x3eedf11a00000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var36004 len 4] with:
             gas gas_remaining wei
            args mem[var36004 + 4 len var36005 - 4]
        mem[var36006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var40003 >= mem[var40002]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x5c0803d8 with:
                 gas gas_remaining wei
                args sub_dd2b301d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x10fe9ae800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).mem[var44004 len 4] with:
             gas gas_remaining wei
            args mem[var44004 + 4 len var44005 - 4]
        mem[var44006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x540ffa3400000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        mem[132] = var48003
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var50004 len 4] with:
             gas gas_remaining wei
            args mem[var50004 + 4 len var50005 - 4]
        mem[var50006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xb9d6a4f900000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        mem[132] = var54005
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var56004 len 4] with:
             gas gas_remaining wei
            args mem[var56004 + 4 len var56005 - 4]
        mem[var56006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _647 = mem[var60002]
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = address(var60003)
        mem[132] = _647
        require ext_code.size(var60005)
        call var62002.mem[var62004 len 4] with:
             gas gas_remaining wei
            args mem[var62004 + 4 len var62005 - 4]
        mem[var62006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x3eedf11a00000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var70004 len 4] with:
             gas gas_remaining wei
            args mem[var70004 + 4 len var70005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xda1ec348 with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if bool(ext_call.return_data[0]) != 1:
            revert with 0, 'Restricted access.'
        mem[132] = msg.sender
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x471eb0a with:
             gas gas_remaining wei
            args uint8(stor0.field_0), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        mem[96] = 0x3eedf11a00000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var40004 len 4] with:
             gas gas_remaining wei
            args mem[var40004 + 4 len var40005 - 4]
        mem[var40006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var44003 >= mem[var44002]:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x5c0803d8 with:
                 gas gas_remaining wei
                args sub_dd2b301d
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x10fe9ae800000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).mem[var48004 len 4] with:
             gas gas_remaining wei
            args mem[var48004 + 4 len var48005 - 4]
        mem[var48006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x540ffa3400000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        mem[132] = var52003
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var54004 len 4] with:
             gas gas_remaining wei
            args mem[var54004 + 4 len var54005 - 4]
        mem[var54006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xb9d6a4f900000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        mem[132] = var58005
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var60004 len 4] with:
             gas gas_remaining wei
            args mem[var60004 + 4 len var60005 - 4]
        mem[var60006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _650 = mem[var64002]
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = address(var64003)
        mem[132] = _650
        require ext_code.size(var64005)
        call var66002.mem[var66004 len 4] with:
             gas gas_remaining wei
            args mem[var66004 + 4 len var66005 - 4]
        mem[var66006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x3eedf11a00000000000000000000000000000000000000000000000000000000
        mem[100] = sub_dd2b301d
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[var74004 len 4] with:
             gas gas_remaining wei
            args mem[var74004 + 4 len var74005 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}



}
