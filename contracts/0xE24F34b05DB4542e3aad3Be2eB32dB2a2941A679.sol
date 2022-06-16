contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f02f452a(?) {
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
        _82 = mem[_4 + 96]
        s = 0
        idx = 0
        t = 0
        while Mask(80, 0, idx) < _82:
            require Mask(80, 0, idx) < mem[_4 + 96]
            if not arg3:
                _101 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _101) >> 48
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _101) >> 48
            else:
                _91 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _91) >> 48
                require ext_code.size(arg1)
                call arg1.0x9b3e2787 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _91) >> 48
                mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != arg3:
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                require Mask(80, 0, idx) < mem[_4 + 96]
                _156 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _156) >> 48
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _156) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, idx) < mem[_4 + 96]
            require Mask(80, 0, t) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, t)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or Mask(64, 160, ext_call.return_data[0]) >> 64 or Mask(96, 32, ext_call.return_data[0]) >> 32
            s = ext_call.return_data[0]
            idx = idx + 1
            t = t + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[2836 len 32 * _6]
        _83 = mem[_4 + 96]
        s = 0
        idx = 0
        t = 0
        while Mask(80, 0, idx) < _83:
            require Mask(80, 0, idx) < mem[_4 + 96]
            if not arg3:
                _107 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _107) >> 48
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _107) >> 48
            else:
                _95 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _95) >> 48
                require ext_code.size(arg1)
                call arg1.0x9b3e2787 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _95) >> 48
                mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != arg3:
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                require Mask(80, 0, idx) < mem[_4 + 96]
                _161 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(32, 48, _161) >> 48
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(32, 48, _161) >> 48
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, idx) < mem[_4 + 96]
            require Mask(80, 0, t) < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * Mask(80, 0, t)) + 128] = Mask(80, 0, mem[(32 * Mask(80, 0, idx)) + _4 + 128]) << 160 or Mask(64, 160, ext_call.return_data[0]) >> 64 or Mask(96, 32, ext_call.return_data[0]) >> 32
            s = ext_call.return_data[0]
            idx = idx + 1
            t = t + 1
            continue 
    if Mask(80, 0, t) == mem[ceil32(return_data.size) + 96]:
        mem[ceil32(return_data.size) + (32 * _6) + 128] = 32
        mem[ceil32(return_data.size) + (32 * _6) + 160] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return 32, mem[ceil32(return_data.size) + (32 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[ceil32(return_data.size) + (32 * _6) + 128] = Mask(80, 0, t)
    if Mask(80, 0, t):
        mem[ceil32(return_data.size) + (32 * _6) + 160 len 32 * Mask(80, 0, t)] = code.data[2836 len 32 * Mask(80, 0, t)]
    s = 0
    while Mask(80, 0, s) < Mask(80, 0, t):
        require Mask(80, 0, s) < mem[ceil32(return_data.size) + 96]
        require Mask(80, 0, s) < Mask(80, 0, t)
        mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, s)) + 160] = mem[(32 * Mask(80, 0, s)) + ceil32(return_data.size) + 130 len 30]
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, t)) + 224 len Mask(75, 5, t)] = mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(75, 5, t)]
    return Array(len=t << 176, data=mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(75, 5, t)], mem[ceil32(return_data.size) + (32 * _6) + (32 * Mask(80, 0, t)) + Mask(75, 5, t) + 224 len (32 * Mask(80, 0, t)) - Mask(75, 5, t)]), 
}

function sub_77ad10cb(?) {
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
        _82 = mem[_4 + 96]
        s = 0
        idx = 0
        t = 0
        while Mask(80, 0, idx) < _82:
            require Mask(80, 0, idx) < mem[_4 + 96]
            if not arg3:
                _101 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _101) >> 32
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _101) >> 32
            else:
                _91 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _91) >> 32
                require ext_code.size(arg1)
                call arg1.0x9b3e2787 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _91) >> 32
                mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != arg3:
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                require Mask(80, 0, idx) < mem[_4 + 96]
                _156 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _156) >> 32
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _156) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, idx) < mem[_4 + 96]
            require t % 1099511627776 < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * t % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or Mask(64, 160, ext_call.return_data[0]) >> 64 or Mask(96, 32, ext_call.return_data[0]) >> 32
            s = ext_call.return_data[0]
            idx = idx + 1
            t = t + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[2836 len 32 * _6]
        _83 = mem[_4 + 96]
        s = 0
        idx = 0
        t = 0
        while Mask(80, 0, idx) < _83:
            require Mask(80, 0, idx) < mem[_4 + 96]
            if not arg3:
                _107 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _107) >> 32
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _107) >> 32
            else:
                _95 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _95) >> 32
                require ext_code.size(arg1)
                call arg1.0x9b3e2787 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _95) >> 32
                mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != arg3:
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                require Mask(80, 0, idx) < mem[_4 + 96]
                _161 = mem[(32 * Mask(80, 0, idx)) + _4 + 128]
                mem[ceil32(return_data.size) + (32 * _6) + 132] = arg2
                mem[ceil32(return_data.size) + (32 * _6) + 164] = Mask(8, 32, _161) >> 32
                require ext_code.size(arg1)
                call arg1.0xd1203ba5 with:
                     gas gas_remaining wei
                    args address(arg2), Mask(8, 32, _161) >> 32
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require Mask(80, 0, idx) < mem[_4 + 96]
            require t % 1099511627776 < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * t % 1099511627776) + 128] = mem[(32 * Mask(80, 0, idx)) + _4 + 128] % 1099511627776 << 160 or Mask(64, 160, ext_call.return_data[0]) >> 64 or Mask(96, 32, ext_call.return_data[0]) >> 32
            s = ext_call.return_data[0]
            idx = idx + 1
            t = t + 1
            continue 
    if t % 1099511627776 == mem[ceil32(return_data.size) + 96]:
        mem[ceil32(return_data.size) + (32 * _6) + 128] = 32
        mem[ceil32(return_data.size) + (32 * _6) + 160] = mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * _6) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return 32, mem[ceil32(return_data.size) + (32 * _6) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[ceil32(return_data.size) + (32 * _6) + 128] = t % 1099511627776
    if t % 1099511627776:
        mem[ceil32(return_data.size) + (32 * _6) + 160 len 32 * t % 1099511627776] = code.data[2836 len 32 * t % 1099511627776]
    s = 0
    while s % 1099511627776 < t % 1099511627776:
        require s % 1099511627776 < mem[ceil32(return_data.size) + 96]
        require s % 1099511627776 < t % 1099511627776
        mem[ceil32(return_data.size) + (32 * _6) + (32 * s % 1099511627776) + 160] = mem[(32 * s % 1099511627776) + ceil32(return_data.size) + 135 len 25]
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + (32 * _6) + (32 * t % 1099511627776) + 224 len Mask(35, 5, t)] = mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(35, 5, t)]
    return Array(len=t << 216, data=mem[ceil32(return_data.size) + (32 * _6) + 160 len Mask(35, 5, t)], mem[ceil32(return_data.size) + (32 * _6) + (32 * t % 1099511627776) + Mask(35, 5, t) + 224 len (32 * t % 1099511627776) - Mask(35, 5, t)]), 
}



}
