contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_b9e4e7e2(?) {
    require msg.sender == stor5
    stor0 = arg1
    stor1 = arg2
    stor2 = arg3
    stor3 = arg4
    stor4 = arg5
}

function sub_0ea901d2(?) {
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return block.timestamp, ext_call.return_data[0]
}

function sub_34f3405c(?) {
    require ext_code.size(0x66a9f1e53173de33bec727ef76afa84956ae1b25)
    call 0x66a9f1e53173de33bec727ef76afa84956ae1b25.0xbb17fa9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
    call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function sub_8ada2360(?) {
    mem[96] = stor0
    if not stor0:
        mem[(32 * stor0) + 128] = stor0
        mem[(64 * stor0) + 160] = stor0
    else:
        mem[128 len 32 * stor0] = code.data[6953 len 32 * stor0]
        mem[(32 * stor0) + 128] = stor0
        mem[(32 * stor0) + 160 len 32 * stor0] = code.data[6953 len 32 * stor0]
        mem[(64 * stor0) + 160] = stor0
        mem[(64 * stor0) + 192 len 32 * stor0] = code.data[6953 len 32 * stor0]
    s = 0
    idx = stor1
    while idx <= stor2:
        require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
        call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.upgradesOwned(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, idx
        mem[(98 * stor0) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require s < mem[96]
        require s < mem[(32 * stor0) + 128]
        require s < mem[(64 * stor0) + 160]
        mem[(64 * stor0) + (32 * s) + 192] = uint64(ext_call.return_data[64])
        mem[(32 * s) + (32 * stor0) + 160] = uint64(ext_call.return_data[32])
        mem[(32 * s) + 128] = uint64(ext_call.return_data[0])
        s = s + 1
        idx = idx + 1
        continue 
    s = stor2 + -stor1 + 1
    idx = stor3
    while idx <= stor4:
        require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
        call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.upgradesOwned(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, idx
        mem[(98 * stor0) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require s < mem[96]
        require s < mem[(32 * stor0) + 128]
        require s < mem[(64 * stor0) + 160]
        mem[(64 * stor0) + (32 * s) + 192] = uint64(ext_call.return_data[64])
        mem[(32 * s) + (32 * stor0) + 160] = uint64(ext_call.return_data[32])
        mem[(32 * s) + 128] = uint64(ext_call.return_data[0])
        s = s + 1
        idx = idx + 1
        continue 
    mem[(98 * stor0) + 192] = 96
    mem[(98 * stor0) + 288] = mem[96]
    mem[(98 * stor0) + 320 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(98 * stor0) + 224] = (32 * mem[96]) + 128
    mem[(32 * mem[96]) + (98 * stor0) + 320] = mem[(32 * stor0) + 128]
    mem[(32 * mem[96]) + (98 * stor0) + 352 len floor32(mem[(32 * stor0) + 128])] = mem[(32 * stor0) + 160 len floor32(mem[(32 * stor0) + 128])]
    mem[(98 * stor0) + 256] = (32 * mem[(32 * stor0) + 128]) + (32 * mem[96]) + 160
    mem[(32 * mem[(32 * stor0) + 128]) + (32 * mem[96]) + (98 * stor0) + 352] = mem[(64 * stor0) + 160]
    mem[(32 * mem[(32 * stor0) + 128]) + (32 * mem[96]) + (98 * stor0) + 384 len floor32(mem[(64 * stor0) + 160])] = mem[(64 * stor0) + 192 len floor32(mem[(64 * stor0) + 160])]
    return Array(len=mem[96], data=mem[(98 * stor0) + 320 len (32 * mem[(64 * stor0) + 160]) + (32 * mem[(32 * stor0) + 128]) + (32 * mem[96]) + 64]), 
           (32 * mem[96]) + 128,
           (32 * mem[(32 * stor0) + 128]) + (32 * mem[96]) + 160
}

function sub_0a30542d(?) {
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x1caaa487 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x25d32f5a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xcd677daa with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x76563560 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x240f07c4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xda4fa0d8 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x60e8c11f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x1c2d6998 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args 0xe97b5fd7056d38c85c5f6924461f7055588a53
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xb94afc50 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xb94afc50 with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xb94afc50 with:
         gas gas_remaining wei
        args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xb94afc50 with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0],
           4294967296 * ext_call.return_data[0],
           4294967296 * ext_call.return_data[0],
           Mask(224, 0, ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           4294967296 * ext_call.return_data[0],
           4294967296 * ext_call.return_data[0],
           4294967296 * ext_call.return_data[0],
           Mask(224, 0, ext_call.return_data[0])
}

function sub_4dcab6fb(?) {
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xe0ef84b9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x158993fd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[0]
    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x6ede9ca8 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - 1
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    s = 0
    s = 0
    s = 0
    idx = ext_call.return_data[0]
    s = mem[160]
    s = 0
    while idx <= ext_call.return_data[0] - 1:
        require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
        call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x6ede9ca8 with:
             gas gas_remaining wei
            args msg.sender, idx
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 96
            mem[132] = idx
            require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
            call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x2928f883 with:
                 gas gas_remaining wei
                args msg.sender, idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                    call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xb5648fa8 with:
                         gas gas_remaining wei
                        args idx
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        mem[100] = idx
                        require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                        call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x1b7ab031 with:
                             gas gas_remaining wei
                            args idx
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require Mask(224, 0, ext_call.return_data[0])
                            s = ext_call.return_data[0]
                            s = ext_call.return_data[32]
                            s = ext_call.return_data[0]
                            idx = idx + 1
                            s = ext_call.return_data[64]
                            s = s + Mask(224, 0, Mask(224, 0, ext_call.return_data[0] * Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])) / Mask(224, 0, ext_call.return_data[0]))
                            continue 
                else:
                    if Mask(80, 0, ext_call.return_data[0]):
                        require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                        call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xb5648fa8 with:
                             gas gas_remaining wei
                            args idx
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            mem[100] = idx
                            require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                            call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x1b7ab031 with:
                                 gas gas_remaining wei
                                args idx
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require Mask(224, 0, ext_call.return_data[0])
                                s = ext_call.return_data[0]
                                s = ext_call.return_data[32]
                                s = ext_call.return_data[0]
                                idx = idx + 1
                                s = ext_call.return_data[64]
                                s = s + Mask(224, 0, Mask(224, 0, ext_call.return_data[0] * Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])) / Mask(224, 0, ext_call.return_data[0]))
                                continue 
                    else:
                        if Mask(80, 0, ext_call.return_data[32]):
                            require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                            call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xb5648fa8 with:
                                 gas gas_remaining wei
                                args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                mem[100] = idx
                                require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                                call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x1b7ab031 with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require Mask(224, 0, ext_call.return_data[0])
                                    s = ext_call.return_data[0]
                                    s = ext_call.return_data[32]
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    s = ext_call.return_data[64]
                                    s = s + Mask(224, 0, Mask(224, 0, ext_call.return_data[0] * Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])) / Mask(224, 0, ext_call.return_data[0]))
                                    continue 
                        else:
                            require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                            call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0xb5648fa8 with:
                                 gas gas_remaining wei
                                args idx
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                mem[100] = idx
                                require ext_code.size(0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b)
                                call 0x98278eb74b388efd4d6fc81dd3f95b642ce53f2b.0x1b7ab031 with:
                                     gas gas_remaining wei
                                    args idx
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require Mask(224, 0, ext_call.return_data[0])
                                    s = ext_call.return_data[0]
                                    s = ext_call.return_data[32]
                                    s = ext_call.return_data[0]
                                    idx = idx + 1
                                    s = ext_call.return_data[64]
                                    s = s + Mask(224, 0, Mask(224, 0, ext_call.return_data[0] * Mask(80, 0, ext_call.return_data[32] + ext_call.return_data[0])) / Mask(224, 0, ext_call.return_data[0]))
                                    continue 
    return s, ext_call.return_data[0], ext_call.return_data[0] - 1
}

