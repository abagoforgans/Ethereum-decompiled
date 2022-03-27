contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 14847]




// =====================  Runtime code  =====================


array of address stor1;
array of address stor2;
array of address stor3;
array of address stor4;
array of struct stor5;
array of struct stor6;

function _fallback() payable {
    revert 
}

function sub_01da6a13(?) payable {
    stor6[arg1].field_8 = arg2
}

function sub_be06b62b(?) payable {
    require ext_code.size(stor4[arg1])
    call stor4[arg1].unfollow() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function sub_81d56745(?) payable {
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0x63c3cc16 with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_49fd3554(?) payable {
    require ext_code.size(stor2[arg1])
    call stor2[arg1].numCoins() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_079822a9(?) payable {
    require ext_code.size(stor2[arg1])
    call stor2[arg1].0xb7e3f960 with:
         gas gas_remaining - 50 wei
        args Mask(64, 192, arg2)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_a81f7202(?) payable {
    require ext_code.size(stor2[arg1])
    call stor2[arg1].0xd5b97f96 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    return Mask(64, 192, ext_call.return_data[0])
}

function sub_7fd6d6a2(?) payable {
    stor[arg1] = arg2
    stor1[arg1] = arg3
    stor2[arg1] = arg4
    stor3[arg1] = arg5
    stor4[arg1] = arg6
    uint8(stor6[arg1].field_0) = 0
    Mask(248, 0, stor6[arg1].field_8) = 0
    stor6[arg1].field_8 = arg7
}

function sub_9b422403(?) payable {
    require ext_code.size(stor1[arg1])
    call stor1[arg1].setBuyer(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if stor5[arg1].field_0:
        require ext_code.size(stor5[arg1].field_0)
        call stor5[arg1].field_0.setBuyer(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
}

function sub_a6879b8e(?) payable {
    require ext_code.size(stor1[arg1])
    call stor1[arg1].setSeller(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if stor5[arg1].field_0:
        require ext_code.size(stor5[arg1].field_0)
        call stor5[arg1].field_0.setSeller(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
}

function sub_ef7c8c31(?) payable {
    require arg2
    uint8(stor6[arg1].field_0) = 2
    emit 0x4cc6a2a6: 2
    require ext_code.size(stor2[arg1])
    call stor2[arg1].setFinalValue(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args 0
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].withdrawAll(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
}

function sub_66f4f8b8(?) payable {
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x647a1b6a with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].depositTo(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9050 wei
        args arg2
    require ext_call.success
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0xf5a68ac7 with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function sub_980fe284(?) payable {
    if arg2:
        if arg5:
            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
                 gas gas_remaining - 50 wei
                args arg5 << 192, arg6
            require delegate.return_code
            if block.timestamp <= delegate.return_data[0]:
                require ext_code.size(stor1[arg1])
                call stor1[arg1].0xca81ce22 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[0] >= arg7:
                    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x505fb46c with:
                         gas gas_remaining - 50 wei
                        args arg3, arg7, arg4
                    require delegate.return_code
                    require ext_code.size(stor1[arg1])
                    call stor1[arg1].0xec8d3ff1 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] >= delegate.return_data[0]:
                        return 1
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_e909bcb4(?) payable {
    require uint8(stor6[arg1].field_0) <= 2
    if uint8(stor6[arg1].field_0) != 1:
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0xec8d3ff1 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0x1fb6543 with:
             gas gas_remaining - 50 wei
            args address(arg2), ext_call.return_data[0]
    else:
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
             gas gas_remaining - 50 wei
            args 100000, ext_call.return_data[96]
        require delegate.return_code
        require delegate.return_data[0]
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0xec8d3ff1 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0xc6cfd083 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0xb0144e49 with:
             gas gas_remaining - 50 wei
            args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], ext_call.return_data[0] / delegate.return_data[0], ext_call.return_data[0]
        require delegate.return_code
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0x1fb6543 with:
             gas gas_remaining - 50 wei
            args address(arg2), delegate.return_data[0]
    require ext_call.success
}

function sub_c770881d(?) payable {
    require uint8(stor6[arg1].field_0) <= 2
    if not uint8(stor6[arg1].field_0):
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0xca81ce22 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].0x5b73900b with:
             gas gas_remaining - 50 wei
            args address(arg2), ext_call.return_data[0]
        require ext_call.success
    else:
        require uint8(stor6[arg1].field_0) <= 2
        if uint8(stor6[arg1].field_0) != 1:
            require uint8(stor6[arg1].field_0) <= 2
            if uint8(stor6[arg1].field_0) == 2:
                require ext_code.size(stor1[arg1])
                call stor1[arg1].0xca81ce22 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(stor1[arg1])
                call stor1[arg1].0x5b73900b with:
                     gas gas_remaining - 50 wei
                    args address(arg2), ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(stor4[arg1])
                call stor4[arg1].withdraw(address rg1) with:
                     gas gas_remaining - 50 wei
                    args arg2
                require ext_call.success
        else:
            require ext_code.size(stor2[arg1])
            call stor2[arg1].data() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
                 gas gas_remaining - 50 wei
                args 100000, ext_call.return_data[96]
            require delegate.return_code
            require delegate.return_data[0]
            require ext_code.size(stor1[arg1])
            call stor1[arg1].0xca81ce22 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
                 gas gas_remaining - 50 wei
                args ext_call.return_data[0], ext_call.return_data[0] / delegate.return_data[0]
            require delegate.return_code
            require ext_code.size(stor1[arg1])
            call stor1[arg1].0x5b73900b with:
                 gas gas_remaining - 50 wei
                args address(arg2), delegate.return_data[0]
            require ext_call.success
}

function sub_d30b4183(?) payable {
    require ext_code.size(stor5[arg1].field_0)
    call stor5[arg1].field_0.data() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3[arg1])
    call stor3[arg1].data() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].data() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require uint8(stor6[arg1].field_0) <= 2
    require ext_code.size(stor1[arg1])
    call stor1[arg1].buyer() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].seller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].leader() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].value() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0xe634ee61 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0xc6cfd083 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].startTime() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].endTime() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0x33b0950d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0xf2e99837 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0xec8d3ff1 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0xca81ce22 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].0x416fc9b7 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor4[arg1])
    call stor4[arg1].isFull() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return uint8(stor6[arg1].field_0), 
           address(ext_call.return_data[0]),
           stor4[arg1], stor5[arg1].field_0 >> 2304,
           ext_call.return_data[0],
           ext_call.return_data[0], uint32(stor5[arg1].field_224) >> 3840,
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0])
}

