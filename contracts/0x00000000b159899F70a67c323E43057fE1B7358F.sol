contract main {




// =====================  Runtime code  =====================


mapping of uint8 sub_7e28fac0;
mapping of uint8 sub_0361b39c;
array of uint256 stor3735936684;
array of uint256 stor3735936685;

function sub_0361b39c(?) {
    require calldata.size - 4 >= 32
    return sub_0361b39c[arg1]
}

function sub_7e28fac0(?) {
    require calldata.size - 4 >= 32
    return sub_7e28fac0[arg1]
}

function _fallback() payable {
  stop
}

function sub_5c81f70e(?) {
    require calldata.size - 4 >= 32
    storDEAD[arg1] = 1
}

function approveMiner(address arg1) {
    require calldata.size - 4 >= 32
    require 13 == sub_0361b39c[msg.sender]
    sub_7e28fac0[address(arg1)] = 1
}

function sub_23882c6c(?) {
    require calldata.size - 4 >= 32
    if 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9 != msg.sender:
        require msg.sender == 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75
    sub_0361b39c[address(arg1)] = 13
}

function sub_d8348122(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        mem[96] = 0x766fb159899f70a67c323e43057fe1b7358f3318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766fb159899f70a67c323e43057fe1b7358f3318585733ff60005260176009f3
        idx = idx + 1
        continue 
}

function verifyBalance(address arg1) {
    require calldata.size - 4 >= 32
    require 13 == sub_0361b39c[msg.sender]
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_07030ef8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 13 == sub_0361b39c[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require 13 == sub_0361b39c[msg.sender]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        sub_7e28fac0[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
}

function sub_0e104e37(?) {
    require calldata.size - 4 >= 32
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            return (idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            return (idx - 3735936685)
    return 0
}

function sub_372d94c5(?) {
    require calldata.size - 4 >= 64
    require arg2 > 0
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            require 0 < arg2
            require arg2 > 0
            s = idx + 1
            while s < idx + arg2 + 1:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            require 0 < arg2
            require idx + arg2 > idx
            s = idx
            while s < idx + arg2:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936685)
    require 0 < arg2
    require arg2 + 3735936685 > 3735936685
    idx = 3735936685
    while idx < arg2 + 3735936685:
        stor[idx] = 1
        idx = idx + 1
        continue 
    return arg2
}

function sub_18569ac6(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 1
    require 13 == sub_0361b39c[msg.sender]
    idx = arg1
    s = 0
    s = 0
    while idx < arg1 + 65536:
        if 0 >= idx:
            s = 1
            t = 0
            while idx >= s:
                s = 256 * s
                t = t + 1
                continue 
            if idx <= 0:
                _78 = mem[64]
                mem[64] = mem[64] + 32
                mem[_78] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                if ext_code.size(sha3(mem[_78 len t + 23])) <= 0:
                    idx = idx + 1
                    s = sha3(mem[_78 len t + 23])
                    s = ext_code.size(sha3(mem[_78 len t + 23]))
                    continue 
            else:
                if idx >= 128:
                    _82 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_82] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                    if ext_code.size(sha3(mem[_82 len t + 23])) <= 0:
                        idx = idx + 1
                        s = sha3(mem[_82 len t + 23])
                        s = ext_code.size(sha3(mem[_82 len t + 23]))
                        continue 
                else:
                    _84 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_84] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                    if ext_code.size(sha3(mem[_84 len t + 23])) <= 0:
                        idx = idx + 1
                        s = sha3(mem[_84 len t + 23])
                        s = ext_code.size(sha3(mem[_84 len t + 23]))
                        continue 
        else:
            if idx < 128:
                if idx <= 0:
                    _42 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_42] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                    if ext_code.size(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) <= 0:
                        idx = idx + 1
                        s = sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)
                        s = ext_code.size(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72))
                        continue 
                else:
                    if idx >= 128:
                        _44 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_44] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                        if ext_code.size(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) <= 0:
                            idx = idx + 1
                            s = sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)
                            s = ext_code.size(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72))
                            continue 
                    else:
                        _46 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_46] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                        if ext_code.size(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) <= 0:
                            idx = idx + 1
                            s = sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)
                            s = ext_code.size(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72))
                            continue 
            else:
                s = 1
                t = 0
                while idx >= s:
                    s = 256 * s
                    t = t + 1
                    continue 
                if idx <= 0:
                    _80 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_80] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                    if ext_code.size(sha3(mem[_80 len t + 23])) <= 0:
                        idx = idx + 1
                        s = sha3(mem[_80 len t + 23])
                        s = ext_code.size(sha3(mem[_80 len t + 23]))
                        continue 
                else:
                    if idx >= 128:
                        _86 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_86] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                        if ext_code.size(sha3(mem[_86 len t + 23])) <= 0:
                            idx = idx + 1
                            s = sha3(mem[_86 len t + 23])
                            s = ext_code.size(sha3(mem[_86 len t + 23]))
                            continue 
                    else:
                        _88 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_88] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                        if ext_code.size(sha3(mem[_88 len t + 23])) <= 0:
                            idx = idx + 1
                            s = sha3(mem[_88 len t + 23])
                            s = ext_code.size(sha3(mem[_88 len t + 23]))
                            continue 
        return idx
    return 0
}

