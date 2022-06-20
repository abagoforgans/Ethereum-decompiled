contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1557a7ae(?) {
    return uint128(10^9 * arg1 / 10^9)
}

function sub_15b4e78c(?) {
    if arg3 < arg1:
        return arg4
    if arg3 > arg2:
        return arg5
    require arg2 - arg1
    return uint128(10^9 * uint128(arg4 - ((arg4 * arg3) - (arg5 * arg3) - (arg4 * arg1) + (arg5 * arg1) / arg2 - arg1)) / 10^9)
}

function sub_4befa613(?) {
    require ext_code.size(arg1)
    call arg1.0xed469d78 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.items(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if uint32(block.timestamp) < ext_call.return_data[28 len 4]:
        require ext_code.size(arg1)
        call arg1.0x9b3e2787 with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return uint32(ext_call.return_data[0]), 
               ext_call.return_data[32 len 96],
               ext_call.return_data[96] << 176,
               ext_call.return_data[64] << 176,
               address(ext_call.return_data[0])
    if uint32(block.timestamp) > ext_call.return_data[60 len 4]:
        require ext_code.size(arg1)
        call arg1.0x9b3e2787 with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return uint32(ext_call.return_data[0]), 
               ext_call.return_data[32 len 96],
               ext_call.return_data[96] << 176,
               ext_call.return_data[96] << 176,
               address(ext_call.return_data[0])
    require ext_call.return_data[60 len 4] - ext_call.return_data[28 len 4]
    require ext_code.size(arg1)
    call arg1.0x9b3e2787 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint32(ext_call.return_data[0]), 
           ext_call.return_data[32 len 96],
           ext_call.return_data[96] << 176,
           10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9 << 128,
           address(ext_call.return_data[0])
}

function sub_53602ad9(?) {
    require ext_code.size(arg1)
    call arg1.0xed469d78 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.items(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if uint32(block.timestamp) < ext_call.return_data[28 len 4]:
        require ext_code.size(arg1)
        call arg1.0x9b3e2787 with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               uint32(ext_call.return_data[0]),
               uint32(ext_call.return_data[32]),
               uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9),
               uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9),
               uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
    if uint32(block.timestamp) > ext_call.return_data[60 len 4]:
        require ext_code.size(arg1)
        call arg1.0x9b3e2787 with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               uint32(ext_call.return_data[0]),
               uint32(ext_call.return_data[32]),
               uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9),
               uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9),
               uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
    require ext_call.return_data[60 len 4] - ext_call.return_data[28 len 4]
    require ext_code.size(arg1)
    call arg1.0x9b3e2787 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           uint32(ext_call.return_data[0]),
           uint32(ext_call.return_data[32]),
           uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9),
           uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9),
           uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
}