function sub_9037e73e(?) payable {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require ext_code.size(stor4[arg1])
    call stor4[arg1].leader() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    mem[(32 * arg5.length) + (32 * arg4.length) + 160] = 0xbe3ebbba00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg5.length) + (32 * arg4.length) + 164] = arg2
    mem[(32 * arg5.length) + (32 * arg4.length) + 196] = arg3
    mem[(32 * arg5.length) + (32 * arg4.length) + 292] = arg6
    mem[(32 * arg5.length) + (32 * arg4.length) + 228] = 160
    mem[(32 * arg5.length) + (32 * arg4.length) + 324] = arg4.length
    if not Mask(251, 0, arg4.length):
        mem[(32 * arg5.length) + (32 * arg4.length) + 260] = (32 * arg4.length) + 192
        mem[(64 * arg4.length) + (32 * arg5.length) + 356] = arg5.length
        if Mask(251, 0, arg5.length):
            mem[(64 * arg4.length) + (32 * arg5.length) + 388] = mem[(32 * arg4.length) + 160]
            mem[(64 * arg4.length) + (32 * arg5.length) + 420 len floor32((32 * arg5.length) - 1)] = mem[(32 * arg4.length) + 192 len floor32((32 * arg5.length) - 1)]
        require ext_code.size(stor3[arg1])
        call stor3[arg1].0xbe3ebbba with:
             gas gas_remaining - 50 wei
            args arg2, arg3, Array(len=arg4.length, data=mem[(32 * arg5.length) + (32 * arg4.length) + 356 len (32 * arg5.length) + (32 * arg4.length) + 32]), (32 * arg4.length) + 192, address(arg6)
    else:
        mem[(32 * arg5.length) + (32 * arg4.length) + 356] = mem[128]
        mem[(32 * arg5.length) + (32 * arg4.length) + 388 len floor32((32 * arg4.length) - 1)] = mem[160 len floor32((32 * arg4.length) - 1)]
        mem[(32 * arg5.length) + (32 * arg4.length) + 260] = (32 * arg4.length) + 192
        mem[(64 * arg4.length) + (32 * arg5.length) + 356] = arg5.length
        if Mask(251, 0, arg5.length):
            mem[(64 * arg4.length) + (32 * arg5.length) + 388] = mem[(32 * arg4.length) + 160]
            mem[(64 * arg4.length) + (32 * arg5.length) + 420 len floor32((32 * arg5.length) - 1)] = mem[(32 * arg4.length) + 192 len floor32((32 * arg5.length) - 1)]
        require ext_code.size(stor3[arg1])
        call stor3[arg1].0xbe3ebbba with:
             gas gas_remaining - 50 wei
            args arg2, arg3, Array(len=arg4.length, data=mem[128], mem[(32 * arg5.length) + (32 * arg4.length) + 388 len (32 * arg5.length) + (32 * arg4.length)]), (32 * arg4.length) + 192, address(arg6)
    require ext_call.success
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x647a1b6a with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].depositTo(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9050 wei
        args msg.sender
    require ext_call.success
}

