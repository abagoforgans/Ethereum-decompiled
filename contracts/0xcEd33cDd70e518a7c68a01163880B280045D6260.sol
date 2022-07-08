contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getPrices() payable {
    mem[64] = 96
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var17003 len 4] with:
            gas gas_remaining wei
           args mem[var17003 + 4 len var17004 - 4]
    mem[var17005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var21003 >= mem[var21002]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var23001
    require ext_code.size(stor0)
    staticcall stor0.mem[var25003 len 4] with:
            gas gas_remaining wei
           args mem[var25003 + 4 len var25004 - 4]
    mem[var25005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _159 = mem[var29002]
    mem[96] = 0x5e9a523c00000000000000000000000000000000000000000000000000000000
    mem[100] = address(_159)
    require ext_code.size(stor0)
    staticcall stor0.mem[var31003 len 4] with:
            gas gas_remaining wei
           args mem[var31003 + 4 len var31004 - 4]
    mem[var31005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require var35003 < 0x5e9a523c00000000000000000000000000000000000000000000000000000000
    mem[(32 * var37001) + 128] = var37003
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var41003 len 4] with:
            gas gas_remaining wei
           args mem[var41003 + 4 len var41004 - 4]
    mem[var41005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var45003 >= mem[var45002]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var47001
    require ext_code.size(stor0)
    staticcall stor0.mem[var49003 len 4] with:
            gas gas_remaining wei
           args mem[var49003 + 4 len var49004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}

function sub_1afbe0e1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var18003 len 4] with:
            gas gas_remaining wei
           args mem[var18003 + 4 len var18004 - 4]
    mem[var18005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var22003 >= mem[var22002]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var24001
    require ext_code.size(stor0)
    staticcall stor0.mem[var26003 len 4] with:
            gas gas_remaining wei
           args mem[var26003 + 4 len var26004 - 4]
    mem[var26005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _159 = mem[var30002]
    mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(_159))
    staticcall var32002.mem[var32003 len 4] with:
            gas gas_remaining wei
           args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require var36003 < 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[(32 * var38001) + 128] = var38003
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var42003 len 4] with:
            gas gas_remaining wei
           args mem[var42003 + 4 len var42004 - 4]
    mem[var42005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var46003 >= mem[var46002]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var48001
    require ext_code.size(stor0)
    staticcall stor0.mem[var50003 len 4] with:
            gas gas_remaining wei
           args mem[var50003 + 4 len var50004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}

function getBalances(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.mem[var25003 len 4] with:
            gas gas_remaining wei
           args mem[var25003 + 4 len var25004 - 4]
    mem[var25005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var29003 >= mem[var29002]:
        require ext_code.size(stor0)
        staticcall stor0.calculateAccountValues(address arg1) with:
                gas gas_remaining wei
               args arg1
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        mem[160] = ext_call.return_data[32]
        mem[192] = ext_call.return_data[64]
        mem[224] = ext_call.return_data[0]
        mem[256 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[(32 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        return ext_call.return_data[0 len 64], 
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[0],
               mem[256 len (64 * ext_call.return_data[0]) + 32]
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var31001
    require ext_code.size(stor0)
    staticcall stor0.mem[var33003 len 4] with:
            gas gas_remaining wei
           args mem[var33003 + 4 len var33004 - 4]
    mem[var33005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _308 = mem[var37002]
    mem[96] = 0xba37773100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(_308)
    require ext_code.size(stor0)
    staticcall stor0.mem[var39003 len 4] with:
            gas gas_remaining wei
           args mem[var39003 + 4 len var39004 - 4]
    mem[var39005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require var43003 < 0xba37773100000000000000000000000000000000000000000000000000000000
    mem[(32 * var45001) + 128] = var45003
    mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
    mem[100] = var45004
    require ext_code.size(stor0)
    staticcall stor0.mem[var47003 len 4] with:
            gas gas_remaining wei
           args mem[var47003 + 4 len var47004 - 4]
    mem[var47005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _562 = mem[var51002]
    mem[96] = 0x118e31b700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(_562)
    require ext_code.size(stor0)
    staticcall stor0.mem[var53003 len 4] with:
            gas gas_remaining wei
           args mem[var53003 + 4 len var53004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require var57003 < 0x118e31b700000000000000000000000000000000000000000000000000000000
    # nil
}



}