function sub_2ddcec69(?) {
    mem[96] = 0x4932488c00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(arg2)
    call arg2.getPackedCollection(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _6 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = 2 * mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[64] = ceil32(return_data.size) + (64 * _6) + 128
    if not uint255(_6):
        _134 = mem[_4 + 96]
        s = 0
        idx = 0
        while Mask(80, 0, idx) < _134:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _141 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _141) >> 32
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _141) >> 32
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _141) >> 32
                mem[ceil32(return_data.size) + (64 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _141) >> 32
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(8, 32, _141) >> 32
                    mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _141) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _141) >> 32
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _141) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _141) >> 32
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _141) >> 32
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _141) >> 32
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, (2 * idx) + 1) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, (2 * idx) + 1)) + 128] = address(ext_call.return_data[0])
            s = Mask(8, 32, _141) >> 32
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 64 * _6] = code.data[4973 len 64 * _6]
        _135 = mem[_4 + 96]
        s = 0
        idx = 0
        while Mask(80, 0, idx) < _135:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _145 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _145) >> 32
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _145) >> 32
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _145) >> 32
                mem[ceil32(return_data.size) + (64 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _145) >> 32
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(8, 32, _145) >> 32
                    mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _145) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _145) >> 32
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _145) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _145) >> 32
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(8, 32, _145) >> 32
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _145) >> 32
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, (2 * idx) + 1) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, (2 * idx) + 1)) + 128] = address(ext_call.return_data[0])
            s = Mask(8, 32, _145) >> 32
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (64 * _6) + 128] = 32
    mem[ceil32(return_data.size) + (64 * _6) + 160] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + (64 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[ceil32(return_data.size) + (64 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_4f973bf5(?) {
    mem[96] = 0x4932488c00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(arg2)
    call arg2.getPackedCollection(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _6 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = 2 * mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[64] = ceil32(return_data.size) + (64 * _6) + 128
    if not uint255(_6):
        _134 = mem[_4 + 96]
        s = 0
        idx = 0
        while Mask(80, 0, idx) < _134:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _141 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _141) >> 48
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _141) >> 48
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _141) >> 48
                mem[ceil32(return_data.size) + (64 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _141) >> 48
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(32, 48, _141) >> 48
                    mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _141) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _141) >> 48
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _141) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _141) >> 48
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _141) >> 48
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _141) >> 48
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, (2 * idx) + 1) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, (2 * idx) + 1)) + 128] = address(ext_call.return_data[0])
            s = Mask(32, 48, _141) >> 48
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 64 * _6] = code.data[4973 len 64 * _6]
        _135 = mem[_4 + 96]
        s = 0
        idx = 0
        while Mask(80, 0, idx) < _135:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _145 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _145) >> 48
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _145) >> 48
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _145) >> 48
                mem[ceil32(return_data.size) + (64 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _145) >> 48
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(32, 48, _145) >> 48
                    mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _145) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _145) >> 48
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _145) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _145) >> 48
                        mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require 2 * Mask(79, 0, idx) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (64 * Mask(79, 0, idx)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            mem[ceil32(return_data.size) + (64 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (64 * _6) + 164] = Mask(32, 48, _145) >> 48
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _145) >> 48
            mem[ceil32(return_data.size) + (64 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, (2 * idx) + 1) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, (2 * idx) + 1)) + 128] = address(ext_call.return_data[0])
            s = Mask(32, 48, _145) >> 48
            idx = idx + 1
            continue 
    mem[ceil32(return_data.size) + (64 * _6) + 128] = 32
    mem[ceil32(return_data.size) + (64 * _6) + 160] = mem[ceil32(return_data.size) + 96]
    mem[ceil32(return_data.size) + (64 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[ceil32(return_data.size) + (64 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function sub_ef1e154b(?) {
    mem[96] = 0x4932488c00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(arg2)
    call arg2.getPackedCollection(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _6 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[64] = ceil32(return_data.size) + (32 * _6) + 128
    if not _6:
        _116 = mem[_4 + 96]
        s = 0
        idx = 0
        s = 0
        while Mask(80, 0, idx) < _116:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _123 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _123) >> 48
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _123) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != arg3:
                s = Mask(32, 48, _123) >> 48
                idx = idx + 1
                s = s
                continue 
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _123) >> 48
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _123) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _123) >> 48
                mem[ceil32(return_data.size) + (32 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _123) >> 48
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(32, 48, _123) >> 48
                    mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _123) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _123) >> 48
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _123) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _123) >> 48
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            s = Mask(32, 48, _123) >> 48
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[4973 len 32 * _6]
        _117 = mem[_4 + 96]
        s = 0
        idx = 0
        s = 0
        while Mask(80, 0, idx) < _117:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _127 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _127) >> 48
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _127) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != arg3:
                s = Mask(32, 48, _127) >> 48
                idx = idx + 1
                s = s
                continue 
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _127) >> 48
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(32, 48, _127) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _127) >> 48
                mem[ceil32(return_data.size) + (32 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _127) >> 48
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(32, 48, _127) >> 48
                    mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _127) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _127) >> 48
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _127) >> 48
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(32, 48, _127) >> 48
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * Mask(80, 0, s)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            s = Mask(32, 48, _127) >> 48
            idx = idx + 1
            s = s + 1
            continue 
    if Mask(80, 0, s) == mem[ceil32(return_data.size) + 96]:
        mem[ceil32(return_data.size) + (32 * _6) + 128] = 32
        mem[ceil32(return_data.size) + (32 * _6) + 160] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return 32, mem[ceil32(return_data.size) + (32 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[ceil32(return_data.size) + (32 * _6) + 128] = Mask(80, 0, s)
    if Mask(80, 0, s):
        mem[ceil32(return_data.size) + (32 * _6) + 160 len 32 * Mask(80, 0, s)] = code.data[4973 len 32 * Mask(80, 0, s)]
    t = 0
    while Mask(80, 0, t) < Mask(80, 0, s):
        require Mask(80, 0, t) < mem[ceil32(return_data.size) + 96]
        require Mask(80, 0, t) < Mask(80, 0, s)
        mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, t)) + 160] = mem[(32 * Mask(80, 0, t)) + ceil32(return_data.size) + 130 len 30]
        t = t + 1
        continue 
    mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, s)) + 224 len Mask(75, 5, s)] = mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(75, 5, s)]
    return Array(len=s << 176, data=mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(75, 5, s)], mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, s)) + Mask(75, 5, s) + 224 len (32 * Mask(80, 0, s)) - Mask(75, 5, s)]), 
}