function sub_bf53cab5(?) payable {
    mem[96] = 0
    mem[128 len 320] = 0
    require ext_code.size(msg.sender)
    call msg.sender.data() with:
         gas gas_remaining - 50 wei
    mem[448 len 992] = ext_call.return_data[0 len 992]
    require ext_call.success
    mem[64] = 1440
    require ext_code.size(stor4[arg1])
    call stor4[arg1].leader() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == ext_call.return_data[364 len 20]
    mem[1568] = 0
    require ext_code.size(stor2[arg1])
    call stor2[arg1].data() with:
         gas gas_remaining - 50 wei
    mem[1440 len 128] = ext_call.return_data[0 len 128]
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].value() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].setFinalValue(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    uint8(stor6[arg1].field_0) = 2
    emit 0x4cc6a2a6: 2
    require ext_code.size(stor1[arg1])
    call stor1[arg1].setEndTime(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args block.timestamp
    require ext_call.success
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require delegate.return_code
    require ext_code.size(stor1[arg1])
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        call stor1[arg1].buyer() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].seller() with:
             gas gas_remaining - 50 wei
    else:
        call stor1[arg1].seller() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].buyer() with:
             gas gas_remaining - 50 wei
    require ext_call.success
    mem[1476] = address(ext_call.return_data[0])
    mem[1508] = delegate.return_data[0]
    require ext_code.size(stor1[arg1])
    call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
    require ext_call.success
    mem[1472] = 0
    mem[1440] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4[arg1])
    call stor4[arg1].mem[var44003 len 4] with:
         gas gas_remaining - 50 wei
        args mem[var44003 + 4 len var44004 - 4]
    mem[var44005] = ext_call.return_data[0]
    require ext_call.success
    if var46006 < 0x1e8e368400000000000000000000000000000000000000000000000000000000:
        mem[1504] = 0
        mem[1440] = 0x15a8510c00000000000000000000000000000000000000000000000000000000
        mem[1444] = var48003
        require ext_code.size(stor4[arg1])
        call stor4[arg1].mem[var50003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var50003 + 4 len var50004 - 4]
        mem[var50005 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        mem[1472] = 0
        mem[1440] = 0x8da5cb5b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0)
        call var54001.mem[var54003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var54003 + 4 len var54004 - 4]
        mem[var54005] = ext_call.return_data[0]
        require ext_call.success
        mem[1440] = 0x574a627100000000000000000000000000000000000000000000000000000000
        require ext_code.size(0)
        call var58001.mem[var58003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var58003 + 4 len var58004 - 4]
        require ext_call.success
        require ext_code.size(stor4[arg1])
        call stor4[arg1].0x1e8e3684 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        s = var60004
        s = var60005
        idx = var60006
        while idx + 1 < ext_call.return_data[0]:
            mem[mem[64] + 64] = 0
            require ext_code.size(stor4[arg1])
            call stor4[arg1].getFollower(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x8da5cb5b with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x574a6271 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            mem[mem[64] + 32] = 0
            require ext_code.size(stor4[arg1])
            call stor4[arg1].0x1e8e3684 with:
                 gas gas_remaining - 50 wei
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sub_3e6dac29(?) payable {
    mem[64] = 96
    require ext_code.size(stor1[arg1])
    call stor1[arg1].startTime() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], uint32(stor5[arg1].field_192)
    require delegate.return_code
    require block.timestamp >= delegate.return_data[0]
    mem[224] = 0
    require ext_code.size(stor2[arg1])
    call stor2[arg1].data() with:
         gas gas_remaining - 50 wei
    mem[96 len 128] = ext_call.return_data[0 len 128]
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].value() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].setFinalValue(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    uint8(stor6[arg1].field_0) = 2
    emit 0x4cc6a2a6: 2
    require ext_code.size(stor1[arg1])
    call stor1[arg1].setEndTime(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args block.timestamp
    require ext_call.success
    require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
    delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require delegate.return_code
    require ext_code.size(stor1[arg1])
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        call stor1[arg1].buyer() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].seller() with:
             gas gas_remaining - 50 wei
    else:
        call stor1[arg1].seller() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1[arg1])
        call stor1[arg1].buyer() with:
             gas gas_remaining - 50 wei
    require ext_call.success
    mem[132] = address(ext_call.return_data[0])
    mem[164] = delegate.return_data[0]
    require ext_code.size(stor1[arg1])
    call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
    require ext_call.success
    mem[128] = 0
    mem[96] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4[arg1])
    call stor4[arg1].mem[var41003 len 4] with:
         gas gas_remaining - 50 wei
        args mem[var41003 + 4 len var41004 - 4]
    mem[var41005] = ext_call.return_data[0]
    require ext_call.success
    if var43006 < 0x1e8e368400000000000000000000000000000000000000000000000000000000:
        mem[160] = 0
        mem[96] = 0x15a8510c00000000000000000000000000000000000000000000000000000000
        mem[100] = var45003
        require ext_code.size(stor4[arg1])
        call stor4[arg1].mem[var47003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var47003 + 4 len var47004 - 4]
        mem[var47005 len 64] = ext_call.return_data[0 len 64]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x8da5cb5b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0)
        call var51001.mem[var51003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var51003 + 4 len var51004 - 4]
        mem[var51005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x574a627100000000000000000000000000000000000000000000000000000000
        require ext_code.size(0)
        call var55001.mem[var55003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var55003 + 4 len var55004 - 4]
        require ext_call.success
        mem[128] = 0
        require ext_code.size(stor4[arg1])
        call stor4[arg1].0x1e8e3684 with:
             gas gas_remaining - 50 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = var57004
        s = var57005
        idx = var57006
        while idx + 1 < ext_call.return_data[0]:
            mem[mem[64] + 64] = 0
            require ext_code.size(stor4[arg1])
            call stor4[arg1].getFollower(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x8da5cb5b with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x574a6271 with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            mem[mem[64] + 32] = 0
            mem[mem[64]] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor4[arg1])
            call stor4[arg1].0x1e8e3684 with:
                 gas gas_remaining - 50 wei
                args mem[mem[64] + 4 len -mem[64] + 96]
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sub_c03d186d(?) payable {
    if stor5[arg1].field_0:
        require ext_code.size(stor5[arg1].field_0)
        call stor5[arg1].field_0.data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require uint8(stor6[arg1].field_0) <= 2
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[64], ext_call.return_data[0]
        require delegate.return_code
        if 0 == uint8(stor6[arg1].field_0):
            if ext_call.return_data[216 len 8]:
                mem[548] = ext_call.return_data[216 len 8]
                mem[580] = ext_call.return_data[124 len 4]
                require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
                     gas gas_remaining - 50 wei
                    args mem[548 len 64]
                require delegate.return_code
                if block.timestamp <= delegate.return_data[0]:
                    require ext_code.size(stor1[arg1])
                    call stor1[arg1].0xca81ce22 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] >= delegate.return_data[0] / 100000:
                        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x505fb46c with:
                             gas gas_remaining - 50 wei
                            args ext_call.return_data[0], delegate.return_data[0] / 100000, ext_call.return_data[0]
                        require delegate.return_code
                        require ext_code.size(stor1[arg1])
                        call stor1[arg1].0xec8d3ff1 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[0] >= delegate.return_data[0]:
                            uint8(stor6[arg1].field_0) = 1
                            emit 0x4cc6a2a6: 1
                            require ext_code.size(stor2[arg1])
                            call stor2[arg1].0x6c63d857 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0], ext_call.return_data[64]
                            require ext_call.success
                            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0] / 100000, ext_call.return_data[32]
                            require delegate.return_code
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0x166461a3 with:
                                 gas gas_remaining - 50 wei
                                args block.timestamp, ext_call.return_data[0], delegate.return_data[0]
                            require ext_call.success
                            uint32(stor5[arg1].field_160) = ext_call.return_data[124 len 4]
                            uint32(stor5[arg1].field_192) = ext_call.return_data[156 len 4]
                            uint32(stor5[arg1].field_224) = ext_call.return_data[188 len 4]
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].buyer() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].seller() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0xe634ee61 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4[arg1])
                            call stor4[arg1].0x57754199 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].leader() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x33b0950d with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].0x864a4570 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).portfolio() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor2[arg1])
                                call stor2[arg1].0x8754b293 with:
                                     gas gas_remaining - 50 wei
                                    args address(ext_call.return_data[0])
                                require ext_call.success
}

