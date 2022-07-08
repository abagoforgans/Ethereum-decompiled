contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_1afbe0e1(?) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var17004 len 4] with:
         gas gas_remaining wei
        args mem[var17004 + 4 len var17005 - 4]
    mem[var17006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var21003 >= mem[var21002]:
        if not stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var23001
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var25004 len 4] with:
         gas gas_remaining wei
        args mem[var25004 + 4 len var25005 - 4]
    mem[var25006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _184 = mem[var29002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(_184))
    call var31002.mem[var31004 len 4] with:
         gas gas_remaining wei
        args mem[var31004 + 4 len var31005 - 4]
    mem[var31006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _248 = mem[var35002]
    stor0.length++
    mem[0] = 0
    stor0[stor0.length].field_0 = _248
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var39004 len 4] with:
         gas gas_remaining wei
        args mem[var39004 + 4 len var39005 - 4]
    mem[var39006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var43003 >= mem[var43002]:
        if not stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var45001
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var47004 len 4] with:
         gas gas_remaining wei
        args mem[var47004 + 4 len var47005 - 4]
    mem[var47006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[var51002 + 12 len 20])
    # nil
}

function getPrices() payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var17004 len 4] with:
         gas gas_remaining wei
        args mem[var17004 + 4 len var17005 - 4]
    mem[var17006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var21003 >= mem[var21002]:
        if not stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var23001
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var25004 len 4] with:
         gas gas_remaining wei
        args mem[var25004 + 4 len var25005 - 4]
    mem[var25006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _184 = mem[var29002]
    mem[96] = 0x5e9a523c00000000000000000000000000000000000000000000000000000000
    mem[100] = address(_184)
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var31004 len 4] with:
         gas gas_remaining wei
        args mem[var31004 + 4 len var31005 - 4]
    mem[var31006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _248 = mem[var35002]
    stor0.length++
    mem[0] = 0
    stor0[stor0.length].field_0 = _248
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var39004 len 4] with:
         gas gas_remaining wei
        args mem[var39004 + 4 len var39005 - 4]
    mem[var39006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var43003 >= mem[var43002]:
        if not stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        return Array(len=stor0.length, data=mem[128 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 192 len (32 * stor0.length) - floor32(stor0.length)]), 
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var45001
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var47004 len 4] with:
         gas gas_remaining wei
        args mem[var47004 + 4 len var47005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    # nil
}

function getBalances(address arg1) payable {
    mem[64] = 96
    require not msg.value
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var23004 len 4] with:
         gas gas_remaining wei
        args mem[var23004 + 4 len var23005 - 4]
    mem[var23006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var27005 >= mem[var27002]:
        require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
        call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.calculateAccountValues(address arg1) with:
             gas gas_remaining wei
            args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if stor0.length:
            mem[128] = uint256(stor0.field_0)
            idx = 128
            s = 0
            while (32 * stor0.length) + 96 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor0.length:
                mem[(32 * stor0.length) + 160] = uint256(stor0.field_0)
                idx = (32 * stor0.length) + 160
                s = 0
                while (64 * stor0.length) + 128 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        mem[(64 * stor0.length) + 224] = ext_call.return_data[32]
        mem[(64 * stor0.length) + 256] = ext_call.return_data[64]
        mem[(64 * stor0.length) + 160] = 128
        mem[(64 * stor0.length) + 288] = stor0.length
        mem[(64 * stor0.length) + 320 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
        mem[(64 * stor0.length) + 192] = (32 * stor0.length) + 160
        mem[(98 * stor0.length) + 320] = stor0.length
        mem[(98 * stor0.length) + 352 len floor32(stor0.length)] = mem[(32 * stor0.length) + 160 len floor32(stor0.length)]
        return memory
          from (64 * stor0.length) + 160
           len (194 * stor0.length) + 192
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var29003
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var31004 len 4] with:
         gas gas_remaining wei
        args mem[var31004 + 4 len var31005 - 4]
    mem[var31006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _350 = mem[var35002]
    mem[96] = 0xba37773100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(_350)
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var37004 len 4] with:
         gas gas_remaining wei
        args mem[var37004 + 4 len var37005 - 4]
    mem[var37006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _485 = mem[var41002]
    stor0.length++
    mem[0] = 0
    stor0[stor0.length].field_0 = _485
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var41006
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var43004 len 4] with:
         gas gas_remaining wei
        args mem[var43004 + 4 len var43005 - 4]
    mem[var43006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _604 = mem[var47002]
    mem[96] = 0x118e31b700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(_604)
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var49004 len 4] with:
         gas gas_remaining wei
        args mem[var49004 + 4 len var49005 - 4]
    mem[var49006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _722 = mem[var53002]
    stor0.length++
    mem[0] = 0
    stor0[stor0.length].field_0 = _722
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x3fda67f7583380e67ef93072294a7fac882fd7e7)
    call 0x3fda67f7583380e67ef93072294a7fac882fd7e7.mem[var57004 len 4] with:
         gas gas_remaining wei
        args mem[var57004 + 4 len var57005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