function sub_67e3d31f(?) {
    mem[96] = 0x4932488c00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(arg2)
    call arg2.getPackedCollection(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    _6 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    mem[64] = ceil32(return_data.size) + (32 * _6) + 128
    if not _6:
        _116 = mem[_4 + 96]
        s = 0
        idx = 0
        s = 0
        while Mask(80, 0, idx) < _116:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _123 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _123) >> 32
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _123) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != arg3:
                s = Mask(8, 32, _123) >> 32
                idx = idx + 1
                s = s
                continue 
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _123) >> 32
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _123) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _123) >> 32
                mem[ceil32(return_data.size) + (32 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _123) >> 32
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(8, 32, _123) >> 32
                    mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _123) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _123) >> 32
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _123) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _123) >> 32
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            s = Mask(8, 32, _123) >> 32
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[4973 len 32 * _6]
        _117 = mem[_4 + 96]
        s = 0
        idx = 0
        s = 0
        while Mask(80, 0, idx) < _117:
            require Mask(80, 0, idx) < mem[_4 + 96]
            _127 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _127) >> 32
            require ext_code.size(arg1)
            call arg1.0x9b3e2787 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _127) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != arg3:
                s = Mask(8, 32, _127) >> 32
                idx = idx + 1
                s = s
                continue 
            mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
            mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _127) >> 32
            require ext_code.size(arg1)
            call arg1.0xed469d78 with:
                 gas gas_remaining wei
                args address(arg2), Mask(8, 32, _127) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require Mask(80, 0, idx) < mem[_4 + 96]
                require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160
            else:
                require ext_code.size(arg1)
                call arg1.items(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _127) >> 32
                mem[ceil32(return_data.size) + (32 * _6) + 128 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                if uint32(block.timestamp) < uint32(ext_call.return_data[0]):
                    mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                    mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _127) >> 32
                    require ext_code.size(arg1)
                    call arg1.0x9b3e2787 with:
                         gas gas_remaining wei
                        args address(arg2), Mask(8, 32, _127) >> 32
                    mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require Mask(80, 0, idx) < mem[_4 + 96]
                    require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                    mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9)
                else:
                    if uint32(block.timestamp) > uint32(ext_call.return_data[32]):
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _127) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _127) >> 32
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9)
                    else:
                        require uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                        mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _127) >> 32
                        require ext_code.size(arg1)
                        call arg1.0x9b3e2787 with:
                             gas gas_remaining wei
                            args address(arg2), Mask(8, 32, _127) >> 32
                        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require Mask(80, 0, idx) < mem[_4 + 96]
                        require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
                        mem[ceil32(return_data.size) + (32 * s % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or uint32(ext_call.return_data[0]) << 128 or uint32(ext_call.return_data[32]) << 96 or uint32(Mask(80, 0, ext_call.return_data[64]) / 10^9) << 64 or uint32(Mask(80, 0, ext_call.return_data[96]) / 10^9) << 32 or uint32(uint128(10^9 * uint128(Mask(80, 0, ext_call.return_data[64]) - ((Mask(80, 0, ext_call.return_data[64]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[96]) * uint32(block.timestamp)) - (Mask(80, 0, ext_call.return_data[64]) * uint32(ext_call.return_data[0])) + (Mask(80, 0, ext_call.return_data[96]) * uint32(ext_call.return_data[0])) / uint32(ext_call.return_data[32]) - uint32(ext_call.return_data[0]))) / 10^9) / 10^9)
            s = Mask(8, 32, _127) >> 32
            idx = idx + 1
            s = s + 1
            continue 
    if s % 1099511627776 == mem[ceil32(return_data.size) + 96]:
        mem[ceil32(return_data.size) + (32 * _6) + 128] = 32
        mem[ceil32(return_data.size) + (32 * _6) + 160] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return 32, mem[ceil32(return_data.size) + (32 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[ceil32(return_data.size) + (32 * _6) + 128] = s % 1099511627776
    if s % 1099511627776:
        mem[ceil32(return_data.size) + (32 * _6) + 160 len 32 * s % 1099511627776] = code.data[4973 len 32 * s % 1099511627776]
    t = 0
    while t % 1099511627776 < s % 1099511627776:
        require t % 1099511627776 < mem[ceil32(return_data.size) + 96]
        require t % 1099511627776 < s % 1099511627776
        mem[ceil32(return_data.size) + (32 * _6) + (32 * t % 1099511627776) + 160] = mem[(32 * t % 1099511627776) + ceil32(return_data.size) + 135 len 25]
        t = t + 1
        continue 
    mem[ceil32(return_data.size) + (32 * _6) + (32 * s % 1099511627776) + 224 len Mask(35, 5, s)] = mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(35, 5, s)]
    return Array(len=s << 216, data=mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(35, 5, s)], mem[ceil32(return_data.size) + (32 * _6) + (32 * s % 1099511627776) + Mask(35, 5, s) + 224 len (32 * s % 1099511627776) - Mask(35, 5, s)]), 
}



}