function sub_89b7d281(?) payable {
    require ext_code.size(stor1[arg1])
    call stor1[arg1].buyer() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    if ext_call.return_data[12 len 20] != msg.sender:
        call stor1[arg1].seller() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == msg.sender
    call stor1[arg1].depositTo(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9050 wei
        args msg.sender
    require ext_call.success
    if stor5[arg1].field_0:
        require ext_code.size(stor5[arg1].field_0)
        call stor5[arg1].field_0.data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require uint8(stor6[arg1].field_0) <= 2
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[64], ext_call.return_data[0]
        require delegate.return_code
        if 0 == uint8(stor6[arg1].field_0):
            if ext_call.return_data[216 len 8]:
                mem[548] = ext_call.return_data[216 len 8]
                mem[580] = ext_call.return_data[124 len 4]
                require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
                     gas gas_remaining - 50 wei
                    args mem[548 len 64]
                require delegate.return_code
                if block.timestamp <= delegate.return_data[0]:
                    require ext_code.size(stor1[arg1])
                    call stor1[arg1].0xca81ce22 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] >= delegate.return_data[0] / 100000:
                        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x505fb46c with:
                             gas gas_remaining - 50 wei
                            args ext_call.return_data[0], delegate.return_data[0] / 100000, ext_call.return_data[0]
                        require delegate.return_code
                        require ext_code.size(stor1[arg1])
                        call stor1[arg1].0xec8d3ff1 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[0] >= delegate.return_data[0]:
                            uint8(stor6[arg1].field_0) = 1
                            emit 0x4cc6a2a6: 1
                            require ext_code.size(stor2[arg1])
                            call stor2[arg1].0x6c63d857 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0], ext_call.return_data[64]
                            require ext_call.success
                            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0] / 100000, ext_call.return_data[32]
                            require delegate.return_code
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0x166461a3 with:
                                 gas gas_remaining - 50 wei
                                args block.timestamp, ext_call.return_data[0], delegate.return_data[0]
                            require ext_call.success
                            uint32(stor5[arg1].field_160) = ext_call.return_data[124 len 4]
                            uint32(stor5[arg1].field_192) = ext_call.return_data[156 len 4]
                            uint32(stor5[arg1].field_224) = ext_call.return_data[188 len 4]
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].buyer() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].seller() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0xe634ee61 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4[arg1])
                            call stor4[arg1].0x57754199 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].leader() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x33b0950d with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].0x864a4570 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).portfolio() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor2[arg1])
                                call stor2[arg1].0x8754b293 with:
                                     gas gas_remaining - 50 wei
                                    args address(ext_call.return_data[0])
                                require ext_call.success
}

