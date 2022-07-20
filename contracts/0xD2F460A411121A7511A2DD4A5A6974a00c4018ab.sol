contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct sub_99560187;

function sub_99560187(?) {
    return sub_99560187[arg1].field_0, 
           sub_99560187[arg1].field_256,
           sub_99560187[arg1].field_512,
           sub_99560187[arg1].field_768,
           sub_99560187[arg1].field_1024,
           sub_99560187[arg1].field_1280
}

function _fallback() payable {
    revert
}

function sub_a15aa41c(?) {
    require msg.sender == stor0
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x49ad12a5 with:
         gas gas_remaining wei
        args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == arg1 + 1
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x49ad12a5 with:
         gas gas_remaining wei
        args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == arg1 + 1
    sub_99560187[arg1].field_0 = arg1
    sub_99560187[arg1].field_256 = arg2
    sub_99560187[arg1].field_512 = arg3
    sub_99560187[arg1].field_768 = arg4
    sub_99560187[arg1].field_1024 = arg5
    sub_99560187[arg1].field_1280 = arg6
}

function sub_85103b6e(?) {
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x1caaa487 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x1caaa487 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x1caaa487 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require arg2 != arg1
    require arg3 != arg1
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x599e2364 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x49ad12a5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x599e2364 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x49ad12a5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == sub_99560187[ext_call.return_data[0]].field_0
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x599e2364 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x49ad12a5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == sub_99560187[ext_call.return_data[0]].field_0
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53d9)
    call 0xe97b5fd7056d38c85c5f6924461f7055588a53d9.0xa8be8329 with:
         gas gas_remaining wei
        args msg.sender, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 < sub_99560187[ext_call.return_data[0]].field_256:
        require ext_code.size(0x8a6014227138556a259e7b2bf1dce668f9bdfd06)
        call 0x8a6014227138556a259e7b2bf1dce668f9bdfd06.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[ext_call.return_data[0]].field_256 - (sub_99560187[ext_call.return_data[0]].field_256 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_99560187[ext_call.return_data[0]].field_512 > 0:
        require ext_code.size(0x6804bbb708b8af0851e2980c8a5e9abb42adb179)
        call 0x6804bbb708b8af0851e2980c8a5e9abb42adb179.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[ext_call.return_data[0]].field_512 - (sub_99560187[ext_call.return_data[0]].field_512 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_99560187[ext_call.return_data[0]].field_768 > 0:
        require ext_code.size(0xb334f68bf47c1f1c1556e7034954d389d7fbbf07)
        call 0xb334f68bf47c1f1c1556e7034954d389d7fbbf07.0xfcd3533c with:
             gas gas_remaining wei
            args sub_99560187[ext_call.return_data[0]].field_768 - (sub_99560187[ext_call.return_data[0]].field_768 * Mask(224, 0, ext_call.return_data[0]) / 100), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x42966c68 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_99560187[ext_call.return_data[0]].field_1280 + -sub_99560187[ext_call.return_data[0]].field_1024 + 1
    require ext_code.size(0xb545507080b0f63df02ff9bd9302c2bb2447b8)
    call 0x00b545507080b0f63df02ff9bd9302c2bb2447b8.0x4dc936c0 with:
         gas gas_remaining wei
        args (sha3(block.timestamp + block.difficulty, block.coinbase, ext_call.return_data[0 len 12], ext_call.return_data[12 len 20]) % sub_99560187[ext_call.return_data[0]].field_1280 + -sub_99560187[ext_call.return_data[0]].field_1024 + 1) + sub_99560187[ext_call.return_data[0]].field_1024, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
