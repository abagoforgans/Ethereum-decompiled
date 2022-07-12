contract main {




// =====================  Runtime code  =====================


#
#  - sub_bf33f986(?)
#
const sub_b00328e5(?) = eth.balance(this.address)


mapping of uint8 stor0;
mapping of uint8 stor1;
array of uint256 stor3735936684;
array of uint256 stor3735936685;

function sub_0361b39c(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_7e28fac0(?) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
  stop
}

function sub_5c81f70e(?) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    storDEAD[arg1] = 1
}

function approveMiner(address arg1) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    stor0[address(arg1)] = 1
}

function sub_23882c6c(?) {
    require calldata.size - 4 >= 32
    if 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9 != msg.sender:
        require msg.sender == 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75
    stor1[address(arg1)] = 1
}

function sub_d8348122(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        mem[96] = 0x766fc4105e2340df06bf6e9358de36a86c7f3318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766fc4105e2340df06bf6e9358de36a86c7f3318585733ff60005260176009f3
        idx = idx + 1
        continue 
}

function sub_07030ef8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require stor1[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor1[msg.sender]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[address(mem[(32 * idx) + 128])] = 1
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

function sub_0000009e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    _3 = mem[128]
    if Mask(1, 3, mem[128]) <= 0:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _867 = mem[(32 * idx + 1) + 96]
                    _868 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _867) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _868] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _868] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _868 + (Mask(16, 216, _867) >> 211) + 36
                    if address(_867) >= 255:
                        if Mask(4, 252, _867) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_867).mem[_868 len 4] with:
                                 gas Mask(24, 160, _867) >> 160 wei
                                args mem[_868 + 4 len Mask(16, 216, _867) >> 211]
                            mem[_868] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _867) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_867).mem[_868 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _867) >> 160 wei
                                args mem[_868 + 4 len Mask(16, 216, _867) >> 211]
                            mem[_868] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _867) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _867) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_867)) + 108 len 20].mem[_868 len 4] with:
                                 gas Mask(24, 160, _867) >> 160 wei
                                args mem[_868 + 4 len Mask(16, 216, _867) >> 211]
                            mem[_868] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _867) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_867)) + 108 len 20].mem[_868 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _867) >> 160 wei
                                args mem[_868 + 4 len Mask(16, 216, _867) >> 211]
                            mem[_868] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _867) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _868
                    idx = (Mask(16, 216, _867) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _978 = mem[128]
                        require 0 < mem[96]
                        _1010 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _978) >> 48) + (Mask(8, 40, _1010) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2434 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2434] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2434 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2546 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2546] = return_data.size
                                        mem[_2546 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2467 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2467] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2467 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2594 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2594] = return_data.size
                                            mem[_2594 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2469 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2469] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2469 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2595 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2595] = return_data.size
                                            mem[_2595 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1858 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1858] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1914 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1914] = return_data.size
                                            mem[_1914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1875 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1875] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1940 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1940] = return_data.size
                                                mem[_1940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1877 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1877] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1941 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1941] = return_data.size
                                                mem[_1941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2436 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2436] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2436 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2549 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2549] = return_data.size
                                            mem[_2549 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2472 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2472] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2472 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2596 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2596] = return_data.size
                                                mem[_2596 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2474 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2474] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2474 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2597 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2597] = return_data.size
                                                mem[_2597 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1770 = mem[128]
                        require 0 < mem[96]
                        _1818 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1770) >> 48) + (Mask(8, 40, _1818) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2914 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2914] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2914 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3026 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3026] = return_data.size
                                        mem[_3026 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2947 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2947] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2947 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3074 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3074] = return_data.size
                                            mem[_3074 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2949 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2949] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2949 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3075 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3075] = return_data.size
                                            mem[_3075 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2598 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2598] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2682 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2682] = return_data.size
                                            mem[_2682 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2643 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2643] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2708 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2708] = return_data.size
                                                mem[_2708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2645 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2645] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2709 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2709] = return_data.size
                                                mem[_2709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2916 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2916] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2916 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3029 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3029] = return_data.size
                                            mem[_3029 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2952 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2952] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2952 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3076 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3076] = return_data.size
                                                mem[_3076 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2954 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2954] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2954 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3077 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3077] = return_data.size
                                                mem[_3077 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _870 = mem[(32 * idx + 1) + 96]
                    _871 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _870) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _871] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _871] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _871 + (Mask(16, 216, _870) >> 211) + 36
                    if address(_870) >= 255:
                        if Mask(4, 252, _870) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_870).mem[_871 len 4] with:
                                 gas Mask(24, 160, _870) >> 160 wei
                                args mem[_871 + 4 len Mask(16, 216, _870) >> 211]
                            mem[_871] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _870) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_870).mem[_871 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _870) >> 160 wei
                                args mem[_871 + 4 len Mask(16, 216, _870) >> 211]
                            mem[_871] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _870) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _870) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_870)) + 108 len 20].mem[_871 len 4] with:
                                 gas Mask(24, 160, _870) >> 160 wei
                                args mem[_871 + 4 len Mask(16, 216, _870) >> 211]
                            mem[_871] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _870) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_870)) + 108 len 20].mem[_871 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _870) >> 160 wei
                                args mem[_871 + 4 len Mask(16, 216, _870) >> 211]
                            mem[_871] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _870) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _871
                    idx = (Mask(16, 216, _870) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _981 = mem[128]
                        require 0 < mem[96]
                        _1015 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _981) >> 48) + (Mask(8, 40, _1015) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2438 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2438] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2438 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2552 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2552] = return_data.size
                                        mem[_2552 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2477 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2477] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2477 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2600 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2600] = return_data.size
                                            mem[_2600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2479 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2479] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2479 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2601 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2601] = return_data.size
                                            mem[_2601 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1860 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1860] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1917 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1917] = return_data.size
                                            mem[_1917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1880 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1880] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1944 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1944] = return_data.size
                                                mem[_1944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1882 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1882] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1945 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1945] = return_data.size
                                                mem[_1945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2440 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2440] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2440 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2555 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2555] = return_data.size
                                            mem[_2555 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2482 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2482] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2482 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2602 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2602] = return_data.size
                                                mem[_2602 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2484 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2484] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2484 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2603 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2603] = return_data.size
                                                mem[_2603 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1771 = mem[128]
                        require 0 < mem[96]
                        _1823 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1771) >> 48) + (Mask(8, 40, _1823) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2918 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2918] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2918 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3032 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3032] = return_data.size
                                        mem[_3032 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2957 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2957] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2957 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3078 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3078] = return_data.size
                                            mem[_3078 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2959 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2959] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2959 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3079 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3079] = return_data.size
                                            mem[_3079 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2604 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2604] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2685 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2685] = return_data.size
                                            mem[_2685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2648 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2648] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2712 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2712] = return_data.size
                                                mem[_2712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2650 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2650] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2713 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2713] = return_data.size
                                                mem[_2713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2920 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2920] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2920 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3035 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3035] = return_data.size
                                            mem[_3035 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2962 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2962] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2962 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3080 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3080] = return_data.size
                                                mem[_3080 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2964 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2964] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2964 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3081 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3081] = return_data.size
                                                mem[_3081 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _873 = mem[(32 * idx + 1) + 96]
                    _874 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _873) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _874] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _874] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _874 + (Mask(16, 216, _873) >> 211) + 36
                    if address(_873) >= 255:
                        if Mask(4, 252, _873) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_873).mem[_874 len 4] with:
                                 gas Mask(24, 160, _873) >> 160 wei
                                args mem[_874 + 4 len Mask(16, 216, _873) >> 211]
                            mem[_874] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _873) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_873).mem[_874 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _873) >> 160 wei
                                args mem[_874 + 4 len Mask(16, 216, _873) >> 211]
                            mem[_874] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _873) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _873) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_873)) + 108 len 20].mem[_874 len 4] with:
                                 gas Mask(24, 160, _873) >> 160 wei
                                args mem[_874 + 4 len Mask(16, 216, _873) >> 211]
                            mem[_874] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _873) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_873)) + 108 len 20].mem[_874 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _873) >> 160 wei
                                args mem[_874 + 4 len Mask(16, 216, _873) >> 211]
                            mem[_874] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _873) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _874
                    idx = (Mask(16, 216, _873) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _984 = mem[128]
                        require 0 < mem[96]
                        _1020 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _984) >> 48) + (Mask(8, 40, _1020) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2442 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2442] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2442 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2558 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2558] = return_data.size
                                        mem[_2558 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2487 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2487] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2487 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2606 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2606] = return_data.size
                                            mem[_2606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2489 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2489] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2489 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2607 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2607] = return_data.size
                                            mem[_2607 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1862 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1862] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1920 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1920] = return_data.size
                                            mem[_1920 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1885 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1885] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1948 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1948] = return_data.size
                                                mem[_1948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1887 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1887] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1949 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1949] = return_data.size
                                                mem[_1949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2444 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2444] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2444 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2561 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2561] = return_data.size
                                            mem[_2561 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2492 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2492] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2492 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2608 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2608] = return_data.size
                                                mem[_2608 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2494 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2494] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2494 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2609 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2609] = return_data.size
                                                mem[_2609 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1772 = mem[128]
                        require 0 < mem[96]
                        _1828 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1772) >> 48) + (Mask(8, 40, _1828) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2922 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2922] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2922 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3038 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3038] = return_data.size
                                        mem[_3038 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2967 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2967] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2967 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3082] = return_data.size
                                            mem[_3082 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2969 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2969] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2969 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3083 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3083] = return_data.size
                                            mem[_3083 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2610 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2610] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2688 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2688] = return_data.size
                                            mem[_2688 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2653 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2653] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2716 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2716] = return_data.size
                                                mem[_2716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2655 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2655] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2717 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2717] = return_data.size
                                                mem[_2717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2924 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2924] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2924 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3041 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3041] = return_data.size
                                            mem[_3041 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2972 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2972] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2972 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3084 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3084] = return_data.size
                                                mem[_3084 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2974 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2974] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2974 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3085 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3085] = return_data.size
                                                mem[_3085 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _876 = mem[(32 * idx + 1) + 96]
                    _877 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _876) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _877] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _877] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _877 + (Mask(16, 216, _876) >> 211) + 36
                    if address(_876) >= 255:
                        if Mask(4, 252, _876) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_876).mem[_877 len 4] with:
                                 gas Mask(24, 160, _876) >> 160 wei
                                args mem[_877 + 4 len Mask(16, 216, _876) >> 211]
                            mem[_877] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _876) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_876).mem[_877 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _876) >> 160 wei
                                args mem[_877 + 4 len Mask(16, 216, _876) >> 211]
                            mem[_877] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _876) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _876) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_876)) + 108 len 20].mem[_877 len 4] with:
                                 gas Mask(24, 160, _876) >> 160 wei
                                args mem[_877 + 4 len Mask(16, 216, _876) >> 211]
                            mem[_877] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _876) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_876)) + 108 len 20].mem[_877 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _876) >> 160 wei
                                args mem[_877 + 4 len Mask(16, 216, _876) >> 211]
                            mem[_877] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _876) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _877
                    idx = (Mask(16, 216, _876) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _987 = mem[128]
                        require 0 < mem[96]
                        _1025 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _987) >> 48) + (Mask(8, 40, _1025) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2446 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2446] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2446 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2564 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2564] = return_data.size
                                        mem[_2564 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2497 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2497] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2497 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2612 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2612] = return_data.size
                                            mem[_2612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2499 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2499] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2499 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2613 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2613] = return_data.size
                                            mem[_2613 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1864 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1864] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1923 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1923] = return_data.size
                                            mem[_1923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1890 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1890] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1952 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1952] = return_data.size
                                                mem[_1952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1892 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1892] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1953 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1953] = return_data.size
                                                mem[_1953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2448 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2448] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2448 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2567 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2567] = return_data.size
                                            mem[_2567 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2502 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2502] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2502 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2614 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2614] = return_data.size
                                                mem[_2614 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2504 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2504] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2504 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2615 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2615] = return_data.size
                                                mem[_2615 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1773 = mem[128]
                        require 0 < mem[96]
                        _1833 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1773) >> 48) + (Mask(8, 40, _1833) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2926 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2926] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2926 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3044 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3044] = return_data.size
                                        mem[_3044 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2977 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2977] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2977 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3086 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3086] = return_data.size
                                            mem[_3086 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2979 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2979] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2979 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3087 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3087] = return_data.size
                                            mem[_3087 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2616 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2616] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2691 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2691] = return_data.size
                                            mem[_2691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2658 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2658] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2720 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2720] = return_data.size
                                                mem[_2720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2660 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2660] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2721 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2721] = return_data.size
                                                mem[_2721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2928 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2928] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2928 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3047 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3047] = return_data.size
                                            mem[_3047 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2982 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2982] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2982 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3088 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3088] = return_data.size
                                                mem[_3088 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2984 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2984] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2984 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3089 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3089] = return_data.size
                                                mem[_3089 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    else:
        require storDEAD[mem[148 len 2]]
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _879 = mem[(32 * idx + 1) + 96]
                    _880 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _879) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _880] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _880] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _880 + (Mask(16, 216, _879) >> 211) + 36
                    if address(_879) >= 255:
                        if Mask(4, 252, _879) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_879).mem[_880 len 4] with:
                                 gas Mask(24, 160, _879) >> 160 wei
                                args mem[_880 + 4 len Mask(16, 216, _879) >> 211]
                            mem[_880] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _879) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_879).mem[_880 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _879) >> 160 wei
                                args mem[_880 + 4 len Mask(16, 216, _879) >> 211]
                            mem[_880] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _879) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _879) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_879)) + 108 len 20].mem[_880 len 4] with:
                                 gas Mask(24, 160, _879) >> 160 wei
                                args mem[_880 + 4 len Mask(16, 216, _879) >> 211]
                            mem[_880] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _879) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_879)) + 108 len 20].mem[_880 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _879) >> 160 wei
                                args mem[_880 + 4 len Mask(16, 216, _879) >> 211]
                            mem[_880] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _879) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _880
                    idx = (Mask(16, 216, _879) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _990 = mem[128]
                        require 0 < mem[96]
                        _1030 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _990) >> 48) + (Mask(8, 40, _1030) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2450 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2450] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2450 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2570 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2570] = return_data.size
                                        mem[_2570 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2507 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2507] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2507 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2618 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2618] = return_data.size
                                            mem[_2618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2509 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2509] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2509 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2619 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2619] = return_data.size
                                            mem[_2619 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1866 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1866] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1926 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1926] = return_data.size
                                            mem[_1926 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1895 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1895] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1956 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1956] = return_data.size
                                                mem[_1956 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1897 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1897] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1957 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1957] = return_data.size
                                                mem[_1957 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2452 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2452] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2452 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2573 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2573] = return_data.size
                                            mem[_2573 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2512 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2512] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2512 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2620 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2620] = return_data.size
                                                mem[_2620 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2514 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2514] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2514 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2621 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2621] = return_data.size
                                                mem[_2621 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1774 = mem[128]
                        require 0 < mem[96]
                        _1838 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1774) >> 48) + (Mask(8, 40, _1838) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2930 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2930] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2930 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3050 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3050] = return_data.size
                                        mem[_3050 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2987 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2987] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2987 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3090 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3090] = return_data.size
                                            mem[_3090 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2989 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2989] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2989 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3091 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3091] = return_data.size
                                            mem[_3091 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2622 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2622] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2694 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2694] = return_data.size
                                            mem[_2694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2663 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2663] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2724 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2724] = return_data.size
                                                mem[_2724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2665 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2665] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2725 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2725] = return_data.size
                                                mem[_2725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2932 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2932] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2932 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3053 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3053] = return_data.size
                                            mem[_3053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2992 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2992] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2992 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3092 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3092] = return_data.size
                                                mem[_3092 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2994 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2994] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2994 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3093 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3093] = return_data.size
                                                mem[_3093 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _882 = mem[(32 * idx + 1) + 96]
                    _883 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _882) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _883] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _883] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _883 + (Mask(16, 216, _882) >> 211) + 36
                    if address(_882) >= 255:
                        if Mask(4, 252, _882) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_882).mem[_883 len 4] with:
                                 gas Mask(24, 160, _882) >> 160 wei
                                args mem[_883 + 4 len Mask(16, 216, _882) >> 211]
                            mem[_883] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _882) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_882).mem[_883 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _882) >> 160 wei
                                args mem[_883 + 4 len Mask(16, 216, _882) >> 211]
                            mem[_883] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _882) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _882) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_882)) + 108 len 20].mem[_883 len 4] with:
                                 gas Mask(24, 160, _882) >> 160 wei
                                args mem[_883 + 4 len Mask(16, 216, _882) >> 211]
                            mem[_883] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _882) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_882)) + 108 len 20].mem[_883 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _882) >> 160 wei
                                args mem[_883 + 4 len Mask(16, 216, _882) >> 211]
                            mem[_883] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _882) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _883
                    idx = (Mask(16, 216, _882) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _993 = mem[128]
                        require 0 < mem[96]
                        _1035 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _993) >> 48) + (Mask(8, 40, _1035) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2454 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2454] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2454 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2576 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2576] = return_data.size
                                        mem[_2576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2517 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2517] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2517 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2624 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2624] = return_data.size
                                            mem[_2624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2519 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2519] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2519 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2625 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2625] = return_data.size
                                            mem[_2625 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1868 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1868] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1929 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1929] = return_data.size
                                            mem[_1929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1900 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1900] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1960 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1960] = return_data.size
                                                mem[_1960 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1902 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1902] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1961 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1961] = return_data.size
                                                mem[_1961 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2456 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2456] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2456 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2579 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2579] = return_data.size
                                            mem[_2579 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2522 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2522] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2522 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2626 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2626] = return_data.size
                                                mem[_2626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2524 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2524] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2524 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2627 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2627] = return_data.size
                                                mem[_2627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1775 = mem[128]
                        require 0 < mem[96]
                        _1843 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1775) >> 48) + (Mask(8, 40, _1843) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2934 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2934] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2934 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3056 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3056] = return_data.size
                                        mem[_3056 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2997 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2997] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2997 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3094 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3094] = return_data.size
                                            mem[_3094 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2999 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2999] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2999 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3095 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3095] = return_data.size
                                            mem[_3095 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2628 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2628] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2697 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2697] = return_data.size
                                            mem[_2697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2668 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2668] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2728 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2728] = return_data.size
                                                mem[_2728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2670 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2670] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2729 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2729] = return_data.size
                                                mem[_2729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2936 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2936] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2936 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3059 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3059] = return_data.size
                                            mem[_3059 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3002 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3002] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3002 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3096 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3096] = return_data.size
                                                mem[_3096 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3004 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3004] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3004 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3097 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3097] = return_data.size
                                                mem[_3097 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _885 = mem[(32 * idx + 1) + 96]
                    _886 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _885) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _886] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _886] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _886 + (Mask(16, 216, _885) >> 211) + 36
                    if address(_885) >= 255:
                        if Mask(4, 252, _885) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_885).mem[_886 len 4] with:
                                 gas Mask(24, 160, _885) >> 160 wei
                                args mem[_886 + 4 len Mask(16, 216, _885) >> 211]
                            mem[_886] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _885) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_885).mem[_886 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _885) >> 160 wei
                                args mem[_886 + 4 len Mask(16, 216, _885) >> 211]
                            mem[_886] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _885) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _885) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_885)) + 108 len 20].mem[_886 len 4] with:
                                 gas Mask(24, 160, _885) >> 160 wei
                                args mem[_886 + 4 len Mask(16, 216, _885) >> 211]
                            mem[_886] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _885) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_885)) + 108 len 20].mem[_886 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _885) >> 160 wei
                                args mem[_886 + 4 len Mask(16, 216, _885) >> 211]
                            mem[_886] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _885) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _886
                    idx = (Mask(16, 216, _885) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _996 = mem[128]
                        require 0 < mem[96]
                        _1040 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _996) >> 48) + (Mask(8, 40, _1040) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2458 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2458] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2458 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2582 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2582] = return_data.size
                                        mem[_2582 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2527 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2527] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2527 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2630] = return_data.size
                                            mem[_2630 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2529 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2529] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2529 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2631 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2631] = return_data.size
                                            mem[_2631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1870 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1870] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1932 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1932] = return_data.size
                                            mem[_1932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1905 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1905] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1964 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1964] = return_data.size
                                                mem[_1964 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1907 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1907] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1965 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1965] = return_data.size
                                                mem[_1965 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2460 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2460] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2460 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2585 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2585] = return_data.size
                                            mem[_2585 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2532 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2532] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2532 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2632 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2632] = return_data.size
                                                mem[_2632 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2534 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2534] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2534 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2633 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2633] = return_data.size
                                                mem[_2633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1776 = mem[128]
                        require 0 < mem[96]
                        _1848 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1776) >> 48) + (Mask(8, 40, _1848) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2938 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2938] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2938 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3062 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3062] = return_data.size
                                        mem[_3062 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3007 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3007] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3007 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3098 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3098] = return_data.size
                                            mem[_3098 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3009 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3009] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3009 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3099 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3099] = return_data.size
                                            mem[_3099 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2634 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2634] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2700 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2700] = return_data.size
                                            mem[_2700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2673 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2673] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2732 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2732] = return_data.size
                                                mem[_2732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2675 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2675] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2733 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2733] = return_data.size
                                                mem[_2733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2940 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2940] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2940 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3065 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3065] = return_data.size
                                            mem[_3065 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3012 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3012] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3012 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3100 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3100] = return_data.size
                                                mem[_3100 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3014 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3014] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3014 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3101 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3101] = return_data.size
                                                mem[_3101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _888 = mem[(32 * idx + 1) + 96]
                    _889 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _888) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _889] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _889] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _889 + (Mask(16, 216, _888) >> 211) + 36
                    if address(_888) >= 255:
                        if Mask(4, 252, _888) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_888).mem[_889 len 4] with:
                                 gas Mask(24, 160, _888) >> 160 wei
                                args mem[_889 + 4 len Mask(16, 216, _888) >> 211]
                            mem[_889] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _888) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_888).mem[_889 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _888) >> 160 wei
                                args mem[_889 + 4 len Mask(16, 216, _888) >> 211]
                            mem[_889] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _888) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _888) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_888)) + 108 len 20].mem[_889 len 4] with:
                                 gas Mask(24, 160, _888) >> 160 wei
                                args mem[_889 + 4 len Mask(16, 216, _888) >> 211]
                            mem[_889] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _888) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_888)) + 108 len 20].mem[_889 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _888) >> 160 wei
                                args mem[_889 + 4 len Mask(16, 216, _888) >> 211]
                            mem[_889] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _888) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _889
                    idx = (Mask(16, 216, _888) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _999 = mem[128]
                        require 0 < mem[96]
                        _1045 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _999) >> 48) + (Mask(8, 40, _1045) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2462 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2462] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2462 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2588 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2588] = return_data.size
                                        mem[_2588 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2537 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2537] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2537 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2636 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2636] = return_data.size
                                            mem[_2636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2539 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2539] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2539 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2637 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2637] = return_data.size
                                            mem[_2637 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _1872 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_1872] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _1935 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1935] = return_data.size
                                            mem[_1935 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _1910 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1910] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1968 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1968] = return_data.size
                                                mem[_1968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _1912 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_1912] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _1969 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1969] = return_data.size
                                                mem[_1969 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2464 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2464] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2464 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2591 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2591] = return_data.size
                                            mem[_2591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2542 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2542] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2542 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2638 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2638] = return_data.size
                                                mem[_2638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2544 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2544] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2544 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2639 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2639] = return_data.size
                                                mem[_2639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1777 = mem[128]
                        require 0 < mem[96]
                        _1853 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1777) >> 48) + (Mask(8, 40, _1853) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2942 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2942] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2942 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3068 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3068] = return_data.size
                                        mem[_3068 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3017 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3017] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3017 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3102 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3102] = return_data.size
                                            mem[_3102 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3019 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3019] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3019 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3103 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3103] = return_data.size
                                            mem[_3103 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2640 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2640] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2703 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2703] = return_data.size
                                            mem[_2703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2678 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2678] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2736 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2736] = return_data.size
                                                mem[_2736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2680 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2680] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2737 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2737] = return_data.size
                                                mem[_2737 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2944 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2944] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2944 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3071 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3071] = return_data.size
                                            mem[_3071 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3022 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3022] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3022 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3104 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3104] = return_data.size
                                                mem[_3104 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3024 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3024] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3024 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3105 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3105] = return_data.size
                                                mem[_3105 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    if bool(_3) > 0:
        require eth.balance(this.address) <= eth.balance(this.address)
}