function sub_b737e899(?) {
    require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
    call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
        mem[64] = (131 * ext_call.return_data[0]) + 224
        idx = 0
        while idx < ext_call.return_data[0]:
            require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
            call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x60e8c11f with:
                 gas gas_remaining wei
                args (idx + 1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
            call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x25d32f5a with:
                 gas gas_remaining wei
                args (idx + 1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * ext_call.return_data[0]) + 128]
            mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
            call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xe3d39e66 with:
                 gas gas_remaining wei
                args (idx + 1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(64 * ext_call.return_data[0]) + 160]
            mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[0]
            require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
            call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.'vV5`' with:
                 gas gas_remaining wei
                args (idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = idx + 1
            require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
            call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xcd677daa with:
                 gas gas_remaining wei
                args (idx + 1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(98 * ext_call.return_data[0]) + 192]
            mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = 2 * Mask(223, 0, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _120 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
        _207 = mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
        mem[mem[64] + 64] = (32 * _207) + (32 * mem[96]) + 192
        mem[(32 * _207) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
        _229 = mem[(64 * ext_call.return_data[0]) + 160]
        mem[(32 * _207) + (32 * mem[96]) + mem[64] + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
        mem[mem[64] + 96] = (32 * _229) + (32 * _207) + (32 * mem[96]) + 224
        mem[(32 * _229) + (32 * _207) + (32 * _120) + mem[64] + 224] = mem[(98 * ext_call.return_data[0]) + 192]
        _245 = mem[(98 * ext_call.return_data[0]) + 192]
        mem[(32 * _229) + (32 * _207) + (32 * _120) + mem[64] + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
        return 128, mem[mem[64] + 32 len (32 * _245) + (32 * _229) + (32 * _207) + (32 * _120) + 224]
    mem[128 len 32 * ext_call.return_data[0]] = code.data[6953 len 32 * ext_call.return_data[0]]
    mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    mem[(32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = code.data[6953 len 32 * ext_call.return_data[0]]
    mem[(64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[(64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = code.data[6953 len 32 * ext_call.return_data[0]]
    mem[(98 * ext_call.return_data[0]) + 192] = ext_call.return_data[0]
    mem[64] = (131 * ext_call.return_data[0]) + 224
    mem[(98 * ext_call.return_data[0]) + 224 len 32 * ext_call.return_data[0]] = code.data[6953 len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
        call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x60e8c11f with:
             gas gas_remaining wei
            args (idx + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        mem[mem[64] + 4] = idx + 1
        require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
        call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0x25d32f5a with:
             gas gas_remaining wei
            args (idx + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ext_call.return_data[0]) + 128]
        mem[(32 * ext_call.return_data[0]) + (32 * idx) + 160] = ext_call.return_data[0]
        mem[mem[64] + 4] = idx + 1
        require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
        call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xe3d39e66 with:
             gas gas_remaining wei
            args (idx + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(64 * ext_call.return_data[0]) + 160]
        mem[(64 * ext_call.return_data[0]) + (32 * idx) + 192] = ext_call.return_data[0]
        require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
        call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.'vV5`' with:
             gas gas_remaining wei
            args (idx + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = idx + 1
        require ext_code.size(0xe97b5fd7056d38c85c5f6924461f7055588a53)
        call 0x00e97b5fd7056d38c85c5f6924461f7055588a53.0xcd677daa with:
             gas gas_remaining wei
            args (idx + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(98 * ext_call.return_data[0]) + 192]
        mem[(98 * ext_call.return_data[0]) + (32 * idx) + 224] = 2 * Mask(223, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * ext_call.return_data[0]) + 128]
    _210 = mem[(32 * ext_call.return_data[0]) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * ext_call.return_data[0]) + 128])] = mem[(32 * ext_call.return_data[0]) + 160 len floor32(mem[(32 * ext_call.return_data[0]) + 128])]
    mem[mem[64] + 64] = (32 * _210) + (32 * mem[96]) + 192
    mem[(32 * _210) + (32 * mem[96]) + mem[64] + 192] = mem[(64 * ext_call.return_data[0]) + 160]
    _232 = mem[(64 * ext_call.return_data[0]) + 160]
    mem[(32 * _210) + (32 * mem[96]) + mem[64] + 224 len floor32(mem[(64 * ext_call.return_data[0]) + 160])] = mem[(64 * ext_call.return_data[0]) + 192 len floor32(mem[(64 * ext_call.return_data[0]) + 160])]
    mem[mem[64] + 96] = (32 * _232) + (32 * _210) + (32 * mem[96]) + 224
    mem[(32 * _232) + (32 * _210) + (32 * mem[96]) + mem[64] + 224] = mem[(98 * ext_call.return_data[0]) + 192]
    _248 = mem[(98 * ext_call.return_data[0]) + 192]
    mem[(32 * _232) + (32 * _210) + (32 * mem[96]) + mem[64] + 256 len floor32(mem[(98 * ext_call.return_data[0]) + 192])] = mem[(98 * ext_call.return_data[0]) + 224 len floor32(mem[(98 * ext_call.return_data[0]) + 192])]
    return 128, 
           (32 * mem[96]) + 160,
           (32 * _210) + (32 * mem[96]) + 192,
           (32 * _232) + (32 * _210) + (32 * mem[96]) + 224,
           mem[mem[64] + 128 len (32 * _248) + (32 * _232) + (32 * _210) + (32 * mem[96]) + 128]
}



}