function sub_63c91549(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if Mask(1, 3, arg2) <= 0:
        mem[0] = msg.sender
        mem[32] = 1
        require 13 == sub_0361b39c[msg.sender]
        if not Mask(1, 5, arg2):
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1864 = mem[(32 * idx + 1) + 96]
                        _1865 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1864) >> 3) + 4:
                            mem[s + _1865] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1865 + (Mask(24, 8, _1864) >> 3) + 36
                        if _1864 % 16 == 1:
                            delegate (Mask(160, 96, _1864) >> 96).mem[_1865 len 4] with:
                                 gas Mask(32, 64, _1864) >> 64 wei
                                args mem[_1865 + 4 len Mask(24, 8, _1864) >> 3]
                            mem[_1865] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1864) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1864) >> 96.mem[_1865 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1864) >> 64 wei
                                args mem[_1865 + 4 len Mask(24, 8, _1864) >> 3]
                            mem[_1865] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1864) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1865
                        idx = (uint32(_1864) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5352 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5352] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5352 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5624 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5624] = return_data.size
                                            mem[_5624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5433 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5433] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5433 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5736 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5736] = return_data.size
                                                mem[_5736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5435 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5435] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5435 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5737 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5737] = return_data.size
                                                mem[_5737 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3992 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3992] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4184 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4184] = return_data.size
                                                mem[_4184 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4073 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4073] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4250 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4250] = return_data.size
                                                    mem[_4250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4075 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4075] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4251 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4251] = return_data.size
                                                    mem[_4251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5354 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5354] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5354 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5627 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5627] = return_data.size
                                                mem[_5627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5438 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5438] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5438 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5738 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5738] = return_data.size
                                                    mem[_5738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5440 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5440] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5440 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5739 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5739] = return_data.size
                                                    mem[_5739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6376 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6376] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6376 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6600 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6600] = return_data.size
                                            mem[_6600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6441 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6441] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6441 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6696 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6696] = return_data.size
                                                mem[_6696 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6443 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6443] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6443 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6697 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6697] = return_data.size
                                                mem[_6697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5740 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5740] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5912 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5912] = return_data.size
                                                mem[_5912 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5833 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5833] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5962 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5962] = return_data.size
                                                    mem[_5962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5835 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5835] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5963 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5963] = return_data.size
                                                    mem[_5963 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6378 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6378] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6378 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6603 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6603] = return_data.size
                                                mem[_6603 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6446 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6446] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6446 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6698 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6698] = return_data.size
                                                    mem[_6698 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6448 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6448] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6448 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6699 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6699] = return_data.size
                                                    mem[_6699 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1866 = mem[(32 * idx + 1) + 96]
                        _1867 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1866) >> 3) + 4:
                            mem[s + _1867] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1867 + (Mask(24, 8, _1866) >> 3) + 36
                        if _1866 % 16 == 1:
                            delegate (Mask(160, 96, _1866) >> 96).mem[_1867 len 4] with:
                                 gas Mask(32, 64, _1866) >> 64 wei
                                args mem[_1867 + 4 len Mask(24, 8, _1866) >> 3]
                            mem[_1867] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1866) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1866) >> 96.mem[_1867 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1866) >> 64 wei
                                args mem[_1867 + 4 len Mask(24, 8, _1866) >> 3]
                            mem[_1867] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1866) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1867
                        idx = (uint32(_1866) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5357 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5357] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5357 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5631 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5631] = return_data.size
                                            mem[_5631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5445 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5445] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5445 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5742 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5742] = return_data.size
                                                mem[_5742 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5447 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5447] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5447 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5743 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5743] = return_data.size
                                                mem[_5743 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3997 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3997] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4188 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4188] = return_data.size
                                                mem[_4188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4080 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4080] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4256 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4256] = return_data.size
                                                    mem[_4256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4082 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4082] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4257 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4257] = return_data.size
                                                    mem[_4257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5359 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5359] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5359 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5634 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5634] = return_data.size
                                                mem[_5634 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5450 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5450] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5450 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5744 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5744] = return_data.size
                                                    mem[_5744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5452 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5452] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5452 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5745 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5745] = return_data.size
                                                    mem[_5745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6380 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6380] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6380 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6606 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6606] = return_data.size
                                            mem[_6606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6451 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6451] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6451 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6700 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6700] = return_data.size
                                                mem[_6700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6453 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6453] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6453 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6701 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6701] = return_data.size
                                                mem[_6701 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5746 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5746] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5915 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5915] = return_data.size
                                                mem[_5915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5838 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5838] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5966 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5966] = return_data.size
                                                    mem[_5966 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5840 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5840] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5967 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5967] = return_data.size
                                                    mem[_5967 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6382 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6382] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6382 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6609 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6609] = return_data.size
                                                mem[_6609 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6456 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6456] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6456 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6702 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6702] = return_data.size
                                                    mem[_6702 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6458 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6458] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6458 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6703 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6703] = return_data.size
                                                    mem[_6703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require sub_7e28fac0[block.coinbase]
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1868 = mem[(32 * idx + 1) + 96]
                        _1869 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1868) >> 3) + 4:
                            mem[s + _1869] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1869 + (Mask(24, 8, _1868) >> 3) + 36
                        if _1868 % 16 == 1:
                            delegate (Mask(160, 96, _1868) >> 96).mem[_1869 len 4] with:
                                 gas Mask(32, 64, _1868) >> 64 wei
                                args mem[_1869 + 4 len Mask(24, 8, _1868) >> 3]
                            mem[_1869] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1868) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1868) >> 96.mem[_1869 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1868) >> 64 wei
                                args mem[_1869 + 4 len Mask(24, 8, _1868) >> 3]
                            mem[_1869] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1868) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1869
                        idx = (uint32(_1868) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5362 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5362] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5362 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5638 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5638] = return_data.size
                                            mem[_5638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5457 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5457] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5457 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5748 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5748] = return_data.size
                                                mem[_5748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5459 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5459] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5459 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5749 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5749] = return_data.size
                                                mem[_5749 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4002 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4002] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4192 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4192] = return_data.size
                                                mem[_4192 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4087 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4087] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4262 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4262] = return_data.size
                                                    mem[_4262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4089 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4089] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4263 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4263] = return_data.size
                                                    mem[_4263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5364 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5364] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5364 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5641 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5641] = return_data.size
                                                mem[_5641 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5462 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5462] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5462 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5750 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5750] = return_data.size
                                                    mem[_5750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5464 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5464] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5464 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5751 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5751] = return_data.size
                                                    mem[_5751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6384 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6384] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6384 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6612 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6612] = return_data.size
                                            mem[_6612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6461 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6461] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6461 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6704 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6704] = return_data.size
                                                mem[_6704 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6463 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6463] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6463 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6705 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6705] = return_data.size
                                                mem[_6705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5752 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5752] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5918 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5918] = return_data.size
                                                mem[_5918 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5843 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5843] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5970 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5970] = return_data.size
                                                    mem[_5970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5845 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5845] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5971 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5971] = return_data.size
                                                    mem[_5971 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6386 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6386] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6386 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6615 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6615] = return_data.size
                                                mem[_6615 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6466 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6466] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6466 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6706 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6706] = return_data.size
                                                    mem[_6706 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6468 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6468] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6468 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6707 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6707] = return_data.size
                                                    mem[_6707 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1870 = mem[(32 * idx + 1) + 96]
                        _1871 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1870) >> 3) + 4:
                            mem[s + _1871] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1871 + (Mask(24, 8, _1870) >> 3) + 36
                        if _1870 % 16 == 1:
                            delegate (Mask(160, 96, _1870) >> 96).mem[_1871 len 4] with:
                                 gas Mask(32, 64, _1870) >> 64 wei
                                args mem[_1871 + 4 len Mask(24, 8, _1870) >> 3]
                            mem[_1871] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1870) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1870) >> 96.mem[_1871 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1870) >> 64 wei
                                args mem[_1871 + 4 len Mask(24, 8, _1870) >> 3]
                            mem[_1871] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1870) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1871
                        idx = (uint32(_1870) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5367 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5367] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5367 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5645 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5645] = return_data.size
                                            mem[_5645 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5469 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5469] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5469 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5754 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5754] = return_data.size
                                                mem[_5754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5471 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5471] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5471 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5755 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5755] = return_data.size
                                                mem[_5755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4007 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4007] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4196 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4196] = return_data.size
                                                mem[_4196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4094 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4094] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4268 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4268] = return_data.size
                                                    mem[_4268 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4096 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4096] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4269 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4269] = return_data.size
                                                    mem[_4269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5369 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5369] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5369 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5648 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5648] = return_data.size
                                                mem[_5648 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5474 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5474] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5474 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5756 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5756] = return_data.size
                                                    mem[_5756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5476 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5476] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5476 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5757 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5757] = return_data.size
                                                    mem[_5757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6388 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6388] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6388 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6618 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6618] = return_data.size
                                            mem[_6618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6471 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6471] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6471 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6708 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6708] = return_data.size
                                                mem[_6708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6473 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6473] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6473 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6709 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6709] = return_data.size
                                                mem[_6709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5758 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5758] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5921 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5921] = return_data.size
                                                mem[_5921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5848 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5848] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5974 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5974] = return_data.size
                                                    mem[_5974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5850 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5850] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5975 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5975] = return_data.size
                                                    mem[_5975 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6390 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6390] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6390 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6621 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6621] = return_data.size
                                                mem[_6621 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6476 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6476] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6476 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6710 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6710] = return_data.size
                                                    mem[_6710 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6478 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6478] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6478 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6711 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6711] = return_data.size
                                                    mem[_6711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
        else:
            require block.gas_limit < 2250 * 3600
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1872 = mem[(32 * idx + 1) + 96]
                        _1873 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1872) >> 3) + 4:
                            mem[s + _1873] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1873 + (Mask(24, 8, _1872) >> 3) + 36
                        if _1872 % 16 == 1:
                            delegate (Mask(160, 96, _1872) >> 96).mem[_1873 len 4] with:
                                 gas Mask(32, 64, _1872) >> 64 wei
                                args mem[_1873 + 4 len Mask(24, 8, _1872) >> 3]
                            mem[_1873] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1872) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1872) >> 96.mem[_1873 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1872) >> 64 wei
                                args mem[_1873 + 4 len Mask(24, 8, _1872) >> 3]
                            mem[_1873] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1872) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1873
                        idx = (uint32(_1872) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5372 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5372] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5372 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5652 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5652] = return_data.size
                                            mem[_5652 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5481 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5481] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5481 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5760 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5760] = return_data.size
                                                mem[_5760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5483 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5483] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5483 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5761 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5761] = return_data.size
                                                mem[_5761 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4012 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4012] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4200 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4200] = return_data.size
                                                mem[_4200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4101 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4101] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4274 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4274] = return_data.size
                                                    mem[_4274 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4103 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4103] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4275 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4275] = return_data.size
                                                    mem[_4275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5374 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5374] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5374 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5655 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5655] = return_data.size
                                                mem[_5655 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5486 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5486] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5486 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5762 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5762] = return_data.size
                                                    mem[_5762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5488 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5488] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5488 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5763 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5763] = return_data.size
                                                    mem[_5763 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6392 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6392] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6392 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6624 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6624] = return_data.size
                                            mem[_6624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6481 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6481] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6481 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6712 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6712] = return_data.size
                                                mem[_6712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6483 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6483] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6483 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6713 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6713] = return_data.size
                                                mem[_6713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5764 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5764] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5924 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5924] = return_data.size
                                                mem[_5924 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5853 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5853] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5978 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5978] = return_data.size
                                                    mem[_5978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5855 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5855] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5979 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5979] = return_data.size
                                                    mem[_5979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6394 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6394] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6394 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6627 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6627] = return_data.size
                                                mem[_6627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6486 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6486] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6486 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6714 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6714] = return_data.size
                                                    mem[_6714 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6488 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6488] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6488 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6715 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6715] = return_data.size
                                                    mem[_6715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1874 = mem[(32 * idx + 1) + 96]
                        _1875 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1874) >> 3) + 4:
                            mem[s + _1875] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1875 + (Mask(24, 8, _1874) >> 3) + 36
                        if _1874 % 16 == 1:
                            delegate (Mask(160, 96, _1874) >> 96).mem[_1875 len 4] with:
                                 gas Mask(32, 64, _1874) >> 64 wei
                                args mem[_1875 + 4 len Mask(24, 8, _1874) >> 3]
                            mem[_1875] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1874) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1874) >> 96.mem[_1875 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1874) >> 64 wei
                                args mem[_1875 + 4 len Mask(24, 8, _1874) >> 3]
                            mem[_1875] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1874) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1875
                        idx = (uint32(_1874) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5377 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5377] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5377 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5659 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5659] = return_data.size
                                            mem[_5659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5493 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5493] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5493 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5766 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5766] = return_data.size
                                                mem[_5766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5495 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5495] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5495 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5767 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5767] = return_data.size
                                                mem[_5767 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4017 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4017] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4204 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4204] = return_data.size
                                                mem[_4204 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4108 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4108] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4280 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4280] = return_data.size
                                                    mem[_4280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4110 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4110] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4281 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4281] = return_data.size
                                                    mem[_4281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5379 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5379] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5379 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5662 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5662] = return_data.size
                                                mem[_5662 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5498 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5498] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5498 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5768 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5768] = return_data.size
                                                    mem[_5768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5500 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5500] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5500 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5769 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5769] = return_data.size
                                                    mem[_5769 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6396 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6396] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6396 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6630] = return_data.size
                                            mem[_6630 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6491 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6491] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6491 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6716 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6716] = return_data.size
                                                mem[_6716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6493 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6493] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6493 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6717 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6717] = return_data.size
                                                mem[_6717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5770 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5770] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5927 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5927] = return_data.size
                                                mem[_5927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5858 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5858] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5982 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5982] = return_data.size
                                                    mem[_5982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5860 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5860] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5983 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5983] = return_data.size
                                                    mem[_5983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6398 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6398] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6398 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6633 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6633] = return_data.size
                                                mem[_6633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6496 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6496] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6496 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6718 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6718] = return_data.size
                                                    mem[_6718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6498 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6498] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6498 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6719 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6719] = return_data.size
                                                    mem[_6719 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require sub_7e28fac0[block.coinbase]
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1876 = mem[(32 * idx + 1) + 96]
                        _1877 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1876) >> 3) + 4:
                            mem[s + _1877] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1877 + (Mask(24, 8, _1876) >> 3) + 36
                        if _1876 % 16 == 1:
                            delegate (Mask(160, 96, _1876) >> 96).mem[_1877 len 4] with:
                                 gas Mask(32, 64, _1876) >> 64 wei
                                args mem[_1877 + 4 len Mask(24, 8, _1876) >> 3]
                            mem[_1877] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1876) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1876) >> 96.mem[_1877 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1876) >> 64 wei
                                args mem[_1877 + 4 len Mask(24, 8, _1876) >> 3]
                            mem[_1877] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1876) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1877
                        idx = (uint32(_1876) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5382 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5382] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5382 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5666 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5666] = return_data.size
                                            mem[_5666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5505 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5505] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5505 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5772 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5772] = return_data.size
                                                mem[_5772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5507 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5507] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5507 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5773 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5773] = return_data.size
                                                mem[_5773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4022 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4022] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4208 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4208] = return_data.size
                                                mem[_4208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4115 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4115] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4286 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4286] = return_data.size
                                                    mem[_4286 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4117 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4117] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4287 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4287] = return_data.size
                                                    mem[_4287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5384 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5384] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5384 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5669 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5669] = return_data.size
                                                mem[_5669 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5510 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5510] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5510 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5774 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5774] = return_data.size
                                                    mem[_5774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5512 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5512] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5512 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5775 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5775] = return_data.size
                                                    mem[_5775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6400 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6400] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6400 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6636 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6636] = return_data.size
                                            mem[_6636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6501 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6501] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6501 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6720 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6720] = return_data.size
                                                mem[_6720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6503 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6503] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6503 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6721 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6721] = return_data.size
                                                mem[_6721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5776 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5776] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5930 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5930] = return_data.size
                                                mem[_5930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5863 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5863] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5986 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5986] = return_data.size
                                                    mem[_5986 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5865 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5865] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5987 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5987] = return_data.size
                                                    mem[_5987 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6402 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6402] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6402 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6639 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6639] = return_data.size
                                                mem[_6639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6506 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6506] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6506 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6722 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6722] = return_data.size
                                                    mem[_6722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6508 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6508] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6508 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6723 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6723] = return_data.size
                                                    mem[_6723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= 0
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1878 = mem[(32 * idx + 1) + 96]
                        _1879 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1878) >> 3) + 4:
                            mem[s + _1879] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1879 + (Mask(24, 8, _1878) >> 3) + 36
                        if _1878 % 16 == 1:
                            delegate (Mask(160, 96, _1878) >> 96).mem[_1879 len 4] with:
                                 gas Mask(32, 64, _1878) >> 64 wei
                                args mem[_1879 + 4 len Mask(24, 8, _1878) >> 3]
                            mem[_1879] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1878) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1878) >> 96.mem[_1879 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1878) >> 64 wei
                                args mem[_1879 + 4 len Mask(24, 8, _1878) >> 3]
                            mem[_1879] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1878) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1879
                        idx = (uint32(_1878) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5387 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5387] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5387 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5673 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5673] = return_data.size
                                            mem[_5673 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5517 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5517] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5517 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5778 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5778] = return_data.size
                                                mem[_5778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5519 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5519] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5519 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5779 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5779] = return_data.size
                                                mem[_5779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4027 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4027] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4212 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4212] = return_data.size
                                                mem[_4212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4122 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4122] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4292 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4292] = return_data.size
                                                    mem[_4292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4124 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4124] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4293 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4293] = return_data.size
                                                    mem[_4293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5389 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5389] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5389 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5676 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5676] = return_data.size
                                                mem[_5676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5522 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5522] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5522 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5780 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5780] = return_data.size
                                                    mem[_5780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5524 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5524] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5524 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5781 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5781] = return_data.size
                                                    mem[_5781 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6404 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6404] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6404 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6642 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6642] = return_data.size
                                            mem[_6642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6511 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6511] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6511 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6724 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6724] = return_data.size
                                                mem[_6724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6513 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6513] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6513 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6725 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6725] = return_data.size
                                                mem[_6725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5782 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5782] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5933 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5933] = return_data.size
                                                mem[_5933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5868 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5868] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5990 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5990] = return_data.size
                                                    mem[_5990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5870 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5870] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5991 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5991] = return_data.size
                                                    mem[_5991 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6406 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6406] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6406 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6645 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6645] = return_data.size
                                                mem[_6645 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6516 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6516] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6516 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6726 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6726] = return_data.size
                                                    mem[_6726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6518 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6518] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6518 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6727 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6727] = return_data.size
                                                    mem[_6727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
    else:
        require storDEAD[uint16(arg2)]
        mem[0] = msg.sender
        mem[32] = 1
        require 13 == sub_0361b39c[msg.sender]
        if not Mask(1, 5, arg2):
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1880 = mem[(32 * idx + 1) + 96]
                        _1881 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1880) >> 3) + 4:
                            mem[s + _1881] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1881 + (Mask(24, 8, _1880) >> 3) + 36
                        if _1880 % 16 == 1:
                            delegate (Mask(160, 96, _1880) >> 96).mem[_1881 len 4] with:
                                 gas Mask(32, 64, _1880) >> 64 wei
                                args mem[_1881 + 4 len Mask(24, 8, _1880) >> 3]
                            mem[_1881] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1880) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1880) >> 96.mem[_1881 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1880) >> 64 wei
                                args mem[_1881 + 4 len Mask(24, 8, _1880) >> 3]
                            mem[_1881] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1880) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1881
                        idx = (uint32(_1880) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5392 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5392] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5392 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5680 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5680] = return_data.size
                                            mem[_5680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5529 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5529] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5529 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5784 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5784] = return_data.size
                                                mem[_5784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5531 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5531] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5531 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5785 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5785] = return_data.size
                                                mem[_5785 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4032 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4032] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4216 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4216] = return_data.size
                                                mem[_4216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4129 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4129] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4298 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4298] = return_data.size
                                                    mem[_4298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4131 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4131] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4299 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4299] = return_data.size
                                                    mem[_4299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5394 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5394] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5394 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5683 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5683] = return_data.size
                                                mem[_5683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5534 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5534] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5534 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5786 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5786] = return_data.size
                                                    mem[_5786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5536 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5536] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5536 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5787 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5787] = return_data.size
                                                    mem[_5787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6408 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6408] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6408 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6648 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6648] = return_data.size
                                            mem[_6648 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6521 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6521] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6521 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6728 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6728] = return_data.size
                                                mem[_6728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6523 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6523] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6523 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6729 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6729] = return_data.size
                                                mem[_6729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5788 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5788] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5936 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5936] = return_data.size
                                                mem[_5936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5873 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5873] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5994 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5994] = return_data.size
                                                    mem[_5994 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5875 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5875] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5995 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5995] = return_data.size
                                                    mem[_5995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6410 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6410] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6410 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6651 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6651] = return_data.size
                                                mem[_6651 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6526 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6526] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6526 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6730 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6730] = return_data.size
                                                    mem[_6730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6528 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6528] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6528 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6731 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6731] = return_data.size
                                                    mem[_6731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint16(arg2) + 3735936684
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1882 = mem[(32 * idx + 1) + 96]
                        _1883 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1882) >> 3) + 4:
                            mem[s + _1883] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1883 + (Mask(24, 8, _1882) >> 3) + 36
                        if _1882 % 16 == 1:
                            delegate (Mask(160, 96, _1882) >> 96).mem[_1883 len 4] with:
                                 gas Mask(32, 64, _1882) >> 64 wei
                                args mem[_1883 + 4 len Mask(24, 8, _1882) >> 3]
                            mem[_1883] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1882) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1882) >> 96.mem[_1883 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1882) >> 64 wei
                                args mem[_1883 + 4 len Mask(24, 8, _1882) >> 3]
                            mem[_1883] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1882) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1883
                        idx = (uint32(_1882) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5397 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5397] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5397 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5687 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5687] = return_data.size
                                            mem[_5687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5541 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5541] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5541 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5790 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5790] = return_data.size
                                                mem[_5790 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5543 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5543] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5543 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5791 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5791] = return_data.size
                                                mem[_5791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4037 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4037] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4220 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4220] = return_data.size
                                                mem[_4220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4136 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4136] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4304 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4304] = return_data.size
                                                    mem[_4304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4138 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4138] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4305 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4305] = return_data.size
                                                    mem[_4305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5399 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5399] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5399 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5690 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5690] = return_data.size
                                                mem[_5690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5546 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5546] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5546 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5792 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5792] = return_data.size
                                                    mem[_5792 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5548 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5548] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5548 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5793 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5793] = return_data.size
                                                    mem[_5793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6412 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6412] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6412 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6654 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6654] = return_data.size
                                            mem[_6654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6531 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6531] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6531 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6732 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6732] = return_data.size
                                                mem[_6732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6533 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6533] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6533 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6733 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6733] = return_data.size
                                                mem[_6733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5794 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5794] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5939 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5939] = return_data.size
                                                mem[_5939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5878 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5878] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5998 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5998] = return_data.size
                                                    mem[_5998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5880 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5880] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5999 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5999] = return_data.size
                                                    mem[_5999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6414 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6414] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6414 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6657 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6657] = return_data.size
                                                mem[_6657 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6536 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6536] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6536 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6734 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6734] = return_data.size
                                                    mem[_6734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6538 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6538] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6538 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6735 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6735] = return_data.size
                                                    mem[_6735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require sub_7e28fac0[block.coinbase]
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1884 = mem[(32 * idx + 1) + 96]
                        _1885 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1884) >> 3) + 4:
                            mem[s + _1885] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1885 + (Mask(24, 8, _1884) >> 3) + 36
                        if _1884 % 16 == 1:
                            delegate (Mask(160, 96, _1884) >> 96).mem[_1885 len 4] with:
                                 gas Mask(32, 64, _1884) >> 64 wei
                                args mem[_1885 + 4 len Mask(24, 8, _1884) >> 3]
                            mem[_1885] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1884) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1884) >> 96.mem[_1885 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1884) >> 64 wei
                                args mem[_1885 + 4 len Mask(24, 8, _1884) >> 3]
                            mem[_1885] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1884) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1885
                        idx = (uint32(_1884) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5402 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5402] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5402 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5694 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5694] = return_data.size
                                            mem[_5694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5553 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5553] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5553 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5796 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5796] = return_data.size
                                                mem[_5796 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5555 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5555] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5555 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5797 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5797] = return_data.size
                                                mem[_5797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4042 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4042] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4224 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4224] = return_data.size
                                                mem[_4224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4143 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4143] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4310 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4310] = return_data.size
                                                    mem[_4310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4145 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4145] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4311 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4311] = return_data.size
                                                    mem[_4311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5404 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5404] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5404 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5697 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5697] = return_data.size
                                                mem[_5697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5558 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5558] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5558 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5798 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5798] = return_data.size
                                                    mem[_5798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5560 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5560] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5560 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5799 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5799] = return_data.size
                                                    mem[_5799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6416 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6416] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6416 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6660 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6660] = return_data.size
                                            mem[_6660 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6541 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6541] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6541 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6736 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6736] = return_data.size
                                                mem[_6736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6543 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6543] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6543 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6737 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6737] = return_data.size
                                                mem[_6737 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5800 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5800] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5942 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5942] = return_data.size
                                                mem[_5942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5883 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5883] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6002 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6002] = return_data.size
                                                    mem[_6002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5885 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5885] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6003 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6003] = return_data.size
                                                    mem[_6003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6418 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6418] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6418 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6663 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6663] = return_data.size
                                                mem[_6663 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6546 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6546] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6546 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6738 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6738] = return_data.size
                                                    mem[_6738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6548 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6548] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6548 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6739 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6739] = return_data.size
                                                    mem[_6739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint16(arg2) + 3735936684
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1886 = mem[(32 * idx + 1) + 96]
                        _1887 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1886) >> 3) + 4:
                            mem[s + _1887] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1887 + (Mask(24, 8, _1886) >> 3) + 36
                        if _1886 % 16 == 1:
                            delegate (Mask(160, 96, _1886) >> 96).mem[_1887 len 4] with:
                                 gas Mask(32, 64, _1886) >> 64 wei
                                args mem[_1887 + 4 len Mask(24, 8, _1886) >> 3]
                            mem[_1887] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1886) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1886) >> 96.mem[_1887 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1886) >> 64 wei
                                args mem[_1887 + 4 len Mask(24, 8, _1886) >> 3]
                            mem[_1887] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1886) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1887
                        idx = (uint32(_1886) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5407 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5407] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5407 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5701 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5701] = return_data.size
                                            mem[_5701 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5565 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5565] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5565 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5802 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5802] = return_data.size
                                                mem[_5802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5567 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5567] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5567 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5803 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5803] = return_data.size
                                                mem[_5803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4047 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4047] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4228 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4228] = return_data.size
                                                mem[_4228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4150 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4150] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4316 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4316] = return_data.size
                                                    mem[_4316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4152 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4152] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4317 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4317] = return_data.size
                                                    mem[_4317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5409 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5409] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5409 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5704 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5704] = return_data.size
                                                mem[_5704 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5570 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5570] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5570 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5804 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5804] = return_data.size
                                                    mem[_5804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5572 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5572] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5572 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5805 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5805] = return_data.size
                                                    mem[_5805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6420 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6420] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6420 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6666 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6666] = return_data.size
                                            mem[_6666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6551 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6551] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6551 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6740 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6740] = return_data.size
                                                mem[_6740 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6553 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6553] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6553 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6741 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6741] = return_data.size
                                                mem[_6741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5806 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5806] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5945 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5945] = return_data.size
                                                mem[_5945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5888 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5888] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6006 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6006] = return_data.size
                                                    mem[_6006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5890 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5890] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6007 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6007] = return_data.size
                                                    mem[_6007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6422 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6422] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6422 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6669 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6669] = return_data.size
                                                mem[_6669 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6556 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6556] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6556 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6742 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6742] = return_data.size
                                                    mem[_6742 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6558 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6558] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6558 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6743 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6743] = return_data.size
                                                    mem[_6743 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
        else:
            require block.gas_limit < 2250 * 3600
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1888 = mem[(32 * idx + 1) + 96]
                        _1889 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1888) >> 3) + 4:
                            mem[s + _1889] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1889 + (Mask(24, 8, _1888) >> 3) + 36
                        if _1888 % 16 == 1:
                            delegate (Mask(160, 96, _1888) >> 96).mem[_1889 len 4] with:
                                 gas Mask(32, 64, _1888) >> 64 wei
                                args mem[_1889 + 4 len Mask(24, 8, _1888) >> 3]
                            mem[_1889] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1888) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1888) >> 96.mem[_1889 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1888) >> 64 wei
                                args mem[_1889 + 4 len Mask(24, 8, _1888) >> 3]
                            mem[_1889] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1888) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1889
                        idx = (uint32(_1888) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5412 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5412] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5412 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5708 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5708] = return_data.size
                                            mem[_5708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5577 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5577] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5577 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5808 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5808] = return_data.size
                                                mem[_5808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5579 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5579] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5579 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5809 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5809] = return_data.size
                                                mem[_5809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4052 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4052] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4232 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4232] = return_data.size
                                                mem[_4232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4157 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4157] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4322 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4322] = return_data.size
                                                    mem[_4322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4159 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4159] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4323 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4323] = return_data.size
                                                    mem[_4323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5414 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5414] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5414 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5711 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5711] = return_data.size
                                                mem[_5711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5582 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5582] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5582 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5810 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5810] = return_data.size
                                                    mem[_5810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5584 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5584] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5584 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5811 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5811] = return_data.size
                                                    mem[_5811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6424 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6424] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6424 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6672 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6672] = return_data.size
                                            mem[_6672 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6561 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6561] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6561 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6744 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6744] = return_data.size
                                                mem[_6744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6563 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6563] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6563 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6745 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6745] = return_data.size
                                                mem[_6745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5812 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5812] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5948 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5948] = return_data.size
                                                mem[_5948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5893 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5893] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6010 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6010] = return_data.size
                                                    mem[_6010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5895 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5895] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6011 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6011] = return_data.size
                                                    mem[_6011 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6426 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6426] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6426 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6675 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6675] = return_data.size
                                                mem[_6675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6566 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6566] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6566 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6746 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6746] = return_data.size
                                                    mem[_6746 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6568 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6568] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6568 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6747 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6747] = return_data.size
                                                    mem[_6747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint16(arg2) + 3735936684
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1890 = mem[(32 * idx + 1) + 96]
                        _1891 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1890) >> 3) + 4:
                            mem[s + _1891] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1891 + (Mask(24, 8, _1890) >> 3) + 36
                        if _1890 % 16 == 1:
                            delegate (Mask(160, 96, _1890) >> 96).mem[_1891 len 4] with:
                                 gas Mask(32, 64, _1890) >> 64 wei
                                args mem[_1891 + 4 len Mask(24, 8, _1890) >> 3]
                            mem[_1891] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1890) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1890) >> 96.mem[_1891 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1890) >> 64 wei
                                args mem[_1891 + 4 len Mask(24, 8, _1890) >> 3]
                            mem[_1891] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1890) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1891
                        idx = (uint32(_1890) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5417 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5417] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5417 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5715 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5715] = return_data.size
                                            mem[_5715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5589 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5589] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5589 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5814 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5814] = return_data.size
                                                mem[_5814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5591 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5591] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5591 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5815 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5815] = return_data.size
                                                mem[_5815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4057 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4057] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4236 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4236] = return_data.size
                                                mem[_4236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4164 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4164] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4328 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4328] = return_data.size
                                                    mem[_4328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4166 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4166] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4329 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4329] = return_data.size
                                                    mem[_4329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5419 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5419] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5419 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5718 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5718] = return_data.size
                                                mem[_5718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5594 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5594] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5594 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5816 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5816] = return_data.size
                                                    mem[_5816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5596 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5596] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5596 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5817 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5817] = return_data.size
                                                    mem[_5817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6428 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6428] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6428 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6678 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6678] = return_data.size
                                            mem[_6678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6571 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6571] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6571 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6748 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6748] = return_data.size
                                                mem[_6748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6573 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6573] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6573 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6749 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6749] = return_data.size
                                                mem[_6749 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5818 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5818] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5951 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5951] = return_data.size
                                                mem[_5951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5898 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5898] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6014 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6014] = return_data.size
                                                    mem[_6014 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5900 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5900] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6015 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6015] = return_data.size
                                                    mem[_6015 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6430 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6430] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6430 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6681 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6681] = return_data.size
                                                mem[_6681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6576 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6576] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6576 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6750 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6750] = return_data.size
                                                    mem[_6750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6578 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6578] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6578 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6751 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6751] = return_data.size
                                                    mem[_6751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require sub_7e28fac0[block.coinbase]
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _1892 = mem[(32 * idx + 1) + 96]
                        _1893 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1892) >> 3) + 4:
                            mem[s + _1893] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1893 + (Mask(24, 8, _1892) >> 3) + 36
                        if _1892 % 16 == 1:
                            delegate (Mask(160, 96, _1892) >> 96).mem[_1893 len 4] with:
                                 gas Mask(32, 64, _1892) >> 64 wei
                                args mem[_1893 + 4 len Mask(24, 8, _1892) >> 3]
                            mem[_1893] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1892) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1892) >> 96.mem[_1893 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1892) >> 64 wei
                                args mem[_1893 + 4 len Mask(24, 8, _1892) >> 3]
                            mem[_1893] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1892) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1893
                        idx = (uint32(_1892) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5422 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5422] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5422 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5722 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5722] = return_data.size
                                            mem[_5722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5601 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5601] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5601 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5820 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5820] = return_data.size
                                                mem[_5820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5603 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5603] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5603 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5821 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5821] = return_data.size
                                                mem[_5821 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4062 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4062] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4240 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4240] = return_data.size
                                                mem[_4240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4171 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4171] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4334 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4334] = return_data.size
                                                    mem[_4334 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4173 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4173] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4335 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4335] = return_data.size
                                                    mem[_4335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5424 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5424] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5424 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5725 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5725] = return_data.size
                                                mem[_5725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5606 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5606] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5606 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5822 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5822] = return_data.size
                                                    mem[_5822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5608 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5608] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5608 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5823 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5823] = return_data.size
                                                    mem[_5823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6432 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6432] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6432 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6684] = return_data.size
                                            mem[_6684 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6581 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6581] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6581 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6752 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6752] = return_data.size
                                                mem[_6752 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6583 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6583] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6583 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6753 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6753] = return_data.size
                                                mem[_6753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5824 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5824] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5954 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5954] = return_data.size
                                                mem[_5954 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5903 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5903] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6018 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6018] = return_data.size
                                                    mem[_6018 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5905 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5905] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6019 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6019] = return_data.size
                                                    mem[_6019 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6434 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6434] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6434 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6687 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6687] = return_data.size
                                                mem[_6687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6586 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6586] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6586 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6754 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6754] = return_data.size
                                                    mem[_6754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6588 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6588] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6588 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6755 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6755] = return_data.size
                                                    mem[_6755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= uint16(arg2) + 3735936684
                else:
                    mem[(32 * arg1.length) + 132] = this.address
                    require ext_code.size(Mask(160, 96, arg2) >> 96)
                    staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx < arg1.length:
                        _1894 = mem[(32 * idx + 1) + 96]
                        _1895 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (Mask(24, 8, _1894) >> 3) + 4:
                            mem[s + _1895] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1895 + (Mask(24, 8, _1894) >> 3) + 36
                        if _1894 % 16 == 1:
                            delegate (Mask(160, 96, _1894) >> 96).mem[_1895 len 4] with:
                                 gas Mask(32, 64, _1894) >> 64 wei
                                args mem[_1895 + 4 len Mask(24, 8, _1894) >> 3]
                            mem[_1895] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 4, _1894) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == delegate.return_data[0])
                        else:
                            call Mask(160, 96, _1894) >> 96.mem[_1895 len 4] with:
                               value mem[(32 * idx + 2) + 112 len 16] wei
                                 gas Mask(32, 64, _1894) >> 64 wei
                                args mem[_1895 + 4 len Mask(24, 8, _1894) >> 3]
                            mem[_1895] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 4, _1894) > 0:
                                require not !(mem[(32 * idx + 2) + 96 len 16] == ext_call.return_data[0])
                        mem[64] = _1895
                        idx = (uint32(_1894) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) <= 0:
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5427 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5427] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_5427 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5729 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5729] = return_data.size
                                            mem[_5729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5613 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5613] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5613 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5826 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5826] = return_data.size
                                                mem[_5826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5615 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5615] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5615 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5827 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5827] = return_data.size
                                                mem[_5827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _4067 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4067] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4244 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4244] = return_data.size
                                                mem[_4244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4178 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4178] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4340 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4340] = return_data.size
                                                    mem[_4340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4180 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4180] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4341 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4341] = return_data.size
                                                    mem[_4341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5429 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5429] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_5429 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5732 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5732] = return_data.size
                                                mem[_5732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5618 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5618] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5618 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5828 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5828] = return_data.size
                                                    mem[_5828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5620 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5620] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_5620 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5829 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5829] = return_data.size
                                                    mem[_5829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        idx = 1
                        while idx <= uint16(arg2):
                            stor[uint16(arg2) + -idx + 3735936685] = 0
                            idx = idx + 1
                            continue 
                        if Mask(1, 4, arg2) > 0:
                            idx = uint16(arg2)
                            while idx < 2 * uint16(arg2):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6436 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6436] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                        call address(sha3(mem[_6436 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6690 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6690] = return_data.size
                                            mem[_6690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6591 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6591] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6591 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6756 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6756] = return_data.size
                                                mem[_6756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6593 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6593] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6593 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6757 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6757] = return_data.size
                                                mem[_6757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5830 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5830] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5957 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5957] = return_data.size
                                                mem[_5957 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5908 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5908] = (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca707f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6022 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6022] = return_data.size
                                                    mem[_6022 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5910 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5910] = (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff4ea676608f5983cdc1bcfa801e48ca7100000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6023 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6023] = return_data.size
                                                    mem[_6023 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6438 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6438] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                            call address(sha3(mem[_6438 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6693 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6693] = return_data.size
                                                mem[_6693 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6596 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6596] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6596 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6758 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6758] = return_data.size
                                                    mem[_6758 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6598 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6598] = (idx << 72) + (t + 214 << 248) + 0x9400000000b159899f70a67c323e43057fe1b7358f00000000000000000000
                                                call address(sha3(mem[_6598 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6759 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6759] = return_data.size
                                                    mem[_6759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    if arg2 > 0:
                        require eth.balance(this.address) <= eth.balance(this.address)
                    if Mask(1, 1, arg2) > 0:
                        require ext_code.size(Mask(160, 96, arg2) >> 96)
                        staticcall Mask(160, 96, arg2) >> 96.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= ext_call.return_data[0]
}



}