function sub_00000036(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require 0 < arg1.length
    _3 = mem[128]
    if Mask(1, 3, mem[128]) <= 0:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _939 = mem[(32 * idx + 1) + 96]
                    _940 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _939) >> 211:
                            mem[s + _940] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _940 + (Mask(16, 216, _939) >> 211) + 32
                        if Mask(4, 252, _939) == '0':
                            codecall address(_939).mem[_940 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _939) >> 160 wei
                                args mem[_940 + 4 len (Mask(16, 216, _939) >> 211) - 4]
                            mem[_940] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _939) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _939) == ' ':
                                staticcall address(_939).mem[_940 len 4] with:
                                        gas Mask(24, 160, _939) >> 160 wei
                                       args mem[_940 + 4 len (Mask(16, 216, _939) >> 211) - 4]
                                mem[_940] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _939) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _939) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_939).mem[_940 len 4] with:
                                         gas Mask(24, 160, _939) >> 160 wei
                                        args mem[_940 + 4 len (Mask(16, 216, _939) >> 211) - 4]
                                    mem[_940] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _939) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_939).mem[_940 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _939) >> 160 wei
                                        args mem[_940 + 4 len (Mask(16, 216, _939) >> 211) - 4]
                                    mem[_940] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _939) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _939) >> 211) + 4:
                            mem[s + _940] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _940 + (Mask(16, 216, _939) >> 211) + 36
                        if Mask(4, 252, _939) == '0':
                            codecall address(_939).mem[_940 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _939) >> 160 wei
                                args mem[_940 + 4 len Mask(16, 216, _939) >> 211]
                            mem[_940] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _939) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _939) == ' ':
                                staticcall address(_939).mem[_940 len 4] with:
                                        gas Mask(24, 160, _939) >> 160 wei
                                       args mem[_940 + 4 len Mask(16, 216, _939) >> 211]
                                mem[_940] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _939) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _939) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_939).mem[_940 len 4] with:
                                         gas Mask(24, 160, _939) >> 160 wei
                                        args mem[_940 + 4 len Mask(16, 216, _939) >> 211]
                                    mem[_940] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _939) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_939).mem[_940 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _939) >> 160 wei
                                        args mem[_940 + 4 len Mask(16, 216, _939) >> 211]
                                    mem[_940] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _939) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _940
                    idx = (Mask(16, 216, _939) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1034 = mem[128]
                        require 0 < mem[96]
                        _1074 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1034) >> 48) + (Mask(8, 40, _1074) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2650 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2650] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2650 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2762 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2762] = return_data.size
                                        mem[_2762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2683 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2683] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2683 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2810 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2810] = return_data.size
                                            mem[_2810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2685 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2685] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2685 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2811 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2811] = return_data.size
                                            mem[_2811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2074 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2074] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2130 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2130] = return_data.size
                                            mem[_2130 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2091 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2091] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2156 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2156] = return_data.size
                                                mem[_2156 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2093 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2093] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2157 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2157] = return_data.size
                                                mem[_2157 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2652 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2652] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2652 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2765 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2765] = return_data.size
                                            mem[_2765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2688 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2688] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2688 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2812 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2812] = return_data.size
                                                mem[_2812 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2690 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2690] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2690 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2813 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2813] = return_data.size
                                                mem[_2813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1906 = mem[128]
                        require 0 < mem[96]
                        _1970 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1906) >> 48) + (Mask(8, 40, _1970) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3130 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3130] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3130 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3242] = return_data.size
                                        mem[_3242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3163 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3163] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3163 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3290 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3290] = return_data.size
                                            mem[_3290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3165 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3165] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3165 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3291 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3291] = return_data.size
                                            mem[_3291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2814 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2814] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2898 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2898] = return_data.size
                                            mem[_2898 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2859 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2859] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2924 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2924] = return_data.size
                                                mem[_2924 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2861 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2861] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2925 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2925] = return_data.size
                                                mem[_2925 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3132 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3132] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3132 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3245 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3245] = return_data.size
                                            mem[_3245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3168 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3168] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3168 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3292 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3292] = return_data.size
                                                mem[_3292 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3170 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3170] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3170 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3293 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3293] = return_data.size
                                                mem[_3293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _942 = mem[(32 * idx + 1) + 96]
                    _943 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _942) >> 211:
                            mem[s + _943] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _943 + (Mask(16, 216, _942) >> 211) + 32
                        if Mask(4, 252, _942) == '0':
                            codecall address(_942).mem[_943 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _942) >> 160 wei
                                args mem[_943 + 4 len (Mask(16, 216, _942) >> 211) - 4]
                            mem[_943] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _942) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _942) == ' ':
                                staticcall address(_942).mem[_943 len 4] with:
                                        gas Mask(24, 160, _942) >> 160 wei
                                       args mem[_943 + 4 len (Mask(16, 216, _942) >> 211) - 4]
                                mem[_943] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _942) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _942) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_942).mem[_943 len 4] with:
                                         gas Mask(24, 160, _942) >> 160 wei
                                        args mem[_943 + 4 len (Mask(16, 216, _942) >> 211) - 4]
                                    mem[_943] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _942) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_942).mem[_943 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _942) >> 160 wei
                                        args mem[_943 + 4 len (Mask(16, 216, _942) >> 211) - 4]
                                    mem[_943] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _942) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _942) >> 211) + 4:
                            mem[s + _943] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _943 + (Mask(16, 216, _942) >> 211) + 36
                        if Mask(4, 252, _942) == '0':
                            codecall address(_942).mem[_943 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _942) >> 160 wei
                                args mem[_943 + 4 len Mask(16, 216, _942) >> 211]
                            mem[_943] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _942) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _942) == ' ':
                                staticcall address(_942).mem[_943 len 4] with:
                                        gas Mask(24, 160, _942) >> 160 wei
                                       args mem[_943 + 4 len Mask(16, 216, _942) >> 211]
                                mem[_943] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _942) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _942) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_942).mem[_943 len 4] with:
                                         gas Mask(24, 160, _942) >> 160 wei
                                        args mem[_943 + 4 len Mask(16, 216, _942) >> 211]
                                    mem[_943] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _942) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_942).mem[_943 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _942) >> 160 wei
                                        args mem[_943 + 4 len Mask(16, 216, _942) >> 211]
                                    mem[_943] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _942) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _943
                    idx = (Mask(16, 216, _942) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1038 = mem[128]
                        require 0 < mem[96]
                        _1077 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1038) >> 48) + (Mask(8, 40, _1077) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2654 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2654] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2654 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2768 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2768] = return_data.size
                                        mem[_2768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2693 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2693] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2693 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2816] = return_data.size
                                            mem[_2816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2695 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2695] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2695 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2817 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2817] = return_data.size
                                            mem[_2817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2076 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2076] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2133 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2133] = return_data.size
                                            mem[_2133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2096 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2096] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2160 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2160] = return_data.size
                                                mem[_2160 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2098 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2098] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2161 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2161] = return_data.size
                                                mem[_2161 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2656 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2656] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2656 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2771 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2771] = return_data.size
                                            mem[_2771 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2698 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2698] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2698 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2818 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2818] = return_data.size
                                                mem[_2818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2700 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2700] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2700 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2819 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2819] = return_data.size
                                                mem[_2819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1909 = mem[128]
                        require 0 < mem[96]
                        _1975 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1909) >> 48) + (Mask(8, 40, _1975) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3134 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3134] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3134 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3248] = return_data.size
                                        mem[_3248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3173 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3173] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3173 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3294 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3294] = return_data.size
                                            mem[_3294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3175 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3175] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3175 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3295 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3295] = return_data.size
                                            mem[_3295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2820 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2820] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2901 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2901] = return_data.size
                                            mem[_2901 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2864 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2864] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2928 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2928] = return_data.size
                                                mem[_2928 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2866 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2866] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2929 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2929] = return_data.size
                                                mem[_2929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3136 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3136] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3136 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3251 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3251] = return_data.size
                                            mem[_3251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3178 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3178] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3178 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3296 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3296] = return_data.size
                                                mem[_3296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3180 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3180] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3180 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3297 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3297] = return_data.size
                                                mem[_3297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _945 = mem[(32 * idx + 1) + 96]
                    _946 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _945) >> 211:
                            mem[s + _946] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _946 + (Mask(16, 216, _945) >> 211) + 32
                        if Mask(4, 252, _945) == '0':
                            codecall address(_945).mem[_946 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _945) >> 160 wei
                                args mem[_946 + 4 len (Mask(16, 216, _945) >> 211) - 4]
                            mem[_946] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _945) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _945) == ' ':
                                staticcall address(_945).mem[_946 len 4] with:
                                        gas Mask(24, 160, _945) >> 160 wei
                                       args mem[_946 + 4 len (Mask(16, 216, _945) >> 211) - 4]
                                mem[_946] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _945) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _945) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_945).mem[_946 len 4] with:
                                         gas Mask(24, 160, _945) >> 160 wei
                                        args mem[_946 + 4 len (Mask(16, 216, _945) >> 211) - 4]
                                    mem[_946] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _945) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_945).mem[_946 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _945) >> 160 wei
                                        args mem[_946 + 4 len (Mask(16, 216, _945) >> 211) - 4]
                                    mem[_946] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _945) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _945) >> 211) + 4:
                            mem[s + _946] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _946 + (Mask(16, 216, _945) >> 211) + 36
                        if Mask(4, 252, _945) == '0':
                            codecall address(_945).mem[_946 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _945) >> 160 wei
                                args mem[_946 + 4 len Mask(16, 216, _945) >> 211]
                            mem[_946] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _945) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _945) == ' ':
                                staticcall address(_945).mem[_946 len 4] with:
                                        gas Mask(24, 160, _945) >> 160 wei
                                       args mem[_946 + 4 len Mask(16, 216, _945) >> 211]
                                mem[_946] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _945) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _945) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_945).mem[_946 len 4] with:
                                         gas Mask(24, 160, _945) >> 160 wei
                                        args mem[_946 + 4 len Mask(16, 216, _945) >> 211]
                                    mem[_946] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _945) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_945).mem[_946 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _945) >> 160 wei
                                        args mem[_946 + 4 len Mask(16, 216, _945) >> 211]
                                    mem[_946] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _945) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _946
                    idx = (Mask(16, 216, _945) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1042 = mem[128]
                        require 0 < mem[96]
                        _1080 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1042) >> 48) + (Mask(8, 40, _1080) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2658 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2658] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2658 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2774 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2774] = return_data.size
                                        mem[_2774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2703 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2703] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2703 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2822 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2822] = return_data.size
                                            mem[_2822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2705 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2705] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2705 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2823 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2823] = return_data.size
                                            mem[_2823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2078 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2078] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2136 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2136] = return_data.size
                                            mem[_2136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2101 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2101] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2164 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2164] = return_data.size
                                                mem[_2164 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2103 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2103] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2165 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2165] = return_data.size
                                                mem[_2165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2660 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2660] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2660 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2777 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2777] = return_data.size
                                            mem[_2777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2708 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2708] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2708 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2824 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2824] = return_data.size
                                                mem[_2824 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2710 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2710] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2710 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2825 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2825] = return_data.size
                                                mem[_2825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1912 = mem[128]
                        require 0 < mem[96]
                        _1980 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1912) >> 48) + (Mask(8, 40, _1980) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3138 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3138] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3138 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3254 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3254] = return_data.size
                                        mem[_3254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3183 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3183] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3183 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3298 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3298] = return_data.size
                                            mem[_3298 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3185 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3185] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3185 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3299 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3299] = return_data.size
                                            mem[_3299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2826 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2826] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2904 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2904] = return_data.size
                                            mem[_2904 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2869 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2869] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2932 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2932] = return_data.size
                                                mem[_2932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2871 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2871] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2933 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2933] = return_data.size
                                                mem[_2933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3140 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3140] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3140 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3257 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3257] = return_data.size
                                            mem[_3257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3188 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3188] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3188 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3300 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3300] = return_data.size
                                                mem[_3300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3190 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3190] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3190 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3301 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3301] = return_data.size
                                                mem[_3301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _948 = mem[(32 * idx + 1) + 96]
                    _949 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _948) >> 211:
                            mem[s + _949] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _949 + (Mask(16, 216, _948) >> 211) + 32
                        if Mask(4, 252, _948) == '0':
                            codecall address(_948).mem[_949 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _948) >> 160 wei
                                args mem[_949 + 4 len (Mask(16, 216, _948) >> 211) - 4]
                            mem[_949] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _948) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _948) == ' ':
                                staticcall address(_948).mem[_949 len 4] with:
                                        gas Mask(24, 160, _948) >> 160 wei
                                       args mem[_949 + 4 len (Mask(16, 216, _948) >> 211) - 4]
                                mem[_949] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _948) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _948) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_948).mem[_949 len 4] with:
                                         gas Mask(24, 160, _948) >> 160 wei
                                        args mem[_949 + 4 len (Mask(16, 216, _948) >> 211) - 4]
                                    mem[_949] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _948) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_948).mem[_949 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _948) >> 160 wei
                                        args mem[_949 + 4 len (Mask(16, 216, _948) >> 211) - 4]
                                    mem[_949] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _948) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _948) >> 211) + 4:
                            mem[s + _949] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _949 + (Mask(16, 216, _948) >> 211) + 36
                        if Mask(4, 252, _948) == '0':
                            codecall address(_948).mem[_949 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _948) >> 160 wei
                                args mem[_949 + 4 len Mask(16, 216, _948) >> 211]
                            mem[_949] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _948) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _948) == ' ':
                                staticcall address(_948).mem[_949 len 4] with:
                                        gas Mask(24, 160, _948) >> 160 wei
                                       args mem[_949 + 4 len Mask(16, 216, _948) >> 211]
                                mem[_949] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _948) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _948) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_948).mem[_949 len 4] with:
                                         gas Mask(24, 160, _948) >> 160 wei
                                        args mem[_949 + 4 len Mask(16, 216, _948) >> 211]
                                    mem[_949] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _948) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_948).mem[_949 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _948) >> 160 wei
                                        args mem[_949 + 4 len Mask(16, 216, _948) >> 211]
                                    mem[_949] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _948) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _949
                    idx = (Mask(16, 216, _948) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1046 = mem[128]
                        require 0 < mem[96]
                        _1083 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1046) >> 48) + (Mask(8, 40, _1083) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2662 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2662] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2662 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2780 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2780] = return_data.size
                                        mem[_2780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2713 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2713] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2713 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2828 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2828] = return_data.size
                                            mem[_2828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2715 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2715] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2715 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2829 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2829] = return_data.size
                                            mem[_2829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2080 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2080] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2139 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2139] = return_data.size
                                            mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2106 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2106] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2168 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2168] = return_data.size
                                                mem[_2168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2108 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2108] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2169 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2169] = return_data.size
                                                mem[_2169 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2664 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2664] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2664 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2783 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2783] = return_data.size
                                            mem[_2783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2718 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2718] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2718 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2830 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2830] = return_data.size
                                                mem[_2830 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2720 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2720] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2720 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2831 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2831] = return_data.size
                                                mem[_2831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1915 = mem[128]
                        require 0 < mem[96]
                        _1985 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1915) >> 48) + (Mask(8, 40, _1985) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3142 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3142] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3142 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3260 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3260] = return_data.size
                                        mem[_3260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3193 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3193] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3193 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3302 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3302] = return_data.size
                                            mem[_3302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3195 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3195] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3195 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3303 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3303] = return_data.size
                                            mem[_3303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2832 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2832] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2907 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2907] = return_data.size
                                            mem[_2907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2874 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2874] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2936 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2936] = return_data.size
                                                mem[_2936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2876 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2876] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2937 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2937] = return_data.size
                                                mem[_2937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3144 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3144] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3144 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3263 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3263] = return_data.size
                                            mem[_3263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3198 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3198] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3198 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3304 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3304] = return_data.size
                                                mem[_3304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3200 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3200] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3200 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3305 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3305] = return_data.size
                                                mem[_3305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    else:
        require storDEAD[mem[148 len 2]]
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _951 = mem[(32 * idx + 1) + 96]
                    _952 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _951) >> 211:
                            mem[s + _952] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _952 + (Mask(16, 216, _951) >> 211) + 32
                        if Mask(4, 252, _951) == '0':
                            codecall address(_951).mem[_952 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _951) >> 160 wei
                                args mem[_952 + 4 len (Mask(16, 216, _951) >> 211) - 4]
                            mem[_952] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _951) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _951) == ' ':
                                staticcall address(_951).mem[_952 len 4] with:
                                        gas Mask(24, 160, _951) >> 160 wei
                                       args mem[_952 + 4 len (Mask(16, 216, _951) >> 211) - 4]
                                mem[_952] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _951) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _951) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_951).mem[_952 len 4] with:
                                         gas Mask(24, 160, _951) >> 160 wei
                                        args mem[_952 + 4 len (Mask(16, 216, _951) >> 211) - 4]
                                    mem[_952] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _951) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_951).mem[_952 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _951) >> 160 wei
                                        args mem[_952 + 4 len (Mask(16, 216, _951) >> 211) - 4]
                                    mem[_952] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _951) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _951) >> 211) + 4:
                            mem[s + _952] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _952 + (Mask(16, 216, _951) >> 211) + 36
                        if Mask(4, 252, _951) == '0':
                            codecall address(_951).mem[_952 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _951) >> 160 wei
                                args mem[_952 + 4 len Mask(16, 216, _951) >> 211]
                            mem[_952] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _951) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _951) == ' ':
                                staticcall address(_951).mem[_952 len 4] with:
                                        gas Mask(24, 160, _951) >> 160 wei
                                       args mem[_952 + 4 len Mask(16, 216, _951) >> 211]
                                mem[_952] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _951) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _951) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_951).mem[_952 len 4] with:
                                         gas Mask(24, 160, _951) >> 160 wei
                                        args mem[_952 + 4 len Mask(16, 216, _951) >> 211]
                                    mem[_952] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _951) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_951).mem[_952 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _951) >> 160 wei
                                        args mem[_952 + 4 len Mask(16, 216, _951) >> 211]
                                    mem[_952] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _951) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _952
                    idx = (Mask(16, 216, _951) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1050 = mem[128]
                        require 0 < mem[96]
                        _1086 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1050) >> 48) + (Mask(8, 40, _1086) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2666 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2666] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2666 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2786 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2786] = return_data.size
                                        mem[_2786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2723 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2723] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2723 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2834 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2834] = return_data.size
                                            mem[_2834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2725 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2725] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2725 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2835 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2835] = return_data.size
                                            mem[_2835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2082 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2082] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2142 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2142] = return_data.size
                                            mem[_2142 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2111 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2111] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2172 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2172] = return_data.size
                                                mem[_2172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2113 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2113] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2173 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2173] = return_data.size
                                                mem[_2173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2668 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2668] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2668 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2789 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2789] = return_data.size
                                            mem[_2789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2728 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2728] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2728 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2836 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2836] = return_data.size
                                                mem[_2836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2730 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2730] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2730 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2837 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2837] = return_data.size
                                                mem[_2837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1918 = mem[128]
                        require 0 < mem[96]
                        _1990 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1918) >> 48) + (Mask(8, 40, _1990) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3146 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3146] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3146 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3266 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3266] = return_data.size
                                        mem[_3266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3203 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3203] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3203 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3306] = return_data.size
                                            mem[_3306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3205 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3205] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3205 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3307 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3307] = return_data.size
                                            mem[_3307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2838 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2838] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2910 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2910] = return_data.size
                                            mem[_2910 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2879 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2879] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2940 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2940] = return_data.size
                                                mem[_2940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2881 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2881] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2941 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2941] = return_data.size
                                                mem[_2941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3148 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3148] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3148 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3269 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3269] = return_data.size
                                            mem[_3269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3208 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3208] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3208 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3308 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3308] = return_data.size
                                                mem[_3308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3210 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3210] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3210 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3309 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3309] = return_data.size
                                                mem[_3309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _954 = mem[(32 * idx + 1) + 96]
                    _955 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _954) >> 211:
                            mem[s + _955] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _955 + (Mask(16, 216, _954) >> 211) + 32
                        if Mask(4, 252, _954) == '0':
                            codecall address(_954).mem[_955 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _954) >> 160 wei
                                args mem[_955 + 4 len (Mask(16, 216, _954) >> 211) - 4]
                            mem[_955] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _954) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _954) == ' ':
                                staticcall address(_954).mem[_955 len 4] with:
                                        gas Mask(24, 160, _954) >> 160 wei
                                       args mem[_955 + 4 len (Mask(16, 216, _954) >> 211) - 4]
                                mem[_955] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _954) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _954) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_954).mem[_955 len 4] with:
                                         gas Mask(24, 160, _954) >> 160 wei
                                        args mem[_955 + 4 len (Mask(16, 216, _954) >> 211) - 4]
                                    mem[_955] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _954) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_954).mem[_955 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _954) >> 160 wei
                                        args mem[_955 + 4 len (Mask(16, 216, _954) >> 211) - 4]
                                    mem[_955] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _954) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _954) >> 211) + 4:
                            mem[s + _955] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _955 + (Mask(16, 216, _954) >> 211) + 36
                        if Mask(4, 252, _954) == '0':
                            codecall address(_954).mem[_955 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _954) >> 160 wei
                                args mem[_955 + 4 len Mask(16, 216, _954) >> 211]
                            mem[_955] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _954) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _954) == ' ':
                                staticcall address(_954).mem[_955 len 4] with:
                                        gas Mask(24, 160, _954) >> 160 wei
                                       args mem[_955 + 4 len Mask(16, 216, _954) >> 211]
                                mem[_955] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _954) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _954) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_954).mem[_955 len 4] with:
                                         gas Mask(24, 160, _954) >> 160 wei
                                        args mem[_955 + 4 len Mask(16, 216, _954) >> 211]
                                    mem[_955] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _954) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_954).mem[_955 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _954) >> 160 wei
                                        args mem[_955 + 4 len Mask(16, 216, _954) >> 211]
                                    mem[_955] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _954) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _955
                    idx = (Mask(16, 216, _954) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1054 = mem[128]
                        require 0 < mem[96]
                        _1089 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1054) >> 48) + (Mask(8, 40, _1089) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2670 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2670] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2670 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2792 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2792] = return_data.size
                                        mem[_2792 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2733 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2733] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2733 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2840 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2840] = return_data.size
                                            mem[_2840 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2735 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2735] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2735 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2841 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2841] = return_data.size
                                            mem[_2841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2084 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2084] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2145 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2145] = return_data.size
                                            mem[_2145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2116 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2116] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2176 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2176] = return_data.size
                                                mem[_2176 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2118 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2118] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2177 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2177] = return_data.size
                                                mem[_2177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2672 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2672] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2672 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2795 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2795] = return_data.size
                                            mem[_2795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2738 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2738] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2738 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2842 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2842] = return_data.size
                                                mem[_2842 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2740 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2740] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2740 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2843 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2843] = return_data.size
                                                mem[_2843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1921 = mem[128]
                        require 0 < mem[96]
                        _1995 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1921) >> 48) + (Mask(8, 40, _1995) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3150 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3150] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3150 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3272 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3272] = return_data.size
                                        mem[_3272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3213 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3213] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3213 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3310 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3310] = return_data.size
                                            mem[_3310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3215 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3215] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3215 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3311 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3311] = return_data.size
                                            mem[_3311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2844 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2844] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2913 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2913] = return_data.size
                                            mem[_2913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2884 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2884] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2944 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2944] = return_data.size
                                                mem[_2944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2886 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2886] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2945 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2945] = return_data.size
                                                mem[_2945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3152 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3152] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3152 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3275 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3275] = return_data.size
                                            mem[_3275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3218 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3218] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3218 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3312 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3312] = return_data.size
                                                mem[_3312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3220 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3220] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3220 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3313 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3313] = return_data.size
                                                mem[_3313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _957 = mem[(32 * idx + 1) + 96]
                    _958 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _957) >> 211:
                            mem[s + _958] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _958 + (Mask(16, 216, _957) >> 211) + 32
                        if Mask(4, 252, _957) == '0':
                            codecall address(_957).mem[_958 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _957) >> 160 wei
                                args mem[_958 + 4 len (Mask(16, 216, _957) >> 211) - 4]
                            mem[_958] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _957) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _957) == ' ':
                                staticcall address(_957).mem[_958 len 4] with:
                                        gas Mask(24, 160, _957) >> 160 wei
                                       args mem[_958 + 4 len (Mask(16, 216, _957) >> 211) - 4]
                                mem[_958] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _957) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _957) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_957).mem[_958 len 4] with:
                                         gas Mask(24, 160, _957) >> 160 wei
                                        args mem[_958 + 4 len (Mask(16, 216, _957) >> 211) - 4]
                                    mem[_958] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _957) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_957).mem[_958 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _957) >> 160 wei
                                        args mem[_958 + 4 len (Mask(16, 216, _957) >> 211) - 4]
                                    mem[_958] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _957) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _957) >> 211) + 4:
                            mem[s + _958] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _958 + (Mask(16, 216, _957) >> 211) + 36
                        if Mask(4, 252, _957) == '0':
                            codecall address(_957).mem[_958 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _957) >> 160 wei
                                args mem[_958 + 4 len Mask(16, 216, _957) >> 211]
                            mem[_958] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _957) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _957) == ' ':
                                staticcall address(_957).mem[_958 len 4] with:
                                        gas Mask(24, 160, _957) >> 160 wei
                                       args mem[_958 + 4 len Mask(16, 216, _957) >> 211]
                                mem[_958] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _957) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _957) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_957).mem[_958 len 4] with:
                                         gas Mask(24, 160, _957) >> 160 wei
                                        args mem[_958 + 4 len Mask(16, 216, _957) >> 211]
                                    mem[_958] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _957) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_957).mem[_958 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _957) >> 160 wei
                                        args mem[_958 + 4 len Mask(16, 216, _957) >> 211]
                                    mem[_958] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _957) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _958
                    idx = (Mask(16, 216, _957) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1058 = mem[128]
                        require 0 < mem[96]
                        _1092 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1058) >> 48) + (Mask(8, 40, _1092) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2674 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2674] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2674 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2798 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2798] = return_data.size
                                        mem[_2798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2743 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2743] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2743 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2846 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2846] = return_data.size
                                            mem[_2846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2745 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2745] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2745 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2847 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2847] = return_data.size
                                            mem[_2847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2086 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2086] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2148 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2148] = return_data.size
                                            mem[_2148 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2121 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2121] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2180 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2180] = return_data.size
                                                mem[_2180 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2123 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2123] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2181 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2181] = return_data.size
                                                mem[_2181 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2676 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2676] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2676 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2801 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2801] = return_data.size
                                            mem[_2801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2748 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2748] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2748 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2848 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2848] = return_data.size
                                                mem[_2848 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2750 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2750] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2750 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2849 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2849] = return_data.size
                                                mem[_2849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1924 = mem[128]
                        require 0 < mem[96]
                        _2000 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1924) >> 48) + (Mask(8, 40, _2000) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3154 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3154] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3154 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3278 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3278] = return_data.size
                                        mem[_3278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3223 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3223] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3223 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3314 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3314] = return_data.size
                                            mem[_3314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3225 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3225] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3225 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3315 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3315] = return_data.size
                                            mem[_3315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2850 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2850] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2916 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2916] = return_data.size
                                            mem[_2916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2889 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2889] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2948 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2948] = return_data.size
                                                mem[_2948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2891 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2891] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2949 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2949] = return_data.size
                                                mem[_2949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3156 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3156] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3156 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3281 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3281] = return_data.size
                                            mem[_3281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3228 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3228] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3228 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3316 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3316] = return_data.size
                                                mem[_3316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3230 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3230] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3230 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3317] = return_data.size
                                                mem[_3317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _960 = mem[(32 * idx + 1) + 96]
                    _961 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _960) >> 211:
                            mem[s + _961] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _961 + (Mask(16, 216, _960) >> 211) + 32
                        if Mask(4, 252, _960) == '0':
                            codecall address(_960).mem[_961 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _960) >> 160 wei
                                args mem[_961 + 4 len (Mask(16, 216, _960) >> 211) - 4]
                            mem[_961] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _960) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _960) == ' ':
                                staticcall address(_960).mem[_961 len 4] with:
                                        gas Mask(24, 160, _960) >> 160 wei
                                       args mem[_961 + 4 len (Mask(16, 216, _960) >> 211) - 4]
                                mem[_961] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _960) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _960) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_960).mem[_961 len 4] with:
                                         gas Mask(24, 160, _960) >> 160 wei
                                        args mem[_961 + 4 len (Mask(16, 216, _960) >> 211) - 4]
                                    mem[_961] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _960) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_960).mem[_961 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _960) >> 160 wei
                                        args mem[_961 + 4 len (Mask(16, 216, _960) >> 211) - 4]
                                    mem[_961] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _960) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _960) >> 211) + 4:
                            mem[s + _961] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _961 + (Mask(16, 216, _960) >> 211) + 36
                        if Mask(4, 252, _960) == '0':
                            codecall address(_960).mem[_961 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _960) >> 160 wei
                                args mem[_961 + 4 len Mask(16, 216, _960) >> 211]
                            mem[_961] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _960) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _960) == ' ':
                                staticcall address(_960).mem[_961 len 4] with:
                                        gas Mask(24, 160, _960) >> 160 wei
                                       args mem[_961 + 4 len Mask(16, 216, _960) >> 211]
                                mem[_961] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _960) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _960) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_960).mem[_961 len 4] with:
                                         gas Mask(24, 160, _960) >> 160 wei
                                        args mem[_961 + 4 len Mask(16, 216, _960) >> 211]
                                    mem[_961] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _960) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_960).mem[_961 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _960) >> 160 wei
                                        args mem[_961 + 4 len Mask(16, 216, _960) >> 211]
                                    mem[_961] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _960) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _961
                    idx = (Mask(16, 216, _960) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                require 0 < mem[96]
                if Mask(1, 6, mem[128]) <= 0:
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1062 = mem[128]
                        require 0 < mem[96]
                        _1095 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1062) >> 48) + (Mask(8, 40, _1095) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _2678 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_2678] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_2678 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _2804 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2804] = return_data.size
                                        mem[_2804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _2753 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2753] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2753 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2852 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2852] = return_data.size
                                            mem[_2852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _2755 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2755] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2755 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2853 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2853] = return_data.size
                                            mem[_2853 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2088 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2088] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2151 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2151] = return_data.size
                                            mem[_2151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2126 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2126] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2184 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2184] = return_data.size
                                                mem[_2184 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2128 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2128] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2185 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2185] = return_data.size
                                                mem[_2185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _2680 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2680] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_2680 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2807 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2807] = return_data.size
                                            mem[_2807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2758 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2758] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2758 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2854 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2854] = return_data.size
                                                mem[_2854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2760 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2760] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_2760 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2855 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2855] = return_data.size
                                                mem[_2855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    require 0 < mem[96]
                    idx = 1
                    while idx <= mem[150 len 1]:
                        stor[mem[148 len 2] + -idx + 3735936685] = 0
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        _1927 = mem[128]
                        require 0 < mem[96]
                        _2005 = mem[128]
                        idx = mem[151 len 3]
                        while idx < (Mask(24, 48, _1927) >> 48) + (Mask(8, 40, _2005) >> 40):
                            if 0 >= idx:
                                s = 1
                                t = 0
                                while idx >= s:
                                    s = 256 * s
                                    t = t + 1
                                    continue 
                                if idx <= 0:
                                    _3158 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_3158] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                    call address(sha3(mem[_3158 len t + 23])) with:
                                         gas gas_remaining wei
                                    if return_data.size:
                                        _3284 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_3284] = return_data.size
                                        mem[_3284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx >= 128:
                                        _3233 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3233] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3233 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3318 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3318] = return_data.size
                                            mem[_3318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        _3235 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3235] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3235 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3319 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3319] = return_data.size
                                            mem[_3319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if idx < 128:
                                    if idx <= 0:
                                        _2856 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_2856] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                        call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _2919 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2919] = return_data.size
                                            mem[_2919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _2894 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2894] = (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3befa1dcbf20f940916ca721c95793807f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2952 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2952] = return_data.size
                                                mem[_2952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _2896 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_2896] = (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3befa1dcbf20f940916ca721c957938100000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _2953 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2953] = return_data.size
                                                mem[_2953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _3160 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_3160] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                        call address(sha3(mem[_3160 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _3287 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_3287] = return_data.size
                                            mem[_3287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _3238 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3238] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3238 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3320 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3320] = return_data.size
                                                mem[_3320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _3240 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3240] = (idx << 72) + (t + 214 << 248) + 0x9400000000c4105e2340df06bf6e9358de36a86c7f00000000000000000000
                                            call address(sha3(mem[_3240 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3321 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3321] = return_data.size
                                                mem[_3321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
    if bool(_3) > 0:
        require eth.balance(this.address) <= eth.balance(this.address)
}



}
