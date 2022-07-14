contract main {




// =====================  Runtime code  =====================


#
#  - sub_bf33f986(?)
#
const sub_b00328e5(?) = eth.balance(this.address)


mapping of uint8 stor0;
mapping of uint8 stor1;
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

function sub_505c73a4(?) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    storDEAD[arg1] = 0
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
        mem[96] = 0x766f0a3c7c86345a35a0e97a4bb4370a8dd93318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766f0a3c7c86345a35a0e97a4bb4370a8dd93318585733ff60005260176009f3
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
    if Mask(1, 3, mem[128]) <= 0:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1731 = mem[(32 * idx + 1) + 96]
                    _1732 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1731) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1732] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1732] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1732 + (Mask(16, 216, _1731) >> 211) + 36
                    if address(_1731) >= 255:
                        if Mask(4, 252, _1731) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1731).mem[_1732 len 4] with:
                                 gas Mask(24, 160, _1731) >> 160 wei
                                args mem[_1732 + 4 len Mask(16, 216, _1731) >> 211]
                            mem[_1732] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1731) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1731).mem[_1732 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1731) >> 160 wei
                                args mem[_1732 + 4 len Mask(16, 216, _1731) >> 211]
                            mem[_1732] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1731) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1731) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1731)) + 108 len 20].mem[_1732 len 4] with:
                                 gas Mask(24, 160, _1731) >> 160 wei
                                args mem[_1732 + 4 len Mask(16, 216, _1731) >> 211]
                            mem[_1732] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1731) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1731)) + 108 len 20].mem[_1732 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1731) >> 160 wei
                                args mem[_1732 + 4 len Mask(16, 216, _1731) >> 211]
                            mem[_1732] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1731) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1732
                    idx = (Mask(16, 216, _1731) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1916 = mem[128]
                            require 0 < mem[96]
                            _2066 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1916) >> 48) + (Mask(8, 40, _2066) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4914 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4914] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4914 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5138 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5138] = return_data.size
                                            mem[_5138 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4979 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4979] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4979 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5234 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5234] = return_data.size
                                                mem[_5234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4981 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4981] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4981 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5235 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5235] = return_data.size
                                                mem[_5235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3698 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3698] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3810 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3810] = return_data.size
                                                mem[_3810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3731 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3731] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3860 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3860] = return_data.size
                                                    mem[_3860 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3733 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3733] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3861 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3861] = return_data.size
                                                    mem[_3861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4916 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4916] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4916 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5141 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5141] = return_data.size
                                                mem[_5141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4984 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4984] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_4984 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5236 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5236] = return_data.size
                                                    mem[_5236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4986 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4986] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_4986 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5237 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5237] = return_data.size
                                                    mem[_5237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3556 = mem[128]
                            require 0 < mem[96]
                            _3650 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3556) >> 48) + (Mask(8, 40, _3650) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5874 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5874] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5874 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6098 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6098] = return_data.size
                                            mem[_6098 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5939 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5939] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5939 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6194 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6194] = return_data.size
                                                mem[_6194 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5941 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5941] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5941 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6195 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6195] = return_data.size
                                                mem[_6195 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5238 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5238] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5410 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5410] = return_data.size
                                                mem[_5410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5331 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5331] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5460 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5460] = return_data.size
                                                    mem[_5460 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5333 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5333] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5461 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5461] = return_data.size
                                                    mem[_5461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5876 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5876] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5876 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6101 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6101] = return_data.size
                                                mem[_6101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5944 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5944] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5944 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6196 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6196] = return_data.size
                                                    mem[_6196 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5946 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5946] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5946 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6197 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6197] = return_data.size
                                                    mem[_6197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1997 = mem[128]
                            require 0 < mem[96]
                            _2082 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1997) >> 48) + (Mask(8, 40, _2082) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4918 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4918] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4918 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5144 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5144] = return_data.size
                                            mem[_5144 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4989 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4989] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4989 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5240 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5240] = return_data.size
                                                mem[_5240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4991 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4991] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4991 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5241 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5241] = return_data.size
                                                mem[_5241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3700 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3700] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3813 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3813] = return_data.size
                                                mem[_3813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3736 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3736] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3864 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3864] = return_data.size
                                                    mem[_3864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3738 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3738] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3865 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3865] = return_data.size
                                                    mem[_3865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4920 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4920] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4920 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5147 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5147] = return_data.size
                                                mem[_5147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4994 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4994] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_4994 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5242 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5242] = return_data.size
                                                    mem[_5242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4996 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4996] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_4996 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5243 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5243] = return_data.size
                                                    mem[_5243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3559 = mem[128]
                            require 0 < mem[96]
                            _3651 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3559) >> 48) + (Mask(8, 40, _3651) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5878 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5878] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5878 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6104 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6104] = return_data.size
                                            mem[_6104 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5949 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5949] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5949 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6198 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6198] = return_data.size
                                                mem[_6198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5951 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5951] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5951 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6199 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6199] = return_data.size
                                                mem[_6199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5244 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5244] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5413 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5413] = return_data.size
                                                mem[_5413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5336 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5336] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5464 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5464] = return_data.size
                                                    mem[_5464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5338 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5338] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5465 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5465] = return_data.size
                                                    mem[_5465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5880 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5880] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5880 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6107 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6107] = return_data.size
                                                mem[_6107 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5954 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5954] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5954 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6200 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6200] = return_data.size
                                                    mem[_6200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5956 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5956] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5956 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6201 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6201] = return_data.size
                                                    mem[_6201 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1734 = mem[(32 * idx + 1) + 96]
                    _1735 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1734) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1735] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1735] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1735 + (Mask(16, 216, _1734) >> 211) + 36
                    if address(_1734) >= 255:
                        if Mask(4, 252, _1734) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1734).mem[_1735 len 4] with:
                                 gas Mask(24, 160, _1734) >> 160 wei
                                args mem[_1735 + 4 len Mask(16, 216, _1734) >> 211]
                            mem[_1735] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1734) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1734).mem[_1735 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1734) >> 160 wei
                                args mem[_1735 + 4 len Mask(16, 216, _1734) >> 211]
                            mem[_1735] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1734) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1734) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1734)) + 108 len 20].mem[_1735 len 4] with:
                                 gas Mask(24, 160, _1734) >> 160 wei
                                args mem[_1735 + 4 len Mask(16, 216, _1734) >> 211]
                            mem[_1735] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1734) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1734)) + 108 len 20].mem[_1735 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1734) >> 160 wei
                                args mem[_1735 + 4 len Mask(16, 216, _1734) >> 211]
                            mem[_1735] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1734) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1735
                    idx = (Mask(16, 216, _1734) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1926 = mem[128]
                            require 0 < mem[96]
                            _2068 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1926) >> 48) + (Mask(8, 40, _2068) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4922 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4922] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4922 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5150 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5150] = return_data.size
                                            mem[_5150 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4999 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4999] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4999 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5246 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5246] = return_data.size
                                                mem[_5246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5001 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5001] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5001 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5247 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5247] = return_data.size
                                                mem[_5247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3702 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3702] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3816 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3816] = return_data.size
                                                mem[_3816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3741 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3741] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3868 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3868] = return_data.size
                                                    mem[_3868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3743 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3743] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3869 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3869] = return_data.size
                                                    mem[_3869 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4924 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4924] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4924 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5153 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5153] = return_data.size
                                                mem[_5153 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5004 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5004] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5004 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5248 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5248] = return_data.size
                                                    mem[_5248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5006 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5006] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5006 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5249 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5249] = return_data.size
                                                    mem[_5249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3562 = mem[128]
                            require 0 < mem[96]
                            _3656 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3562) >> 48) + (Mask(8, 40, _3656) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5882 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5882] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5882 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6110 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6110] = return_data.size
                                            mem[_6110 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5959 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5959] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5959 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6202 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6202] = return_data.size
                                                mem[_6202 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5961 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5961] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5961 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6203 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6203] = return_data.size
                                                mem[_6203 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5250 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5250] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5416 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5416] = return_data.size
                                                mem[_5416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5341 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5341] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5468 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5468] = return_data.size
                                                    mem[_5468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5343 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5343] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5469] = return_data.size
                                                    mem[_5469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5884 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5884] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5884 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6113 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6113] = return_data.size
                                                mem[_6113 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5964 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5964] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5964 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6204 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6204] = return_data.size
                                                    mem[_6204 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5966 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5966] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5966 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6205 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6205] = return_data.size
                                                    mem[_6205 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2006 = mem[128]
                            require 0 < mem[96]
                            _2083 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2006) >> 48) + (Mask(8, 40, _2083) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4926 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4926] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4926 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5156 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5156] = return_data.size
                                            mem[_5156 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5009 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5009] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5009 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5252 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5252] = return_data.size
                                                mem[_5252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5011 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5011] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5011 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5253 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5253] = return_data.size
                                                mem[_5253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3704 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3704] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3819 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3819] = return_data.size
                                                mem[_3819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3746 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3746] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3872 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3872] = return_data.size
                                                    mem[_3872 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3748 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3748] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3873 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3873] = return_data.size
                                                    mem[_3873 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4928 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4928] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4928 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5159 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5159] = return_data.size
                                                mem[_5159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5014 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5014] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5014 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5254 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5254] = return_data.size
                                                    mem[_5254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5016 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5016] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5016 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5255 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5255] = return_data.size
                                                    mem[_5255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3565 = mem[128]
                            require 0 < mem[96]
                            _3657 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3565) >> 48) + (Mask(8, 40, _3657) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5886 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5886] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5886 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6116 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6116] = return_data.size
                                            mem[_6116 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5969 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5969] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5969 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6206 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6206] = return_data.size
                                                mem[_6206 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5971 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5971] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5971 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6207 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6207] = return_data.size
                                                mem[_6207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5256 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5256] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5419 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5419] = return_data.size
                                                mem[_5419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5346 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5346] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5472 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5472] = return_data.size
                                                    mem[_5472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5348 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5348] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5473 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5473] = return_data.size
                                                    mem[_5473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5888 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5888] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5888 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6119 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6119] = return_data.size
                                                mem[_6119 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5974 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5974] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5974 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6208 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6208] = return_data.size
                                                    mem[_6208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5976 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5976] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5976 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6209 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6209] = return_data.size
                                                    mem[_6209 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1737 = mem[(32 * idx + 1) + 96]
                    _1738 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1737) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1738] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1738] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1738 + (Mask(16, 216, _1737) >> 211) + 36
                    if address(_1737) >= 255:
                        if Mask(4, 252, _1737) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1737).mem[_1738 len 4] with:
                                 gas Mask(24, 160, _1737) >> 160 wei
                                args mem[_1738 + 4 len Mask(16, 216, _1737) >> 211]
                            mem[_1738] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1737) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1737).mem[_1738 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1737) >> 160 wei
                                args mem[_1738 + 4 len Mask(16, 216, _1737) >> 211]
                            mem[_1738] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1737) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1737) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1737)) + 108 len 20].mem[_1738 len 4] with:
                                 gas Mask(24, 160, _1737) >> 160 wei
                                args mem[_1738 + 4 len Mask(16, 216, _1737) >> 211]
                            mem[_1738] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1737) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1737)) + 108 len 20].mem[_1738 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1737) >> 160 wei
                                args mem[_1738 + 4 len Mask(16, 216, _1737) >> 211]
                            mem[_1738] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1737) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1738
                    idx = (Mask(16, 216, _1737) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1936 = mem[128]
                            require 0 < mem[96]
                            _2070 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1936) >> 48) + (Mask(8, 40, _2070) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4930 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4930] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4930 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5162 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5162] = return_data.size
                                            mem[_5162 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5019 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5019] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5019 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5258 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5258] = return_data.size
                                                mem[_5258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5021 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5021] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5021 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5259 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5259] = return_data.size
                                                mem[_5259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3706 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3706] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3822 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3822] = return_data.size
                                                mem[_3822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3751 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3751] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3876 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3876] = return_data.size
                                                    mem[_3876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3753 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3753] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3877 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3877] = return_data.size
                                                    mem[_3877 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4932 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4932] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4932 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5165 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5165] = return_data.size
                                                mem[_5165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5024 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5024] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5024 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5260 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5260] = return_data.size
                                                    mem[_5260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5026 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5026] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5026 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5261 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5261] = return_data.size
                                                    mem[_5261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3568 = mem[128]
                            require 0 < mem[96]
                            _3662 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3568) >> 48) + (Mask(8, 40, _3662) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5890 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5890] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5890 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6122 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6122] = return_data.size
                                            mem[_6122 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5979 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5979] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5979 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6210 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6210] = return_data.size
                                                mem[_6210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5981 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5981] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5981 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6211 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6211] = return_data.size
                                                mem[_6211 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5262 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5262] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5422 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5422] = return_data.size
                                                mem[_5422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5351 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5351] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5476 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5476] = return_data.size
                                                    mem[_5476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5353 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5353] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5477 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5477] = return_data.size
                                                    mem[_5477 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5892 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5892] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5892 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6125 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6125] = return_data.size
                                                mem[_6125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5984 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5984] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5984 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6212 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6212] = return_data.size
                                                    mem[_6212 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5986 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5986] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5986 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6213 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6213] = return_data.size
                                                    mem[_6213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2015 = mem[128]
                            require 0 < mem[96]
                            _2084 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2015) >> 48) + (Mask(8, 40, _2084) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4934 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4934] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4934 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5168 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5168] = return_data.size
                                            mem[_5168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5029 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5029] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5029 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5264 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5264] = return_data.size
                                                mem[_5264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5031 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5031] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5031 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5265 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5265] = return_data.size
                                                mem[_5265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3708 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3708] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3825 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3825] = return_data.size
                                                mem[_3825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3756 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3756] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3880 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3880] = return_data.size
                                                    mem[_3880 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3758 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3758] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3881 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3881] = return_data.size
                                                    mem[_3881 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4936 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4936] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4936 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5171 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5171] = return_data.size
                                                mem[_5171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5034 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5034] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5034 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5266 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5266] = return_data.size
                                                    mem[_5266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5036 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5036] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5036 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5267 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5267] = return_data.size
                                                    mem[_5267 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3571 = mem[128]
                            require 0 < mem[96]
                            _3663 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3571) >> 48) + (Mask(8, 40, _3663) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5894 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5894] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5894 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6128 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6128] = return_data.size
                                            mem[_6128 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5989 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5989] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5989 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6214 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6214] = return_data.size
                                                mem[_6214 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5991 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5991] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5991 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6215 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6215] = return_data.size
                                                mem[_6215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5268 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5268] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5425 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5425] = return_data.size
                                                mem[_5425 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5356 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5356] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5480 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5480] = return_data.size
                                                    mem[_5480 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5358 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5358] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5481 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5481] = return_data.size
                                                    mem[_5481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5896 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5896] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5896 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6131 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6131] = return_data.size
                                                mem[_6131 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5994 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5994] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5994 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6216 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6216] = return_data.size
                                                    mem[_6216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5996 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5996] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5996 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6217 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6217] = return_data.size
                                                    mem[_6217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1740 = mem[(32 * idx + 1) + 96]
                    _1741 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1740) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1741] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1741] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1741 + (Mask(16, 216, _1740) >> 211) + 36
                    if address(_1740) >= 255:
                        if Mask(4, 252, _1740) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1740).mem[_1741 len 4] with:
                                 gas Mask(24, 160, _1740) >> 160 wei
                                args mem[_1741 + 4 len Mask(16, 216, _1740) >> 211]
                            mem[_1741] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1740) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1740).mem[_1741 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1740) >> 160 wei
                                args mem[_1741 + 4 len Mask(16, 216, _1740) >> 211]
                            mem[_1741] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1740) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1740) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1740)) + 108 len 20].mem[_1741 len 4] with:
                                 gas Mask(24, 160, _1740) >> 160 wei
                                args mem[_1741 + 4 len Mask(16, 216, _1740) >> 211]
                            mem[_1741] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1740) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1740)) + 108 len 20].mem[_1741 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1740) >> 160 wei
                                args mem[_1741 + 4 len Mask(16, 216, _1740) >> 211]
                            mem[_1741] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1740) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1741
                    idx = (Mask(16, 216, _1740) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1946 = mem[128]
                            require 0 < mem[96]
                            _2072 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1946) >> 48) + (Mask(8, 40, _2072) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4938 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4938] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4938 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5174 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5174] = return_data.size
                                            mem[_5174 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5039 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5039] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5039 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5270 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5270] = return_data.size
                                                mem[_5270 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5041 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5041] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5041 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5271 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5271] = return_data.size
                                                mem[_5271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3710 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3710] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3828 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3828] = return_data.size
                                                mem[_3828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3761 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3761] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3884 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3884] = return_data.size
                                                    mem[_3884 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3763 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3763] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3885 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3885] = return_data.size
                                                    mem[_3885 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4940 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4940] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4940 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5177 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5177] = return_data.size
                                                mem[_5177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5044 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5044] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5044 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5272 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5272] = return_data.size
                                                    mem[_5272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5046 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5046] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5046 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5273 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5273] = return_data.size
                                                    mem[_5273 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3574 = mem[128]
                            require 0 < mem[96]
                            _3668 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3574) >> 48) + (Mask(8, 40, _3668) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5898 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5898] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5898 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6134 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6134] = return_data.size
                                            mem[_6134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5999 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5999] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5999 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6218 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6218] = return_data.size
                                                mem[_6218 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6001 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6001] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6001 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6219 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6219] = return_data.size
                                                mem[_6219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5274 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5274] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5428 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5428] = return_data.size
                                                mem[_5428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5361 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5361] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5484 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5484] = return_data.size
                                                    mem[_5484 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5363 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5363] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5485 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5485] = return_data.size
                                                    mem[_5485 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5900 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5900] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5900 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6137 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6137] = return_data.size
                                                mem[_6137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6004 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6004] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6004 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6220 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6220] = return_data.size
                                                    mem[_6220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6006 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6006] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6006 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6221 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6221] = return_data.size
                                                    mem[_6221 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2024 = mem[128]
                            require 0 < mem[96]
                            _2085 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2024) >> 48) + (Mask(8, 40, _2085) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4942 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4942] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4942 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5180 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5180] = return_data.size
                                            mem[_5180 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5049] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5049 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5276 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5276] = return_data.size
                                                mem[_5276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5051 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5051] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5051 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5277 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5277] = return_data.size
                                                mem[_5277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3712 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3712] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3831 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3831] = return_data.size
                                                mem[_3831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3766 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3766] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3888 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3888] = return_data.size
                                                    mem[_3888 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3768 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3768] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3889 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3889] = return_data.size
                                                    mem[_3889 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4944 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4944] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4944 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5183 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5183] = return_data.size
                                                mem[_5183 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5054 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5054] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5054 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5278 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5278] = return_data.size
                                                    mem[_5278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5056 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5056] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5056 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5279 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5279] = return_data.size
                                                    mem[_5279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3577 = mem[128]
                            require 0 < mem[96]
                            _3669 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3577) >> 48) + (Mask(8, 40, _3669) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5902 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5902] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5902 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6140 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6140] = return_data.size
                                            mem[_6140 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6009 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6009] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6009 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6222 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6222] = return_data.size
                                                mem[_6222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6011 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6011] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6011 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6223 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6223] = return_data.size
                                                mem[_6223 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5280 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5280] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5431 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5431] = return_data.size
                                                mem[_5431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5366 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5366] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5488 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5488] = return_data.size
                                                    mem[_5488 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5368 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5368] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5489 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5489] = return_data.size
                                                    mem[_5489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5904 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5904] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5904 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6143 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6143] = return_data.size
                                                mem[_6143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6014 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6014] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6014 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6224 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6224] = return_data.size
                                                    mem[_6224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6016 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6016] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6016 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6225 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6225] = return_data.size
                                                    mem[_6225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    else:
        require storDEAD[mem[148 len 2]] <= 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1743 = mem[(32 * idx + 1) + 96]
                    _1744 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1743) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1744] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1744] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1744 + (Mask(16, 216, _1743) >> 211) + 36
                    if address(_1743) >= 255:
                        if Mask(4, 252, _1743) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1743).mem[_1744 len 4] with:
                                 gas Mask(24, 160, _1743) >> 160 wei
                                args mem[_1744 + 4 len Mask(16, 216, _1743) >> 211]
                            mem[_1744] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1743) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1743).mem[_1744 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1743) >> 160 wei
                                args mem[_1744 + 4 len Mask(16, 216, _1743) >> 211]
                            mem[_1744] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1743) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1743) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1743)) + 108 len 20].mem[_1744 len 4] with:
                                 gas Mask(24, 160, _1743) >> 160 wei
                                args mem[_1744 + 4 len Mask(16, 216, _1743) >> 211]
                            mem[_1744] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1743) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1743)) + 108 len 20].mem[_1744 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1743) >> 160 wei
                                args mem[_1744 + 4 len Mask(16, 216, _1743) >> 211]
                            mem[_1744] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1743) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1744
                    idx = (Mask(16, 216, _1743) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1956 = mem[128]
                            require 0 < mem[96]
                            _2074 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1956) >> 48) + (Mask(8, 40, _2074) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4946 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4946] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4946 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5186 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5186] = return_data.size
                                            mem[_5186 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5059 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5059] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5059 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5282 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5282] = return_data.size
                                                mem[_5282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5061 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5061] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5061 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5283 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5283] = return_data.size
                                                mem[_5283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3714 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3714] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3834 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3834] = return_data.size
                                                mem[_3834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3771 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3771] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3892 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3892] = return_data.size
                                                    mem[_3892 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3773 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3773] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3893] = return_data.size
                                                    mem[_3893 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4948 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4948] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4948 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5189 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5189] = return_data.size
                                                mem[_5189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5064 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5064] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5064 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5284 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5284] = return_data.size
                                                    mem[_5284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5066 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5066] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5066 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5285 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5285] = return_data.size
                                                    mem[_5285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3580 = mem[128]
                            require 0 < mem[96]
                            _3674 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3580) >> 48) + (Mask(8, 40, _3674) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5906 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5906] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5906 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6146 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6146] = return_data.size
                                            mem[_6146 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6019 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6019] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6019 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6226 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6226] = return_data.size
                                                mem[_6226 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6021 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6021] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6021 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6227 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6227] = return_data.size
                                                mem[_6227 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5286 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5286] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5434 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5434] = return_data.size
                                                mem[_5434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5371 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5371] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5492 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5492] = return_data.size
                                                    mem[_5492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5373 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5373] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5493 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5493] = return_data.size
                                                    mem[_5493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5908 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5908] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5908 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6149 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6149] = return_data.size
                                                mem[_6149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6024 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6024] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6024 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6228 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6228] = return_data.size
                                                    mem[_6228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6026 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6026] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6026 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6229 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6229] = return_data.size
                                                    mem[_6229 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2033 = mem[128]
                            require 0 < mem[96]
                            _2086 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2033) >> 48) + (Mask(8, 40, _2086) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4950 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4950] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4950 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5192 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5192] = return_data.size
                                            mem[_5192 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5069 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5069] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5069 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5288 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5288] = return_data.size
                                                mem[_5288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5071] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5071 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5289 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5289] = return_data.size
                                                mem[_5289 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3716 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3716] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3837 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3837] = return_data.size
                                                mem[_3837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3776 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3776] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3896 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3896] = return_data.size
                                                    mem[_3896 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3778 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3778] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3897 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3897] = return_data.size
                                                    mem[_3897 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4952 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4952] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4952 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5195 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5195] = return_data.size
                                                mem[_5195 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5074 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5074] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5074 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5290 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5290] = return_data.size
                                                    mem[_5290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5076 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5076] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5076 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5291 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5291] = return_data.size
                                                    mem[_5291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3583 = mem[128]
                            require 0 < mem[96]
                            _3675 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3583) >> 48) + (Mask(8, 40, _3675) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5910 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5910] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5910 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6152 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6152] = return_data.size
                                            mem[_6152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6029 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6029] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6029 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6230 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6230] = return_data.size
                                                mem[_6230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6031 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6031] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6031 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6231 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6231] = return_data.size
                                                mem[_6231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5292 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5292] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5437 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5437] = return_data.size
                                                mem[_5437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5376 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5376] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5496 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5496] = return_data.size
                                                    mem[_5496 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5378 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5378] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5497 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5497] = return_data.size
                                                    mem[_5497 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5912 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5912] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5912 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6155 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6155] = return_data.size
                                                mem[_6155 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6034 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6034] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6034 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6232 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6232] = return_data.size
                                                    mem[_6232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6036 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6036] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6036 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6233 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6233] = return_data.size
                                                    mem[_6233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1746 = mem[(32 * idx + 1) + 96]
                    _1747 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1746) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1747] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1747] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1747 + (Mask(16, 216, _1746) >> 211) + 36
                    if address(_1746) >= 255:
                        if Mask(4, 252, _1746) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1746).mem[_1747 len 4] with:
                                 gas Mask(24, 160, _1746) >> 160 wei
                                args mem[_1747 + 4 len Mask(16, 216, _1746) >> 211]
                            mem[_1747] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1746) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1746).mem[_1747 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1746) >> 160 wei
                                args mem[_1747 + 4 len Mask(16, 216, _1746) >> 211]
                            mem[_1747] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1746) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1746) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1746)) + 108 len 20].mem[_1747 len 4] with:
                                 gas Mask(24, 160, _1746) >> 160 wei
                                args mem[_1747 + 4 len Mask(16, 216, _1746) >> 211]
                            mem[_1747] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1746) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1746)) + 108 len 20].mem[_1747 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1746) >> 160 wei
                                args mem[_1747 + 4 len Mask(16, 216, _1746) >> 211]
                            mem[_1747] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1746) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1747
                    idx = (Mask(16, 216, _1746) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1966 = mem[128]
                            require 0 < mem[96]
                            _2076 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1966) >> 48) + (Mask(8, 40, _2076) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4954 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4954] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4954 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5198 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5198] = return_data.size
                                            mem[_5198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5079 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5079] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5079 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5294 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5294] = return_data.size
                                                mem[_5294 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5081 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5081] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5081 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5295 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5295] = return_data.size
                                                mem[_5295 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3718 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3718] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3840 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3840] = return_data.size
                                                mem[_3840 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3781 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3781] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3900 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3900] = return_data.size
                                                    mem[_3900 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3783 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3783] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3901 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3901] = return_data.size
                                                    mem[_3901 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4956 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4956] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4956 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5201 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5201] = return_data.size
                                                mem[_5201 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5084 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5084] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5084 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5296 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5296] = return_data.size
                                                    mem[_5296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5086 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5086] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5086 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5297 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5297] = return_data.size
                                                    mem[_5297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3586 = mem[128]
                            require 0 < mem[96]
                            _3680 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3586) >> 48) + (Mask(8, 40, _3680) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5914 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5914] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5914 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6158 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6158] = return_data.size
                                            mem[_6158 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6039 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6039] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6039 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6234 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6234] = return_data.size
                                                mem[_6234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6041 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6041] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6041 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6235 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6235] = return_data.size
                                                mem[_6235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5298 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5298] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5440 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5440] = return_data.size
                                                mem[_5440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5381 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5381] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5500 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5500] = return_data.size
                                                    mem[_5500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5383 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5383] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5501 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5501] = return_data.size
                                                    mem[_5501 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5916 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5916] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5916 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6161 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6161] = return_data.size
                                                mem[_6161 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6044 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6044] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6044 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6236 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6236] = return_data.size
                                                    mem[_6236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6046 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6046] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6046 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6237 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6237] = return_data.size
                                                    mem[_6237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2042 = mem[128]
                            require 0 < mem[96]
                            _2087 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2042) >> 48) + (Mask(8, 40, _2087) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4958 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4958] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4958 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5204 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5204] = return_data.size
                                            mem[_5204 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5089 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5089] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5089 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5300 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5300] = return_data.size
                                                mem[_5300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5091 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5091] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5091 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5301 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5301] = return_data.size
                                                mem[_5301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3720 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3720] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3843 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3843] = return_data.size
                                                mem[_3843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3786 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3786] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3904 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3904] = return_data.size
                                                    mem[_3904 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3788 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3788] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3905 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3905] = return_data.size
                                                    mem[_3905 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4960 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4960] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4960 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5207 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5207] = return_data.size
                                                mem[_5207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5094 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5094] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5094 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5302 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5302] = return_data.size
                                                    mem[_5302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5096 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5096] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5096 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5303 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5303] = return_data.size
                                                    mem[_5303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3589 = mem[128]
                            require 0 < mem[96]
                            _3681 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3589) >> 48) + (Mask(8, 40, _3681) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5918 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5918] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5918 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6164 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6164] = return_data.size
                                            mem[_6164 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6049 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6049] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6049 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6238 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6238] = return_data.size
                                                mem[_6238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6051 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6051] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6051 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6239] = return_data.size
                                                mem[_6239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5304 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5304] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5443 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5443] = return_data.size
                                                mem[_5443 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5386 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5386] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5504 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5504] = return_data.size
                                                    mem[_5504 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5388 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5388] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5505 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5505] = return_data.size
                                                    mem[_5505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5920 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5920] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5920 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6167 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6167] = return_data.size
                                                mem[_6167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6054 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6054] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6054 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6240 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6240] = return_data.size
                                                    mem[_6240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6056 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6056] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6056 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6241 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6241] = return_data.size
                                                    mem[_6241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1749 = mem[(32 * idx + 1) + 96]
                    _1750 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1749) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1750] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1750] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1750 + (Mask(16, 216, _1749) >> 211) + 36
                    if address(_1749) >= 255:
                        if Mask(4, 252, _1749) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1749).mem[_1750 len 4] with:
                                 gas Mask(24, 160, _1749) >> 160 wei
                                args mem[_1750 + 4 len Mask(16, 216, _1749) >> 211]
                            mem[_1750] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1749) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1749).mem[_1750 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1749) >> 160 wei
                                args mem[_1750 + 4 len Mask(16, 216, _1749) >> 211]
                            mem[_1750] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1749) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1749) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1749)) + 108 len 20].mem[_1750 len 4] with:
                                 gas Mask(24, 160, _1749) >> 160 wei
                                args mem[_1750 + 4 len Mask(16, 216, _1749) >> 211]
                            mem[_1750] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1749) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1749)) + 108 len 20].mem[_1750 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1749) >> 160 wei
                                args mem[_1750 + 4 len Mask(16, 216, _1749) >> 211]
                            mem[_1750] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1749) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1750
                    idx = (Mask(16, 216, _1749) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1976 = mem[128]
                            require 0 < mem[96]
                            _2078 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1976) >> 48) + (Mask(8, 40, _2078) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4962 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4962] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4962 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5210 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5210] = return_data.size
                                            mem[_5210 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5099 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5099] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5099 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5306 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5306] = return_data.size
                                                mem[_5306 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5101 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5101] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5101 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5307 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5307] = return_data.size
                                                mem[_5307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3722 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3722] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3846 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3846] = return_data.size
                                                mem[_3846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3791 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3791] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3908 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3908] = return_data.size
                                                    mem[_3908 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3793 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3793] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3909 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3909] = return_data.size
                                                    mem[_3909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4964 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4964] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4964 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5213 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5213] = return_data.size
                                                mem[_5213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5104 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5104] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5104 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5308 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5308] = return_data.size
                                                    mem[_5308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5106 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5106] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5106 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5309 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5309] = return_data.size
                                                    mem[_5309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3592 = mem[128]
                            require 0 < mem[96]
                            _3686 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3592) >> 48) + (Mask(8, 40, _3686) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5922 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5922] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5922 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6170 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6170] = return_data.size
                                            mem[_6170 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6059 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6059] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6059 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6242 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6242] = return_data.size
                                                mem[_6242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6061 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6061] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6061 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6243 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6243] = return_data.size
                                                mem[_6243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5310 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5310] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5446 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5446] = return_data.size
                                                mem[_5446 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5391 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5391] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5508 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5508] = return_data.size
                                                    mem[_5508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5393 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5393] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5509 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5509] = return_data.size
                                                    mem[_5509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5924 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5924] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5924 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6173 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6173] = return_data.size
                                                mem[_6173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6064 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6064] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6064 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6244 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6244] = return_data.size
                                                    mem[_6244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6066 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6066] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6066 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6245 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6245] = return_data.size
                                                    mem[_6245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2051 = mem[128]
                            require 0 < mem[96]
                            _2088 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2051) >> 48) + (Mask(8, 40, _2088) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4966 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4966] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4966 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5216 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5216] = return_data.size
                                            mem[_5216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5109 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5109] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5109 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5312 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5312] = return_data.size
                                                mem[_5312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5111 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5111] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5111 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5313 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5313] = return_data.size
                                                mem[_5313 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3724 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3724] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3849 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3849] = return_data.size
                                                mem[_3849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3796 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3796] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3912 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3912] = return_data.size
                                                    mem[_3912 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3798 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3798] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3913 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3913] = return_data.size
                                                    mem[_3913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4968 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4968] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4968 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5219 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5219] = return_data.size
                                                mem[_5219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5114 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5114] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5114 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5314 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5314] = return_data.size
                                                    mem[_5314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5116 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5116] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5116 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5315 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5315] = return_data.size
                                                    mem[_5315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3595 = mem[128]
                            require 0 < mem[96]
                            _3687 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3595) >> 48) + (Mask(8, 40, _3687) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5926 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5926] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5926 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6176 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6176] = return_data.size
                                            mem[_6176 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6069 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6069] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6069 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6246 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6246] = return_data.size
                                                mem[_6246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6071 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6071] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6071 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6247 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6247] = return_data.size
                                                mem[_6247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5316 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5316] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5449 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5449] = return_data.size
                                                mem[_5449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5396 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5396] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5512 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5512] = return_data.size
                                                    mem[_5512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5398 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5398] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5513 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5513] = return_data.size
                                                    mem[_5513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5928 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5928] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5928 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6179 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6179] = return_data.size
                                                mem[_6179 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6074 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6074] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6074 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6248 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6248] = return_data.size
                                                    mem[_6248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6076 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6076] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6076 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6249 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6249] = return_data.size
                                                    mem[_6249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1752 = mem[(32 * idx + 1) + 96]
                    _1753 = mem[64]
                    mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                    s = 4
                    while s < (Mask(16, 216, _1752) >> 211) + 4:
                        if bool(Mask(16, 240, mem[(32 * idx + 3) + s + 92]) or mem[(32 * idx + 3) + s + 95 len 29]) or mem[(32 * idx + 3) + s + 92] <= 0:
                            mem[s + _1753] = mem[(32 * idx + 3) + s + 92]
                        else:
                            mem[s + _1753] = mem[(Mask(24, 232, mem[(32 * idx + 3) + s + 92]) >> 227) + 96]
                        s = s + 32
                        continue 
                    mem[64] = _1753 + (Mask(16, 216, _1752) >> 211) + 36
                    if address(_1752) >= 255:
                        if Mask(4, 252, _1752) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate address(_1752).mem[_1753 len 4] with:
                                 gas Mask(24, 160, _1752) >> 160 wei
                                args mem[_1753 + 4 len Mask(16, 216, _1752) >> 211]
                            mem[_1753] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1752) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call address(_1752).mem[_1753 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1752) >> 160 wei
                                args mem[_1753 + 4 len Mask(16, 216, _1752) >> 211]
                            mem[_1753] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1752) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        if Mask(4, 252, _1752) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                            delegate mem[(32 * address(_1752)) + 108 len 20].mem[_1753 len 4] with:
                                 gas Mask(24, 160, _1752) >> 160 wei
                                args mem[_1753 + 4 len Mask(16, 216, _1752) >> 211]
                            mem[_1753] = delegate.return_data[0]
                            require delegate.return_code
                            if Mask(4, 248, _1752) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                        else:
                            call mem[(32 * address(_1752)) + 108 len 20].mem[_1753 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1752) >> 160 wei
                                args mem[_1753 + 4 len Mask(16, 216, _1752) >> 211]
                            mem[_1753] = ext_call.return_data[0]
                            require ext_call.success
                            if Mask(4, 248, _1752) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1753
                    idx = (Mask(16, 216, _1752) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1986 = mem[128]
                            require 0 < mem[96]
                            _2080 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1986) >> 48) + (Mask(8, 40, _2080) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4970 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4970] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4970 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5222 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5222] = return_data.size
                                            mem[_5222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5119 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5119] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5119 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5318 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5318] = return_data.size
                                                mem[_5318 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5121 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5121] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5121 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5319 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5319] = return_data.size
                                                mem[_5319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3726 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3726] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3852 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3852] = return_data.size
                                                mem[_3852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3801 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3801] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3916 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3916] = return_data.size
                                                    mem[_3916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3803 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3803] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3917 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3917] = return_data.size
                                                    mem[_3917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4972 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4972] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4972 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5225 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5225] = return_data.size
                                                mem[_5225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5124 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5124] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5124 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5320 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5320] = return_data.size
                                                    mem[_5320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5126 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5126] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5126 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5321 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5321] = return_data.size
                                                    mem[_5321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3598 = mem[128]
                            require 0 < mem[96]
                            _3692 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3598) >> 48) + (Mask(8, 40, _3692) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5930 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5930] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5930 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6182 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6182] = return_data.size
                                            mem[_6182 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6079 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6079] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6079 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6250 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6250] = return_data.size
                                                mem[_6250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6081 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6081] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6081 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6251 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6251] = return_data.size
                                                mem[_6251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5322 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5322] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5452 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5452] = return_data.size
                                                mem[_5452 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5401 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5401] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5516 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5516] = return_data.size
                                                    mem[_5516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5403 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5403] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5517 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5517] = return_data.size
                                                    mem[_5517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5932 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5932] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5932 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6185 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6185] = return_data.size
                                                mem[_6185 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6084 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6084] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6084 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6252 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6252] = return_data.size
                                                    mem[_6252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6086 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6086] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6086 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6253 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6253] = return_data.size
                                                    mem[_6253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2060 = mem[128]
                            require 0 < mem[96]
                            _2089 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2060) >> 48) + (Mask(8, 40, _2089) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _4974 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4974] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_4974 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5228 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5228] = return_data.size
                                            mem[_5228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5129 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5129] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5129 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5324 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5324] = return_data.size
                                                mem[_5324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5131 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5131] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5131 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5325 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5325] = return_data.size
                                                mem[_5325 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3728 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3728] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3855 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3855] = return_data.size
                                                mem[_3855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3806 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3806] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3920 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3920] = return_data.size
                                                    mem[_3920 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3808 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3808] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3921 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3921] = return_data.size
                                                    mem[_3921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _4976 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4976] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_4976 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5231 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5231] = return_data.size
                                                mem[_5231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5134 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5134] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5134 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5326 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5326] = return_data.size
                                                    mem[_5326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5136 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5136] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5136 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5327 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5327] = return_data.size
                                                    mem[_5327 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3601 = mem[128]
                            require 0 < mem[96]
                            _3693 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3601) >> 48) + (Mask(8, 40, _3693) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5934 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5934] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5934 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6188 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6188] = return_data.size
                                            mem[_6188 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6089 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6089] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6089 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6254 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6254] = return_data.size
                                                mem[_6254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6091 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6091] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6091 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6255 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6255] = return_data.size
                                                mem[_6255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5328 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5328] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5455 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5455] = return_data.size
                                                mem[_5455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5406 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5406] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5520 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5520] = return_data.size
                                                    mem[_5520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5408 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5408] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5521 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5521] = return_data.size
                                                    mem[_5521 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5936 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5936] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5936 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6191 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6191] = return_data.size
                                                mem[_6191 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6094 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6094] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6094 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6256 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6256] = return_data.size
                                                    mem[_6256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6096 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6096] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6096 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6257 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6257] = return_data.size
                                                    mem[_6257 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    return 0
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
    if Mask(1, 3, mem[128]) <= 0:
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1803 = mem[(32 * idx + 1) + 96]
                    _1804 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1803) >> 211:
                            mem[s + _1804] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1804 + (Mask(16, 216, _1803) >> 211) + 32
                        if Mask(4, 252, _1803) == '0':
                            codecall address(_1803).mem[_1804 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1803) >> 160 wei
                                args mem[_1804 + 4 len (Mask(16, 216, _1803) >> 211) - 4]
                            mem[_1804] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1803) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1803) == ' ':
                                staticcall address(_1803).mem[_1804 len 4] with:
                                        gas Mask(24, 160, _1803) >> 160 wei
                                       args mem[_1804 + 4 len (Mask(16, 216, _1803) >> 211) - 4]
                                mem[_1804] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1803) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1803) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1803).mem[_1804 len 4] with:
                                         gas Mask(24, 160, _1803) >> 160 wei
                                        args mem[_1804 + 4 len (Mask(16, 216, _1803) >> 211) - 4]
                                    mem[_1804] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1803) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1803).mem[_1804 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1803) >> 160 wei
                                        args mem[_1804 + 4 len (Mask(16, 216, _1803) >> 211) - 4]
                                    mem[_1804] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1803) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1803) >> 211) + 4:
                            mem[s + _1804] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1804 + (Mask(16, 216, _1803) >> 211) + 36
                        if Mask(4, 252, _1803) == '0':
                            codecall address(_1803).mem[_1804 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1803) >> 160 wei
                                args mem[_1804 + 4 len Mask(16, 216, _1803) >> 211]
                            mem[_1804] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1803) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1803) == ' ':
                                staticcall address(_1803).mem[_1804 len 4] with:
                                        gas Mask(24, 160, _1803) >> 160 wei
                                       args mem[_1804 + 4 len Mask(16, 216, _1803) >> 211]
                                mem[_1804] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1803) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1803) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1803).mem[_1804 len 4] with:
                                         gas Mask(24, 160, _1803) >> 160 wei
                                        args mem[_1804 + 4 len Mask(16, 216, _1803) >> 211]
                                    mem[_1804] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1803) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1803).mem[_1804 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1803) >> 160 wei
                                        args mem[_1804 + 4 len Mask(16, 216, _1803) >> 211]
                                    mem[_1804] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1803) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1804
                    idx = (Mask(16, 216, _1803) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1980 = mem[128]
                            require 0 < mem[96]
                            _2114 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1980) >> 48) + (Mask(8, 40, _2114) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5130 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5130] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5130 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5354 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5354] = return_data.size
                                            mem[_5354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5195 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5195] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5195 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5450 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5450] = return_data.size
                                                mem[_5450 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5197 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5197] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5197 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5451 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5451] = return_data.size
                                                mem[_5451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3914 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3914] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4026 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4026] = return_data.size
                                                mem[_4026 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3947 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3947] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4076 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4076] = return_data.size
                                                    mem[_4076 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3949 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3949] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4077 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4077] = return_data.size
                                                    mem[_4077 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5132 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5132] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5132 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5357 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5357] = return_data.size
                                                mem[_5357 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5200 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5200] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5200 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5452 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5452] = return_data.size
                                                    mem[_5452 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5202 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5202] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5202 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5453 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5453] = return_data.size
                                                    mem[_5453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3692 = mem[128]
                            require 0 < mem[96]
                            _3802 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3692) >> 48) + (Mask(8, 40, _3802) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6090 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6090] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6090 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6314 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6314] = return_data.size
                                            mem[_6314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6155 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6155] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6155 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6410 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6410] = return_data.size
                                                mem[_6410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6157 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6157] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6157 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6411 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6411] = return_data.size
                                                mem[_6411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5454 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5454] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5626 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5626] = return_data.size
                                                mem[_5626 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5547 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5547] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5676 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5676] = return_data.size
                                                    mem[_5676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5549 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5549] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5677 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5677] = return_data.size
                                                    mem[_5677 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6092 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6092] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6092 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6317] = return_data.size
                                                mem[_6317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6160 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6160] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6160 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6412 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6412] = return_data.size
                                                    mem[_6412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6162 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6162] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6162 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6413 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6413] = return_data.size
                                                    mem[_6413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2045 = mem[128]
                            require 0 < mem[96]
                            _2162 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2045) >> 48) + (Mask(8, 40, _2162) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5134 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5134] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5134 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5360 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5360] = return_data.size
                                            mem[_5360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5205 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5205] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5205 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5456 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5456] = return_data.size
                                                mem[_5456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5207 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5207] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5207 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5457 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5457] = return_data.size
                                                mem[_5457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3916 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3916] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4029 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4029] = return_data.size
                                                mem[_4029 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3952 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3952] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4080 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4080] = return_data.size
                                                    mem[_4080 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3954 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3954] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4081 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4081] = return_data.size
                                                    mem[_4081 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5136 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5136] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5136 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5363 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5363] = return_data.size
                                                mem[_5363 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5210 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5210] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5210 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5458 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5458] = return_data.size
                                                    mem[_5458 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5212 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5212] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5212 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5459 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5459] = return_data.size
                                                    mem[_5459 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3695 = mem[128]
                            require 0 < mem[96]
                            _3803 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3695) >> 48) + (Mask(8, 40, _3803) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6094 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6094] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6094 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6320 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6320] = return_data.size
                                            mem[_6320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6165 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6165] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6165 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6414 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6414] = return_data.size
                                                mem[_6414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6167 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6167] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6167 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6415 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6415] = return_data.size
                                                mem[_6415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5460 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5460] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5629 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5629] = return_data.size
                                                mem[_5629 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5552 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5552] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5680 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5680] = return_data.size
                                                    mem[_5680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5554 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5554] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5681 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5681] = return_data.size
                                                    mem[_5681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6096 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6096] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6096 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6323 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6323] = return_data.size
                                                mem[_6323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6170 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6170] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6170 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6416 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6416] = return_data.size
                                                    mem[_6416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6172 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6172] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6172 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6417 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6417] = return_data.size
                                                    mem[_6417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1806 = mem[(32 * idx + 1) + 96]
                    _1807 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1806) >> 211:
                            mem[s + _1807] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1807 + (Mask(16, 216, _1806) >> 211) + 32
                        if Mask(4, 252, _1806) == '0':
                            codecall address(_1806).mem[_1807 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1806) >> 160 wei
                                args mem[_1807 + 4 len (Mask(16, 216, _1806) >> 211) - 4]
                            mem[_1807] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1806) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1806) == ' ':
                                staticcall address(_1806).mem[_1807 len 4] with:
                                        gas Mask(24, 160, _1806) >> 160 wei
                                       args mem[_1807 + 4 len (Mask(16, 216, _1806) >> 211) - 4]
                                mem[_1807] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1806) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1806) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1806).mem[_1807 len 4] with:
                                         gas Mask(24, 160, _1806) >> 160 wei
                                        args mem[_1807 + 4 len (Mask(16, 216, _1806) >> 211) - 4]
                                    mem[_1807] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1806) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1806).mem[_1807 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1806) >> 160 wei
                                        args mem[_1807 + 4 len (Mask(16, 216, _1806) >> 211) - 4]
                                    mem[_1807] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1806) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1806) >> 211) + 4:
                            mem[s + _1807] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1807 + (Mask(16, 216, _1806) >> 211) + 36
                        if Mask(4, 252, _1806) == '0':
                            codecall address(_1806).mem[_1807 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1806) >> 160 wei
                                args mem[_1807 + 4 len Mask(16, 216, _1806) >> 211]
                            mem[_1807] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1806) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1806) == ' ':
                                staticcall address(_1806).mem[_1807 len 4] with:
                                        gas Mask(24, 160, _1806) >> 160 wei
                                       args mem[_1807 + 4 len Mask(16, 216, _1806) >> 211]
                                mem[_1807] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1806) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1806) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1806).mem[_1807 len 4] with:
                                         gas Mask(24, 160, _1806) >> 160 wei
                                        args mem[_1807 + 4 len Mask(16, 216, _1806) >> 211]
                                    mem[_1807] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1806) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1806).mem[_1807 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1806) >> 160 wei
                                        args mem[_1807 + 4 len Mask(16, 216, _1806) >> 211]
                                    mem[_1807] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1806) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1807
                    idx = (Mask(16, 216, _1806) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1988 = mem[128]
                            require 0 < mem[96]
                            _2120 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1988) >> 48) + (Mask(8, 40, _2120) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5138 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5138] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5138 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5366 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5366] = return_data.size
                                            mem[_5366 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5215 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5215] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5215 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5462 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5462] = return_data.size
                                                mem[_5462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5217 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5217] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5217 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5463 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5463] = return_data.size
                                                mem[_5463 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3918 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3918] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4032 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4032] = return_data.size
                                                mem[_4032 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3957 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3957] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4084 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4084] = return_data.size
                                                    mem[_4084 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3959 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3959] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4085 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4085] = return_data.size
                                                    mem[_4085 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5140 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5140] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5140 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5369 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5369] = return_data.size
                                                mem[_5369 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5220 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5220] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5220 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5464 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5464] = return_data.size
                                                    mem[_5464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5222 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5222] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5222 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5465 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5465] = return_data.size
                                                    mem[_5465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3700 = mem[128]
                            require 0 < mem[96]
                            _3808 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3700) >> 48) + (Mask(8, 40, _3808) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6098 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6098] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6098 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6326 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6326] = return_data.size
                                            mem[_6326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6175 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6175] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6175 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6418 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6418] = return_data.size
                                                mem[_6418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6177 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6177] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6177 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6419 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6419] = return_data.size
                                                mem[_6419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5466 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5466] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5632 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5632] = return_data.size
                                                mem[_5632 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5557 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5557] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5684 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5684] = return_data.size
                                                    mem[_5684 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5559 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5559] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5685 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5685] = return_data.size
                                                    mem[_5685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6100 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6100] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6100 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6329 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6329] = return_data.size
                                                mem[_6329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6180 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6180] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6180 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6420 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6420] = return_data.size
                                                    mem[_6420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6182 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6182] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6182 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6421 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6421] = return_data.size
                                                    mem[_6421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2054 = mem[128]
                            require 0 < mem[96]
                            _2171 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2054) >> 48) + (Mask(8, 40, _2171) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5142 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5142] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5142 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5372 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5372] = return_data.size
                                            mem[_5372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5225 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5225] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5225 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5468 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5468] = return_data.size
                                                mem[_5468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5227 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5227] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5227 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5469 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5469] = return_data.size
                                                mem[_5469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3920 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3920] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4035 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4035] = return_data.size
                                                mem[_4035 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3962 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3962] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4088 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4088] = return_data.size
                                                    mem[_4088 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3964 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3964] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4089 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4089] = return_data.size
                                                    mem[_4089 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5144 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5144] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5144 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5375 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5375] = return_data.size
                                                mem[_5375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5230 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5230] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5230 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5470 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5470] = return_data.size
                                                    mem[_5470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5232 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5232] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5232 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5471 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5471] = return_data.size
                                                    mem[_5471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3703 = mem[128]
                            require 0 < mem[96]
                            _3809 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3703) >> 48) + (Mask(8, 40, _3809) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6102 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6102] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6102 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6332 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6332] = return_data.size
                                            mem[_6332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6185 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6185] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6185 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6422 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6422] = return_data.size
                                                mem[_6422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6187 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6187] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6187 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6423 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6423] = return_data.size
                                                mem[_6423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5472 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5472] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5635 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5635] = return_data.size
                                                mem[_5635 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5562 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5562] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5688 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5688] = return_data.size
                                                    mem[_5688 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5564 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5564] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5689 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5689] = return_data.size
                                                    mem[_5689 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6104 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6104] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6104 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6335 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6335] = return_data.size
                                                mem[_6335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6190 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6190] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6190 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6424 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6424] = return_data.size
                                                    mem[_6424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6192 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6192] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6192 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6425 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6425] = return_data.size
                                                    mem[_6425 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1809 = mem[(32 * idx + 1) + 96]
                    _1810 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1809) >> 211:
                            mem[s + _1810] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1810 + (Mask(16, 216, _1809) >> 211) + 32
                        if Mask(4, 252, _1809) == '0':
                            codecall address(_1809).mem[_1810 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1809) >> 160 wei
                                args mem[_1810 + 4 len (Mask(16, 216, _1809) >> 211) - 4]
                            mem[_1810] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1809) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1809) == ' ':
                                staticcall address(_1809).mem[_1810 len 4] with:
                                        gas Mask(24, 160, _1809) >> 160 wei
                                       args mem[_1810 + 4 len (Mask(16, 216, _1809) >> 211) - 4]
                                mem[_1810] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1809) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1809) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1809).mem[_1810 len 4] with:
                                         gas Mask(24, 160, _1809) >> 160 wei
                                        args mem[_1810 + 4 len (Mask(16, 216, _1809) >> 211) - 4]
                                    mem[_1810] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1809) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1809).mem[_1810 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1809) >> 160 wei
                                        args mem[_1810 + 4 len (Mask(16, 216, _1809) >> 211) - 4]
                                    mem[_1810] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1809) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1809) >> 211) + 4:
                            mem[s + _1810] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1810 + (Mask(16, 216, _1809) >> 211) + 36
                        if Mask(4, 252, _1809) == '0':
                            codecall address(_1809).mem[_1810 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1809) >> 160 wei
                                args mem[_1810 + 4 len Mask(16, 216, _1809) >> 211]
                            mem[_1810] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1809) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1809) == ' ':
                                staticcall address(_1809).mem[_1810 len 4] with:
                                        gas Mask(24, 160, _1809) >> 160 wei
                                       args mem[_1810 + 4 len Mask(16, 216, _1809) >> 211]
                                mem[_1810] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1809) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1809) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1809).mem[_1810 len 4] with:
                                         gas Mask(24, 160, _1809) >> 160 wei
                                        args mem[_1810 + 4 len Mask(16, 216, _1809) >> 211]
                                    mem[_1810] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1809) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1809).mem[_1810 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1809) >> 160 wei
                                        args mem[_1810 + 4 len Mask(16, 216, _1809) >> 211]
                                    mem[_1810] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1809) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1810
                    idx = (Mask(16, 216, _1809) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _1996 = mem[128]
                            require 0 < mem[96]
                            _2126 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1996) >> 48) + (Mask(8, 40, _2126) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5146 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5146] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5146 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5378 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5378] = return_data.size
                                            mem[_5378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5235 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5235] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5235 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5474 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5474] = return_data.size
                                                mem[_5474 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5237 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5237] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5237 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5475 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5475] = return_data.size
                                                mem[_5475 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3922 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3922] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4038 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4038] = return_data.size
                                                mem[_4038 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3967 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3967] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4092 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4092] = return_data.size
                                                    mem[_4092 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3969 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3969] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4093 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4093] = return_data.size
                                                    mem[_4093 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5148 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5148] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5148 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5381 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5381] = return_data.size
                                                mem[_5381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5240 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5240] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5240 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5476 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5476] = return_data.size
                                                    mem[_5476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5242 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5242] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5242 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5477 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5477] = return_data.size
                                                    mem[_5477 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3708 = mem[128]
                            require 0 < mem[96]
                            _3814 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3708) >> 48) + (Mask(8, 40, _3814) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6106 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6106] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6106 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6338 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6338] = return_data.size
                                            mem[_6338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6195 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6195] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6195 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6426 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6426] = return_data.size
                                                mem[_6426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6197 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6197] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6197 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6427 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6427] = return_data.size
                                                mem[_6427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5478 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5478] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5638 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5638] = return_data.size
                                                mem[_5638 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5567 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5567] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5692 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5692] = return_data.size
                                                    mem[_5692 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5569 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5569] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5693 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5693] = return_data.size
                                                    mem[_5693 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6108 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6108] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6108 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6341 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6341] = return_data.size
                                                mem[_6341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6200 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6200] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6200 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6428 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6428] = return_data.size
                                                    mem[_6428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6202 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6202] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6202 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6429 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6429] = return_data.size
                                                    mem[_6429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2063 = mem[128]
                            require 0 < mem[96]
                            _2180 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2063) >> 48) + (Mask(8, 40, _2180) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5150 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5150] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5150 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5384 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5384] = return_data.size
                                            mem[_5384 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5245 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5245] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5245 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5480 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5480] = return_data.size
                                                mem[_5480 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5247 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5247] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5247 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5481 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5481] = return_data.size
                                                mem[_5481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3924 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3924] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4041 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4041] = return_data.size
                                                mem[_4041 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3972 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3972] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4096 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4096] = return_data.size
                                                    mem[_4096 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3974 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3974] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4097 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4097] = return_data.size
                                                    mem[_4097 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5152 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5152] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5152 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5387 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5387] = return_data.size
                                                mem[_5387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5250 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5250] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5250 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5482 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5482] = return_data.size
                                                    mem[_5482 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5252 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5252] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5252 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5483 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5483] = return_data.size
                                                    mem[_5483 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3711 = mem[128]
                            require 0 < mem[96]
                            _3815 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3711) >> 48) + (Mask(8, 40, _3815) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6110 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6110] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6110 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6344 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6344] = return_data.size
                                            mem[_6344 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6205 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6205] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6205 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6430 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6430] = return_data.size
                                                mem[_6430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6207 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6207] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6207 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6431 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6431] = return_data.size
                                                mem[_6431 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5484 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5484] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5641 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5641] = return_data.size
                                                mem[_5641 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5572 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5572] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5696 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5696] = return_data.size
                                                    mem[_5696 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5574 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5574] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5697 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5697] = return_data.size
                                                    mem[_5697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6112 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6112] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6112 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6347 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6347] = return_data.size
                                                mem[_6347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6210 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6210] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6210 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6432 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6432] = return_data.size
                                                    mem[_6432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6212 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6212] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6212 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6433 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6433] = return_data.size
                                                    mem[_6433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1812 = mem[(32 * idx + 1) + 96]
                    _1813 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1812) >> 211:
                            mem[s + _1813] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1813 + (Mask(16, 216, _1812) >> 211) + 32
                        if Mask(4, 252, _1812) == '0':
                            codecall address(_1812).mem[_1813 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1812) >> 160 wei
                                args mem[_1813 + 4 len (Mask(16, 216, _1812) >> 211) - 4]
                            mem[_1813] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1812) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1812) == ' ':
                                staticcall address(_1812).mem[_1813 len 4] with:
                                        gas Mask(24, 160, _1812) >> 160 wei
                                       args mem[_1813 + 4 len (Mask(16, 216, _1812) >> 211) - 4]
                                mem[_1813] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1812) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1812) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1812).mem[_1813 len 4] with:
                                         gas Mask(24, 160, _1812) >> 160 wei
                                        args mem[_1813 + 4 len (Mask(16, 216, _1812) >> 211) - 4]
                                    mem[_1813] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1812) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1812).mem[_1813 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1812) >> 160 wei
                                        args mem[_1813 + 4 len (Mask(16, 216, _1812) >> 211) - 4]
                                    mem[_1813] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1812) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1812) >> 211) + 4:
                            mem[s + _1813] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1813 + (Mask(16, 216, _1812) >> 211) + 36
                        if Mask(4, 252, _1812) == '0':
                            codecall address(_1812).mem[_1813 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1812) >> 160 wei
                                args mem[_1813 + 4 len Mask(16, 216, _1812) >> 211]
                            mem[_1813] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1812) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1812) == ' ':
                                staticcall address(_1812).mem[_1813 len 4] with:
                                        gas Mask(24, 160, _1812) >> 160 wei
                                       args mem[_1813 + 4 len Mask(16, 216, _1812) >> 211]
                                mem[_1813] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1812) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1812) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1812).mem[_1813 len 4] with:
                                         gas Mask(24, 160, _1812) >> 160 wei
                                        args mem[_1813 + 4 len Mask(16, 216, _1812) >> 211]
                                    mem[_1813] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1812) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1812).mem[_1813 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1812) >> 160 wei
                                        args mem[_1813 + 4 len Mask(16, 216, _1812) >> 211]
                                    mem[_1813] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1812) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1813
                    idx = (Mask(16, 216, _1812) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2004 = mem[128]
                            require 0 < mem[96]
                            _2132 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2004) >> 48) + (Mask(8, 40, _2132) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5154 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5154] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5154 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5390 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5390] = return_data.size
                                            mem[_5390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5255 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5255] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5255 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5486 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5486] = return_data.size
                                                mem[_5486 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5257 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5257] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5257 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5487 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5487] = return_data.size
                                                mem[_5487 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3926 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3926] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4044 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4044] = return_data.size
                                                mem[_4044 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3977 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3977] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4100 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4100] = return_data.size
                                                    mem[_4100 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3979 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3979] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4101 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4101] = return_data.size
                                                    mem[_4101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5156 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5156] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5156 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5393 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5393] = return_data.size
                                                mem[_5393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5260 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5260] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5260 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5488 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5488] = return_data.size
                                                    mem[_5488 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5262 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5262] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5262 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5489 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5489] = return_data.size
                                                    mem[_5489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3716 = mem[128]
                            require 0 < mem[96]
                            _3820 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3716) >> 48) + (Mask(8, 40, _3820) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6114 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6114] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6114 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6350 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6350] = return_data.size
                                            mem[_6350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6215 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6215] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6215 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6434 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6434] = return_data.size
                                                mem[_6434 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6217 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6217] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6217 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6435 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6435] = return_data.size
                                                mem[_6435 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5490 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5490] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5644 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5644] = return_data.size
                                                mem[_5644 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5577 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5577] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5700 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5700] = return_data.size
                                                    mem[_5700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5579 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5579] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5701 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5701] = return_data.size
                                                    mem[_5701 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6116 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6116] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6116 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6353 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6353] = return_data.size
                                                mem[_6353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6220 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6220] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6220 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6436 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6436] = return_data.size
                                                    mem[_6436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6222 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6222] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6222 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6437 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6437] = return_data.size
                                                    mem[_6437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2072 = mem[128]
                            require 0 < mem[96]
                            _2189 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2072) >> 48) + (Mask(8, 40, _2189) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5158 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5158] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5158 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5396 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5396] = return_data.size
                                            mem[_5396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5265 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5265] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5265 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5492 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5492] = return_data.size
                                                mem[_5492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5267 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5267] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5267 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5493 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5493] = return_data.size
                                                mem[_5493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3928 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3928] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4047 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4047] = return_data.size
                                                mem[_4047 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3982 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3982] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4104 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4104] = return_data.size
                                                    mem[_4104 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3984 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3984] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4105 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4105] = return_data.size
                                                    mem[_4105 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5160 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5160] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5160 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5399 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5399] = return_data.size
                                                mem[_5399 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5270 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5270] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5270 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5494 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5494] = return_data.size
                                                    mem[_5494 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5272 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5272] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5272 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5495 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5495] = return_data.size
                                                    mem[_5495 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3719 = mem[128]
                            require 0 < mem[96]
                            _3821 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3719) >> 48) + (Mask(8, 40, _3821) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6118 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6118] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6118 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6356 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6356] = return_data.size
                                            mem[_6356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6225 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6225] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6225 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6438 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6438] = return_data.size
                                                mem[_6438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6227 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6227] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6227 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6439 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6439] = return_data.size
                                                mem[_6439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5496 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5496] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5647 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5647] = return_data.size
                                                mem[_5647 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5582 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5582] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5704 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5704] = return_data.size
                                                    mem[_5704 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5584 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5584] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5705 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5705] = return_data.size
                                                    mem[_5705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6120 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6120] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6120 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6359 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6359] = return_data.size
                                                mem[_6359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6230 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6230] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6230 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6440 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6440] = return_data.size
                                                    mem[_6440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6232 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6232] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6232 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6441 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6441] = return_data.size
                                                    mem[_6441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    else:
        require storDEAD[mem[148 len 2]] <= 0
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if Mask(1, 5, mem[128]) <= 0:
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1815 = mem[(32 * idx + 1) + 96]
                    _1816 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1815) >> 211:
                            mem[s + _1816] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1816 + (Mask(16, 216, _1815) >> 211) + 32
                        if Mask(4, 252, _1815) == '0':
                            codecall address(_1815).mem[_1816 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1815) >> 160 wei
                                args mem[_1816 + 4 len (Mask(16, 216, _1815) >> 211) - 4]
                            mem[_1816] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1815) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1815) == ' ':
                                staticcall address(_1815).mem[_1816 len 4] with:
                                        gas Mask(24, 160, _1815) >> 160 wei
                                       args mem[_1816 + 4 len (Mask(16, 216, _1815) >> 211) - 4]
                                mem[_1816] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1815) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1815) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1815).mem[_1816 len 4] with:
                                         gas Mask(24, 160, _1815) >> 160 wei
                                        args mem[_1816 + 4 len (Mask(16, 216, _1815) >> 211) - 4]
                                    mem[_1816] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1815) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1815).mem[_1816 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1815) >> 160 wei
                                        args mem[_1816 + 4 len (Mask(16, 216, _1815) >> 211) - 4]
                                    mem[_1816] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1815) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1815) >> 211) + 4:
                            mem[s + _1816] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1816 + (Mask(16, 216, _1815) >> 211) + 36
                        if Mask(4, 252, _1815) == '0':
                            codecall address(_1815).mem[_1816 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1815) >> 160 wei
                                args mem[_1816 + 4 len Mask(16, 216, _1815) >> 211]
                            mem[_1816] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1815) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1815) == ' ':
                                staticcall address(_1815).mem[_1816 len 4] with:
                                        gas Mask(24, 160, _1815) >> 160 wei
                                       args mem[_1816 + 4 len Mask(16, 216, _1815) >> 211]
                                mem[_1816] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1815) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1815) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1815).mem[_1816 len 4] with:
                                         gas Mask(24, 160, _1815) >> 160 wei
                                        args mem[_1816 + 4 len Mask(16, 216, _1815) >> 211]
                                    mem[_1816] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1815) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1815).mem[_1816 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1815) >> 160 wei
                                        args mem[_1816 + 4 len Mask(16, 216, _1815) >> 211]
                                    mem[_1816] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1815) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1816
                    idx = (Mask(16, 216, _1815) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2012 = mem[128]
                            require 0 < mem[96]
                            _2138 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2012) >> 48) + (Mask(8, 40, _2138) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5162 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5162] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5162 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5402 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5402] = return_data.size
                                            mem[_5402 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5275 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5275] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5275 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5498 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5498] = return_data.size
                                                mem[_5498 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5277 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5277] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5277 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5499 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5499] = return_data.size
                                                mem[_5499 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3930 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3930] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4050 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4050] = return_data.size
                                                mem[_4050 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3987 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3987] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4108 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4108] = return_data.size
                                                    mem[_4108 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3989 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3989] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4109 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4109] = return_data.size
                                                    mem[_4109 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5164 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5164] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5164 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5405 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5405] = return_data.size
                                                mem[_5405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5280 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5280] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5280 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5500 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5500] = return_data.size
                                                    mem[_5500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5282 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5282] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5282 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5501 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5501] = return_data.size
                                                    mem[_5501 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3724 = mem[128]
                            require 0 < mem[96]
                            _3826 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3724) >> 48) + (Mask(8, 40, _3826) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6122 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6122] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6122 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6362 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6362] = return_data.size
                                            mem[_6362 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6235 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6235] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6235 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6442 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6442] = return_data.size
                                                mem[_6442 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6237 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6237] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6237 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6443 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6443] = return_data.size
                                                mem[_6443 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5502 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5502] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5650 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5650] = return_data.size
                                                mem[_5650 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5587 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5587] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5708 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5708] = return_data.size
                                                    mem[_5708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5589 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5589] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5709 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5709] = return_data.size
                                                    mem[_5709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6124 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6124] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6124 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6365 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6365] = return_data.size
                                                mem[_6365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6240 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6240] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6240 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6444 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6444] = return_data.size
                                                    mem[_6444 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6242 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6242] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6242 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6445 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6445] = return_data.size
                                                    mem[_6445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2081 = mem[128]
                            require 0 < mem[96]
                            _2198 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2081) >> 48) + (Mask(8, 40, _2198) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5166 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5166] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5166 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5408 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5408] = return_data.size
                                            mem[_5408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5285 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5285] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5285 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5504 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5504] = return_data.size
                                                mem[_5504 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5287 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5287] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5287 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5505 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5505] = return_data.size
                                                mem[_5505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3932 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3932] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4053 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4053] = return_data.size
                                                mem[_4053 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3992 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3992] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4112 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4112] = return_data.size
                                                    mem[_4112 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3994 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3994] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4113 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4113] = return_data.size
                                                    mem[_4113 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5168 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5168] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5168 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5411 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5411] = return_data.size
                                                mem[_5411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5290 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5290] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5290 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5506 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5506] = return_data.size
                                                    mem[_5506 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5292 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5292] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5292 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5507 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5507] = return_data.size
                                                    mem[_5507 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3727 = mem[128]
                            require 0 < mem[96]
                            _3827 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3727) >> 48) + (Mask(8, 40, _3827) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6126 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6126] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6126 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6368 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6368] = return_data.size
                                            mem[_6368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6245 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6245] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6245 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6446 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6446] = return_data.size
                                                mem[_6446 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6247 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6247] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6247 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6447 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6447] = return_data.size
                                                mem[_6447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5508 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5508] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5653 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5653] = return_data.size
                                                mem[_5653 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5592 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5592] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5712 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5712] = return_data.size
                                                    mem[_5712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5594 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5594] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5713 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5713] = return_data.size
                                                    mem[_5713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6128 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6128] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6128 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6371 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6371] = return_data.size
                                                mem[_6371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6250 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6250] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6250 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6448 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6448] = return_data.size
                                                    mem[_6448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6252 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6252] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6252 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6449 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6449] = return_data.size
                                                    mem[_6449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1818 = mem[(32 * idx + 1) + 96]
                    _1819 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1818) >> 211:
                            mem[s + _1819] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1819 + (Mask(16, 216, _1818) >> 211) + 32
                        if Mask(4, 252, _1818) == '0':
                            codecall address(_1818).mem[_1819 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1818) >> 160 wei
                                args mem[_1819 + 4 len (Mask(16, 216, _1818) >> 211) - 4]
                            mem[_1819] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1818) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1818) == ' ':
                                staticcall address(_1818).mem[_1819 len 4] with:
                                        gas Mask(24, 160, _1818) >> 160 wei
                                       args mem[_1819 + 4 len (Mask(16, 216, _1818) >> 211) - 4]
                                mem[_1819] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1818) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1818) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1818).mem[_1819 len 4] with:
                                         gas Mask(24, 160, _1818) >> 160 wei
                                        args mem[_1819 + 4 len (Mask(16, 216, _1818) >> 211) - 4]
                                    mem[_1819] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1818) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1818).mem[_1819 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1818) >> 160 wei
                                        args mem[_1819 + 4 len (Mask(16, 216, _1818) >> 211) - 4]
                                    mem[_1819] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1818) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1818) >> 211) + 4:
                            mem[s + _1819] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1819 + (Mask(16, 216, _1818) >> 211) + 36
                        if Mask(4, 252, _1818) == '0':
                            codecall address(_1818).mem[_1819 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1818) >> 160 wei
                                args mem[_1819 + 4 len Mask(16, 216, _1818) >> 211]
                            mem[_1819] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1818) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1818) == ' ':
                                staticcall address(_1818).mem[_1819 len 4] with:
                                        gas Mask(24, 160, _1818) >> 160 wei
                                       args mem[_1819 + 4 len Mask(16, 216, _1818) >> 211]
                                mem[_1819] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1818) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1818) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1818).mem[_1819 len 4] with:
                                         gas Mask(24, 160, _1818) >> 160 wei
                                        args mem[_1819 + 4 len Mask(16, 216, _1818) >> 211]
                                    mem[_1819] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1818) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1818).mem[_1819 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1818) >> 160 wei
                                        args mem[_1819 + 4 len Mask(16, 216, _1818) >> 211]
                                    mem[_1819] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1818) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1819
                    idx = (Mask(16, 216, _1818) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2020 = mem[128]
                            require 0 < mem[96]
                            _2144 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2020) >> 48) + (Mask(8, 40, _2144) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5170 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5170] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5170 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5414 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5414] = return_data.size
                                            mem[_5414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5295 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5295] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5295 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5510 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5510] = return_data.size
                                                mem[_5510 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5297 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5297] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5297 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5511 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5511] = return_data.size
                                                mem[_5511 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3934 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3934] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4056 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4056] = return_data.size
                                                mem[_4056 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3997 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3997] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4116 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4116] = return_data.size
                                                    mem[_4116 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3999 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3999] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4117 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4117] = return_data.size
                                                    mem[_4117 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5172 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5172] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5172 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5417 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5417] = return_data.size
                                                mem[_5417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5300 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5300] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5300 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5512 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5512] = return_data.size
                                                    mem[_5512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5302 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5302] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5302 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5513 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5513] = return_data.size
                                                    mem[_5513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3732 = mem[128]
                            require 0 < mem[96]
                            _3832 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3732) >> 48) + (Mask(8, 40, _3832) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6130 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6130] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6130 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6374 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6374] = return_data.size
                                            mem[_6374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6255 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6255] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6255 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6450 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6450] = return_data.size
                                                mem[_6450 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6257 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6257] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6257 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6451 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6451] = return_data.size
                                                mem[_6451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5514 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5514] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5656 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5656] = return_data.size
                                                mem[_5656 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5597 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5597] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5716 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5716] = return_data.size
                                                    mem[_5716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5599 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5599] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5717 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5717] = return_data.size
                                                    mem[_5717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6132 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6132] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6132 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6377 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6377] = return_data.size
                                                mem[_6377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6260 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6260] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6260 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6452 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6452] = return_data.size
                                                    mem[_6452 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6262 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6262] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6262 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6453 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6453] = return_data.size
                                                    mem[_6453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2090 = mem[128]
                            require 0 < mem[96]
                            _2207 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2090) >> 48) + (Mask(8, 40, _2207) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5174 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5174] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5174 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5420 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5420] = return_data.size
                                            mem[_5420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5305 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5305] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5305 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5516 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5516] = return_data.size
                                                mem[_5516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5307 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5307] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5307 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5517 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5517] = return_data.size
                                                mem[_5517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3936 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3936] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4059 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4059] = return_data.size
                                                mem[_4059 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4002 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4002] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4120 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4120] = return_data.size
                                                    mem[_4120 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4004 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4004] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4121 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4121] = return_data.size
                                                    mem[_4121 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5176 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5176] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5176 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5423 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5423] = return_data.size
                                                mem[_5423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5310 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5310] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5310 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5518 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5518] = return_data.size
                                                    mem[_5518 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5312 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5312] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5312 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5519 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5519] = return_data.size
                                                    mem[_5519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3735 = mem[128]
                            require 0 < mem[96]
                            _3833 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3735) >> 48) + (Mask(8, 40, _3833) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6134 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6134] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6134 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6380 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6380] = return_data.size
                                            mem[_6380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6265 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6265] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6265 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6454 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6454] = return_data.size
                                                mem[_6454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6267 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6267] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6267 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6455 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6455] = return_data.size
                                                mem[_6455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5520 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5520] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5659 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5659] = return_data.size
                                                mem[_5659 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5602 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5602] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5720 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5720] = return_data.size
                                                    mem[_5720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5604 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5604] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5721 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5721] = return_data.size
                                                    mem[_5721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6136 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6136] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6136 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6383 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6383] = return_data.size
                                                mem[_6383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6270 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6270] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6270 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6456 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6456] = return_data.size
                                                    mem[_6456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6272 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6272] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6272 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6457 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6457] = return_data.size
                                                    mem[_6457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if Mask(1, 2, mem[128]) <= 0:
                idx = 1
                while idx < arg1.length:
                    _1821 = mem[(32 * idx + 1) + 96]
                    _1822 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1821) >> 211:
                            mem[s + _1822] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1822 + (Mask(16, 216, _1821) >> 211) + 32
                        if Mask(4, 252, _1821) == '0':
                            codecall address(_1821).mem[_1822 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1821) >> 160 wei
                                args mem[_1822 + 4 len (Mask(16, 216, _1821) >> 211) - 4]
                            mem[_1822] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1821) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1821) == ' ':
                                staticcall address(_1821).mem[_1822 len 4] with:
                                        gas Mask(24, 160, _1821) >> 160 wei
                                       args mem[_1822 + 4 len (Mask(16, 216, _1821) >> 211) - 4]
                                mem[_1822] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1821) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1821) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1821).mem[_1822 len 4] with:
                                         gas Mask(24, 160, _1821) >> 160 wei
                                        args mem[_1822 + 4 len (Mask(16, 216, _1821) >> 211) - 4]
                                    mem[_1822] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1821) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1821).mem[_1822 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1821) >> 160 wei
                                        args mem[_1822 + 4 len (Mask(16, 216, _1821) >> 211) - 4]
                                    mem[_1822] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1821) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1821) >> 211) + 4:
                            mem[s + _1822] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1822 + (Mask(16, 216, _1821) >> 211) + 36
                        if Mask(4, 252, _1821) == '0':
                            codecall address(_1821).mem[_1822 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1821) >> 160 wei
                                args mem[_1822 + 4 len Mask(16, 216, _1821) >> 211]
                            mem[_1822] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1821) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1821) == ' ':
                                staticcall address(_1821).mem[_1822 len 4] with:
                                        gas Mask(24, 160, _1821) >> 160 wei
                                       args mem[_1822 + 4 len Mask(16, 216, _1821) >> 211]
                                mem[_1822] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1821) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1821) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1821).mem[_1822 len 4] with:
                                         gas Mask(24, 160, _1821) >> 160 wei
                                        args mem[_1822 + 4 len Mask(16, 216, _1821) >> 211]
                                    mem[_1822] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1821) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1821).mem[_1822 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1821) >> 160 wei
                                        args mem[_1822 + 4 len Mask(16, 216, _1821) >> 211]
                                    mem[_1822] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1821) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1822
                    idx = (Mask(16, 216, _1821) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2028 = mem[128]
                            require 0 < mem[96]
                            _2150 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2028) >> 48) + (Mask(8, 40, _2150) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5178 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5178] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5178 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5426 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5426] = return_data.size
                                            mem[_5426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5315 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5315] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5315 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5522 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5522] = return_data.size
                                                mem[_5522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5317 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5317] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5317 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5523 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5523] = return_data.size
                                                mem[_5523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3938 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3938] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4062 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4062] = return_data.size
                                                mem[_4062 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4007 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4007] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4124 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4124] = return_data.size
                                                    mem[_4124 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4009 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4009] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4125 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4125] = return_data.size
                                                    mem[_4125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5180 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5180] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5180 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5429 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5429] = return_data.size
                                                mem[_5429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5320 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5320] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5320 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5524 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5524] = return_data.size
                                                    mem[_5524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5322 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5322] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5322 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5525 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5525] = return_data.size
                                                    mem[_5525 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3740 = mem[128]
                            require 0 < mem[96]
                            _3838 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3740) >> 48) + (Mask(8, 40, _3838) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6138 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6138] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6138 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6386 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6386] = return_data.size
                                            mem[_6386 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6275 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6275] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6275 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6458 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6458] = return_data.size
                                                mem[_6458 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6277 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6277] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6277 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6459 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6459] = return_data.size
                                                mem[_6459 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5526 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5526] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5662 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5662] = return_data.size
                                                mem[_5662 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5607 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5607] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5724 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5724] = return_data.size
                                                    mem[_5724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5609 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5609] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5725 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5725] = return_data.size
                                                    mem[_5725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6140 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6140] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6140 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6389 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6389] = return_data.size
                                                mem[_6389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6280 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6280] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6280 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6460 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6460] = return_data.size
                                                    mem[_6460 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6282 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6282] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6282 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6461 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6461] = return_data.size
                                                    mem[_6461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2099 = mem[128]
                            require 0 < mem[96]
                            _2216 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2099) >> 48) + (Mask(8, 40, _2216) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5182 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5182] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5182 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5432 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5432] = return_data.size
                                            mem[_5432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5325 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5325] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5325 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5528 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5528] = return_data.size
                                                mem[_5528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5327 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5327] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5327 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5529 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5529] = return_data.size
                                                mem[_5529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3940 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3940] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4065 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4065] = return_data.size
                                                mem[_4065 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4012 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4012] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4128 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4128] = return_data.size
                                                    mem[_4128 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4014 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4014] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4129 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4129] = return_data.size
                                                    mem[_4129 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5184 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5184] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5184 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5435 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5435] = return_data.size
                                                mem[_5435 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5330 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5330] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5330 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5530 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5530] = return_data.size
                                                    mem[_5530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5332 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5332] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5332 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5531 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5531] = return_data.size
                                                    mem[_5531 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3743 = mem[128]
                            require 0 < mem[96]
                            _3839 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3743) >> 48) + (Mask(8, 40, _3839) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6142 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6142] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6142 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6392 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6392] = return_data.size
                                            mem[_6392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6285 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6285] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6285 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6462 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6462] = return_data.size
                                                mem[_6462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6287 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6287] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6287 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6463 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6463] = return_data.size
                                                mem[_6463 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5532 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5532] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5665 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5665] = return_data.size
                                                mem[_5665 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5612 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5612] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5728 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5728] = return_data.size
                                                    mem[_5728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5614 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5614] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5729 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5729] = return_data.size
                                                    mem[_5729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6144 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6144] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6144 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6395 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6395] = return_data.size
                                                mem[_6395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6290 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6290] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6290 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6464 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6464] = return_data.size
                                                    mem[_6464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6292 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6292] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6292 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6465 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6465] = return_data.size
                                                    mem[_6465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1824 = mem[(32 * idx + 1) + 96]
                    _1825 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1824) >> 211:
                            mem[s + _1825] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1825 + (Mask(16, 216, _1824) >> 211) + 32
                        if Mask(4, 252, _1824) == '0':
                            codecall address(_1824).mem[_1825 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1824) >> 160 wei
                                args mem[_1825 + 4 len (Mask(16, 216, _1824) >> 211) - 4]
                            mem[_1825] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1824) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1824) == ' ':
                                staticcall address(_1824).mem[_1825 len 4] with:
                                        gas Mask(24, 160, _1824) >> 160 wei
                                       args mem[_1825 + 4 len (Mask(16, 216, _1824) >> 211) - 4]
                                mem[_1825] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1824) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1824) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1824).mem[_1825 len 4] with:
                                         gas Mask(24, 160, _1824) >> 160 wei
                                        args mem[_1825 + 4 len (Mask(16, 216, _1824) >> 211) - 4]
                                    mem[_1825] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1824) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1824).mem[_1825 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1824) >> 160 wei
                                        args mem[_1825 + 4 len (Mask(16, 216, _1824) >> 211) - 4]
                                    mem[_1825] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1824) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1824) >> 211) + 4:
                            mem[s + _1825] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1825 + (Mask(16, 216, _1824) >> 211) + 36
                        if Mask(4, 252, _1824) == '0':
                            codecall address(_1824).mem[_1825 len 4] with:
                               value mem[(32 * idx + 2) + 96 len 16] wei
                                 gas Mask(24, 160, _1824) >> 160 wei
                                args mem[_1825 + 4 len Mask(16, 216, _1824) >> 211]
                            mem[_1825] = callcode.return_data[0]
                            require callcode.return_code
                            if Mask(4, 248, _1824) > 0:
                                require mem[(32 * idx + 2) + 112 len 16] xor uint128(callcode.return_data[0]) <= 0
                        else:
                            if Mask(4, 252, _1824) == ' ':
                                staticcall address(_1824).mem[_1825 len 4] with:
                                        gas Mask(24, 160, _1824) >> 160 wei
                                       args mem[_1825 + 4 len Mask(16, 216, _1824) >> 211]
                                mem[_1825] = ext_call.return_data[0]
                                require ext_call.success
                                if Mask(4, 248, _1824) > 0:
                                    require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                            else:
                                if Mask(4, 252, _1824) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1824).mem[_1825 len 4] with:
                                         gas Mask(24, 160, _1824) >> 160 wei
                                        args mem[_1825 + 4 len Mask(16, 216, _1824) >> 211]
                                    mem[_1825] = delegate.return_data[0]
                                    require delegate.return_code
                                    if Mask(4, 248, _1824) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(delegate.return_data[0]) <= 0
                                else:
                                    call address(_1824).mem[_1825 len 4] with:
                                       value mem[(32 * idx + 2) + 96 len 16] wei
                                         gas Mask(24, 160, _1824) >> 160 wei
                                        args mem[_1825 + 4 len Mask(16, 216, _1824) >> 211]
                                    mem[_1825] = ext_call.return_data[0]
                                    require ext_call.success
                                    if Mask(4, 248, _1824) > 0:
                                        require mem[(32 * idx + 2) + 112 len 16] xor uint128(ext_call.return_data[0]) <= 0
                    mem[64] = _1825
                    idx = (Mask(16, 216, _1824) >> 216) + idx + 2
                    continue 
                require 0 < mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2036 = mem[128]
                            require 0 < mem[96]
                            _2156 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2036) >> 48) + (Mask(8, 40, _2156) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5186 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5186] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5186 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5438 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5438] = return_data.size
                                            mem[_5438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5335 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5335] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5335 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5534] = return_data.size
                                                mem[_5534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5337 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5337] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5337 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5535 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5535] = return_data.size
                                                mem[_5535 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3942 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3942] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4068 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4068] = return_data.size
                                                mem[_4068 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4017 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4017] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4132 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4132] = return_data.size
                                                    mem[_4132 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4019 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4019] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4133 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4133] = return_data.size
                                                    mem[_4133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5188 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5188] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5188 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5441 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5441] = return_data.size
                                                mem[_5441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5340 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5340] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5340 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5536 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5536] = return_data.size
                                                    mem[_5536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5342 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5342] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5342 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5537 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5537] = return_data.size
                                                    mem[_5537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3748 = mem[128]
                            require 0 < mem[96]
                            _3844 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3748) >> 48) + (Mask(8, 40, _3844) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6146 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6146] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6146 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6398 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6398] = return_data.size
                                            mem[_6398 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6295 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6295] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6295 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6466 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6466] = return_data.size
                                                mem[_6466 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6297 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6297] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6297 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6467 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6467] = return_data.size
                                                mem[_6467 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5538 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5538] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5668 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5668] = return_data.size
                                                mem[_5668 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5617 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5617] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5732 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5732] = return_data.size
                                                    mem[_5732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5619 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5619] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5733 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5733] = return_data.size
                                                    mem[_5733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6148 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6148] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6148 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6401 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6401] = return_data.size
                                                mem[_6401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6300 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6300] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6300 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6468 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6468] = return_data.size
                                                    mem[_6468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6302 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6302] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6302 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6469] = return_data.size
                                                    mem[_6469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if Mask(1, 6, mem[128]) <= 0:
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            _2108 = mem[128]
                            require 0 < mem[96]
                            _2225 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _2108) >> 48) + (Mask(8, 40, _2225) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _5190 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_5190] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_5190 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _5444 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5444] = return_data.size
                                            mem[_5444 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _5345 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5345] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5345 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5540 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5540] = return_data.size
                                                mem[_5540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _5347 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5347] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5347 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5541 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5541] = return_data.size
                                                mem[_5541 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _3944 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3944] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4071 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4071] = return_data.size
                                                mem[_4071 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4022 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4022] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4136 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4136] = return_data.size
                                                    mem[_4136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4024 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4024] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4137 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4137] = return_data.size
                                                    mem[_4137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _5192 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5192] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_5192 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5447 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5447] = return_data.size
                                                mem[_5447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5350 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5350] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5350 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5542 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5542] = return_data.size
                                                    mem[_5542 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5352 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5352] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_5352 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5543 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5543] = return_data.size
                                                    mem[_5543 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
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
                            _3751 = mem[128]
                            require 0 < mem[96]
                            _3845 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _3751) >> 48) + (Mask(8, 40, _3845) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if idx <= 0:
                                        _6150 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_6150] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                        call address(sha3(mem[_6150 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _6404 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_6404] = return_data.size
                                            mem[_6404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _6305 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6305] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6305 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6470 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6470] = return_data.size
                                                mem[_6470 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _6307 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6307] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6307 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6471 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6471] = return_data.size
                                                mem[_6471 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if idx <= 0:
                                            _5544 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_5544] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _5671 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_5671] = return_data.size
                                                mem[_5671 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _5622 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5622] = (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f572267f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5736 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5736] = return_data.size
                                                    mem[_5736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _5624 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_5624] = (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bfffffffff5c38379cba5ca5f1685b44bc8f5722700000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _5737 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_5737] = return_data.size
                                                    mem[_5737 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if idx <= 0:
                                            _6152 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_6152] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                            call address(sha3(mem[_6152 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _6407 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_6407] = return_data.size
                                                mem[_6407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _6310 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6310] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6310 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6472 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6472] = return_data.size
                                                    mem[_6472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _6312 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6312] = (idx << 72) + (t + 214 << 248) + 0x94000000000a3c7c86345a35a0e97a4bb4370a8dd900000000000000000000
                                                call address(sha3(mem[_6312 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6473 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6473] = return_data.size
                                                    mem[_6473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    return 0
}



}