function sub_643b2e4a(?) payable {
    require ext_code.size(stor1[arg1])
    call stor1[arg1].seller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require not stor5[arg1].field_0
    require ext_code.size(stor1[arg1])
    call stor1[arg1].buyer() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].seller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor[arg1])
    call stor[arg1].0x526b0647 with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg2, arg3, arg4, arg5 << 224, arg6 << 224, arg7
    require ext_call.success
    uint256(stor5[arg1].field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5[arg1].field_0))
    require ext_code.size(stor1[arg1])
    call stor1[arg1].seller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x647a1b6a with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    require ext_code.size(stor1[arg1])
    call stor1[arg1].0xc6655208 with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
    if stor5[arg1].field_0:
        require ext_code.size(stor5[arg1].field_0)
        call stor5[arg1].field_0.data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require uint8(stor6[arg1].field_0) <= 2
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[64], ext_call.return_data[0]
        require delegate.return_code
        if 0 == uint8(stor6[arg1].field_0):
            if ext_call.return_data[216 len 8]:
                mem[548] = ext_call.return_data[216 len 8]
                mem[580] = ext_call.return_data[124 len 4]
                require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x771602f7 with:
                     gas gas_remaining - 50 wei
                    args mem[548 len 64]
                require delegate.return_code
                if block.timestamp <= delegate.return_data[0]:
                    require ext_code.size(stor1[arg1])
                    call stor1[arg1].0xca81ce22 with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[0] >= delegate.return_data[0] / 100000:
                        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x505fb46c with:
                             gas gas_remaining - 50 wei
                            args ext_call.return_data[0], delegate.return_data[0] / 100000, ext_call.return_data[0]
                        require delegate.return_code
                        require ext_code.size(stor1[arg1])
                        call stor1[arg1].0xec8d3ff1 with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[0] >= delegate.return_data[0]:
                            uint8(stor6[arg1].field_0) = 1
                            emit 0x4cc6a2a6: 1
                            require ext_code.size(stor2[arg1])
                            call stor2[arg1].0x6c63d857 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0], ext_call.return_data[64]
                            require ext_call.success
                            require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
                            delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x165c4a16 with:
                                 gas gas_remaining - 50 wei
                                args ext_call.return_data[0] / 100000, ext_call.return_data[32]
                            require delegate.return_code
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0x166461a3 with:
                                 gas gas_remaining - 50 wei
                                args block.timestamp, ext_call.return_data[0], delegate.return_data[0]
                            require ext_call.success
                            uint32(stor5[arg1].field_160) = ext_call.return_data[124 len 4]
                            uint32(stor5[arg1].field_192) = ext_call.return_data[156 len 4]
                            uint32(stor5[arg1].field_224) = ext_call.return_data[188 len 4]
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].buyer() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].seller() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].0xe634ee61 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            require ext_code.size(stor1[arg1])
                            call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0]
                            require ext_call.success
                            require ext_code.size(stor4[arg1])
                            call stor4[arg1].0x57754199 with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[0]:
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].leader() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x33b0950d with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor4[arg1])
                                call stor4[arg1].0x864a4570 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).portfolio() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                require ext_code.size(stor2[arg1])
                                call stor2[arg1].0x8754b293 with:
                                     gas gas_remaining - 50 wei
                                    args address(ext_call.return_data[0])
                                require ext_call.success
}

function sub_9e43a80b(?) payable {
    mem[64] = 96
    require ext_code.size(stor2[arg1])
    call stor2[arg1].value() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        mem[224] = 0
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].value() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].setFinalValue(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        uint8(stor6[arg1].field_0) = 2
        emit 0x4cc6a2a6: 2
        require ext_code.size(stor1[arg1])
        call stor1[arg1].setEndTime(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args block.timestamp
        require ext_call.success
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0], ext_call.return_data[0]
        require delegate.return_code
        require ext_code.size(stor1[arg1])
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            call stor1[arg1].buyer() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor1[arg1])
            call stor1[arg1].seller() with:
                 gas gas_remaining - 50 wei
        else:
            call stor1[arg1].seller() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor1[arg1])
            call stor1[arg1].buyer() with:
                 gas gas_remaining - 50 wei
        require ext_call.success
        mem[132] = address(ext_call.return_data[0])
        mem[164] = delegate.return_data[0]
        require ext_code.size(stor1[arg1])
        call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor4[arg1])
        call stor4[arg1].mem[var40003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var40003 + 4 len var40004 - 4]
        mem[var40005] = ext_call.return_data[0]
        require ext_call.success
        if var42006 < 0x1e8e368400000000000000000000000000000000000000000000000000000000:
            mem[160] = 0
            mem[96] = 0x15a8510c00000000000000000000000000000000000000000000000000000000
            mem[100] = var44003
            require ext_code.size(stor4[arg1])
            call stor4[arg1].mem[var46003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var46003 + 4 len var46004 - 4]
            mem[var46005 len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            mem[128] = 0
            mem[96] = 0x8da5cb5b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0)
            call var50001.mem[var50003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var50003 + 4 len var50004 - 4]
            mem[var50005] = ext_call.return_data[0]
            require ext_call.success
            mem[96] = 0x574a627100000000000000000000000000000000000000000000000000000000
            require ext_code.size(0)
            call var54001.mem[var54003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var54003 + 4 len var54004 - 4]
            require ext_call.success
            mem[128] = 0
            require ext_code.size(stor4[arg1])
            call stor4[arg1].0x1e8e3684 with:
                 gas gas_remaining - 50 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = var56004
            s = var56005
            idx = var56006
            while idx + 1 < ext_call.return_data[0]:
                mem[mem[64] + 64] = 0
                require ext_code.size(stor4[arg1])
                call stor4[arg1].getFollower(uint256 rg1) with:
                     gas gas_remaining - 50 wei
                    args (idx + 1)
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x8da5cb5b with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x574a6271 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                mem[mem[64] + 32] = 0
                mem[mem[64]] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor4[arg1])
                call stor4[arg1].0x1e8e3684 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len -mem[64] + 96]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
    else:
        require ext_code.size(stor1[arg1])
        call stor1[arg1].startTime() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require block.timestamp - ext_call.return_data[0] >= uint32(stor5[arg1].field_224)
        mem[224] = 0
        require ext_code.size(stor2[arg1])
        call stor2[arg1].data() with:
             gas gas_remaining - 50 wei
        mem[96 len 128] = ext_call.return_data[0 len 128]
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].value() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor2[arg1])
        call stor2[arg1].setFinalValue(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        uint8(stor6[arg1].field_0) = 2
        emit 0x4cc6a2a6: 2
        require ext_code.size(stor1[arg1])
        call stor1[arg1].setEndTime(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args block.timestamp
        require ext_call.success
        require ext_code.size(0x24475dc0650b88686972b6fb5d8fd7e124bbc458)
        delegate 0x24475dc0650b88686972b6fb5d8fd7e124bbc458.0x3ef5e445 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0], ext_call.return_data[0]
        require delegate.return_code
        require ext_code.size(stor1[arg1])
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            call stor1[arg1].buyer() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor1[arg1])
            call stor1[arg1].seller() with:
                 gas gas_remaining - 50 wei
        else:
            call stor1[arg1].seller() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            require ext_code.size(stor1[arg1])
            call stor1[arg1].buyer() with:
                 gas gas_remaining - 50 wei
        require ext_call.success
        mem[132] = address(ext_call.return_data[0])
        mem[164] = delegate.return_data[0]
        require ext_code.size(stor1[arg1])
        call stor1[arg1].transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), delegate.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor4[arg1])
        call stor4[arg1].mem[var43003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var43003 + 4 len var43004 - 4]
        mem[var43005] = ext_call.return_data[0]
        require ext_call.success
        if var45006 < 0x1e8e368400000000000000000000000000000000000000000000000000000000:
            mem[160] = 0
            mem[96] = 0x15a8510c00000000000000000000000000000000000000000000000000000000
            mem[100] = var47003
            require ext_code.size(stor4[arg1])
            call stor4[arg1].mem[var49003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var49003 + 4 len var49004 - 4]
            mem[var49005 len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            mem[128] = 0
            mem[96] = 0x8da5cb5b00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0)
            call var53001.mem[var53003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var53003 + 4 len var53004 - 4]
            mem[var53005] = ext_call.return_data[0]
            require ext_call.success
            mem[96] = 0x574a627100000000000000000000000000000000000000000000000000000000
            require ext_code.size(0)
            call var57001.mem[var57003 len 4] with:
                 gas gas_remaining - 50 wei
                args mem[var57003 + 4 len var57004 - 4]
            require ext_call.success
            mem[128] = 0
            require ext_code.size(stor4[arg1])
            call stor4[arg1].0x1e8e3684 with:
                 gas gas_remaining - 50 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = var59004
            s = var59005
            idx = var59006
            while idx + 1 < ext_call.return_data[0]:
                mem[mem[64] + 64] = 0
                require ext_code.size(stor4[arg1])
                call stor4[arg1].getFollower(uint256 rg1) with:
                     gas gas_remaining - 50 wei
                    args (idx + 1)
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x8da5cb5b with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x574a6271 with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                mem[mem[64] + 32] = 0
                mem[mem[64]] = 0x1e8e368400000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor4[arg1])
                call stor4[arg1].0x1e8e3684 with:
                     gas gas_remaining - 50 wei
                    args mem[mem[64] + 4 len -mem[64] + 96]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}
