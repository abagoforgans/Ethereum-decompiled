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

function sub_0000001d(?) {
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
        mem[96] = 0x766faca7ba47149da8a2f0ce02d140ecfa123318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766faca7ba47149da8a2f0ce02d140ecfa123318585733ff60005260176009f3
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
            require arg2 > 0
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
            require arg2 > 0
            require idx + arg2 > idx
            s = idx
            while s < idx + arg2:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936685)
    require arg2 > 0
    require arg2 + 3735936685 > 3735936685
    idx = 3735936685
    while idx < arg2 + 3735936685:
        stor[idx] = 1
        idx = idx + 1
        continue 
    return arg2
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
        if not Mask(1, 1, mem[128]):
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[msg.sender]
            if not Mask(1, 5, mem[128]):
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2097 = mem[(32 * idx + 1) + 96]
                        _2098 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2097) >> 211:
                                mem[s + _2098] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2098 + (Mask(16, 216, _2097) >> 211) + 32
                            if address(_2097) >= 255:
                                if Mask(4, 252, _2097) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2097) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2097).mem[_2098 len 4] with:
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                        mem[_2098] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2097).mem[_2098 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                        mem[_2098] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2097).mem[_2098 len 4] with:
                                            gas Mask(24, 160, _2097) >> 160 wei
                                           args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                    mem[_2098] = ext_call.return_data[0]
                                    if Mask(4, 248, _2097) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2098
                                                idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2097) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2097) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2097) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                        mem[_2098] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                        mem[_2098] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                            gas Mask(24, 160, _2097) >> 160 wei
                                           args mem[_2098 + 4 len (Mask(16, 216, _2097) >> 211) - 4]
                                    mem[_2098] = ext_call.return_data[0]
                                    if Mask(4, 248, _2097) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2098
                                                idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2097) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2097) >> 211) + 4:
                                mem[s + _2098] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2098 + (Mask(16, 216, _2097) >> 211) + 36
                            if address(_2097) >= 255:
                                if Mask(4, 252, _2097) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2097) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2097).mem[_2098 len 4] with:
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                        mem[_2098] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2097).mem[_2098 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                        mem[_2098] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2097).mem[_2098 len 4] with:
                                            gas Mask(24, 160, _2097) >> 160 wei
                                           args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                    mem[_2098] = ext_call.return_data[0]
                                    if Mask(4, 248, _2097) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2098
                                                idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2097) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2097) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2097) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                        mem[_2098] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2097) >> 160 wei
                                            args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                        mem[_2098] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2098
                                            idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2097)) + 108 len 20].mem[_2098 len 4] with:
                                            gas Mask(24, 160, _2097) >> 160 wei
                                           args mem[_2098 + 4 len Mask(16, 216, _2097) >> 211]
                                    mem[_2098] = ext_call.return_data[0]
                                    if Mask(4, 248, _2097) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2098
                                                idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2097) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2098
                                                    idx = (Mask(16, 216, _2097) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2098
                        idx = (Mask(16, 216, _2097) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2352 = mem[128]
                                require 0 < mem[96]
                                _2608 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2352) >> 48) + (Mask(8, 40, _2608) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8432 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8432] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8432 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9328 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9328] = return_data.size
                                                mem[_9328 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8689 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8689] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8689 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9712 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9712] = return_data.size
                                                    mem[_9712 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8691 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8691] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8691 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9713 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9713] = return_data.size
                                                    mem[_9713 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6128 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6128] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6576 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6576] = return_data.size
                                                    mem[_6576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6257 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6257] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6770 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6770] = return_data.size
                                                        mem[_6770 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6259 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6259] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6771 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6771] = return_data.size
                                                        mem[_6771 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8434 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8434] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8434 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9331 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9331] = return_data.size
                                                    mem[_9331 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8694 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8694] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8694 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9714 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9714] = return_data.size
                                                        mem[_9714 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8696 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8696] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8696 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9715 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9715] = return_data.size
                                                        mem[_9715 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2353 = mem[128]
                                require 0 < mem[96]
                                _2609 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2353) >> 48) + (Mask(8, 72, _2609) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8436 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8436] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8436 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9334 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9334] = return_data.size
                                                mem[_9334 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8699 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8699] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8699 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9716 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9716] = return_data.size
                                                    mem[_9716 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8701 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8701] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8701 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9717 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9717] = return_data.size
                                                    mem[_9717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6130 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6130] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6579 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6579] = return_data.size
                                                    mem[_6579 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6262 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6262] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6774 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6774] = return_data.size
                                                        mem[_6774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6264 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6264] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6775 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6775] = return_data.size
                                                        mem[_6775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8438 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8438] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8438 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9337 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9337] = return_data.size
                                                    mem[_9337 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8704 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8704] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8704 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9718 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9718] = return_data.size
                                                        mem[_9718 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8706 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8706] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8706 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9719 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9719] = return_data.size
                                                        mem[_9719 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2450 = mem[128]
                                require 0 < mem[96]
                                _2896 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2450) >> 48) + (Mask(8, 40, _2896) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8440 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8440] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8440 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9340 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9340] = return_data.size
                                                mem[_9340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8709 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8709] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8709 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9720 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9720] = return_data.size
                                                    mem[_9720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8711 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8711] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8711 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9721 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9721] = return_data.size
                                                    mem[_9721 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6132 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6132] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6582 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6582] = return_data.size
                                                    mem[_6582 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6267 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6267] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6778 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6778] = return_data.size
                                                        mem[_6778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6269 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6269] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6779 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6779] = return_data.size
                                                        mem[_6779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8442 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8442] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8442 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9343 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9343] = return_data.size
                                                    mem[_9343 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8714 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8714] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8714 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9722 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9722] = return_data.size
                                                        mem[_9722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8716 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8716] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8716 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9723 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9723] = return_data.size
                                                        mem[_9723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2451 = mem[128]
                                require 0 < mem[96]
                                _2897 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2451) >> 48) + (Mask(8, 72, _2897) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8444 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8444] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8444 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9346 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9346] = return_data.size
                                                mem[_9346 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8719 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8719] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8719 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9724 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9724] = return_data.size
                                                    mem[_9724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8721 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8721] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8721 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9725 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9725] = return_data.size
                                                    mem[_9725 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6134 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6134] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6585 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6585] = return_data.size
                                                    mem[_6585 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6272 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6272] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6782 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6782] = return_data.size
                                                        mem[_6782 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6274 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6274] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6783 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6783] = return_data.size
                                                        mem[_6783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8446 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8446] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8446 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9349 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9349] = return_data.size
                                                    mem[_9349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8724 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8724] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8724 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9726 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9726] = return_data.size
                                                        mem[_9726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8726 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8726] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8726 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9727 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9727] = return_data.size
                                                        mem[_9727 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2100 = mem[(32 * idx + 1) + 96]
                        _2101 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2100) >> 211:
                                mem[s + _2101] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2101 + (Mask(16, 216, _2100) >> 211) + 32
                            if address(_2100) >= 255:
                                if Mask(4, 252, _2100) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2100) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2100).mem[_2101 len 4] with:
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                        mem[_2101] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2100).mem[_2101 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                        mem[_2101] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2100).mem[_2101 len 4] with:
                                            gas Mask(24, 160, _2100) >> 160 wei
                                           args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                    mem[_2101] = ext_call.return_data[0]
                                    if Mask(4, 248, _2100) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2101
                                                idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2100) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2100) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2100) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                        mem[_2101] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                        mem[_2101] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                            gas Mask(24, 160, _2100) >> 160 wei
                                           args mem[_2101 + 4 len (Mask(16, 216, _2100) >> 211) - 4]
                                    mem[_2101] = ext_call.return_data[0]
                                    if Mask(4, 248, _2100) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2101
                                                idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2100) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2100) >> 211) + 4:
                                mem[s + _2101] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2101 + (Mask(16, 216, _2100) >> 211) + 36
                            if address(_2100) >= 255:
                                if Mask(4, 252, _2100) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2100) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2100).mem[_2101 len 4] with:
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                        mem[_2101] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2100).mem[_2101 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                        mem[_2101] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2100).mem[_2101 len 4] with:
                                            gas Mask(24, 160, _2100) >> 160 wei
                                           args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                    mem[_2101] = ext_call.return_data[0]
                                    if Mask(4, 248, _2100) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2101
                                                idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2100) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2100) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2100) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                        mem[_2101] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2100) >> 160 wei
                                            args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                        mem[_2101] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2101
                                            idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2100)) + 108 len 20].mem[_2101 len 4] with:
                                            gas Mask(24, 160, _2100) >> 160 wei
                                           args mem[_2101 + 4 len Mask(16, 216, _2100) >> 211]
                                    mem[_2101] = ext_call.return_data[0]
                                    if Mask(4, 248, _2100) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2101
                                                idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2100) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2101
                                                    idx = (Mask(16, 216, _2100) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2101
                        idx = (Mask(16, 216, _2100) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2358 = mem[128]
                                require 0 < mem[96]
                                _2626 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2358) >> 48) + (Mask(8, 40, _2626) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8448 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8448] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8448 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9352 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9352] = return_data.size
                                                mem[_9352 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8729 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8729] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8729 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9728 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9728] = return_data.size
                                                    mem[_9728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8731 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8731] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8731 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9729 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9729] = return_data.size
                                                    mem[_9729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6136 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6136] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6588 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6588] = return_data.size
                                                    mem[_6588 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6277 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6277] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6786 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6786] = return_data.size
                                                        mem[_6786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6279 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6279] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6787 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6787] = return_data.size
                                                        mem[_6787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8450 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8450] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8450 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9355 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9355] = return_data.size
                                                    mem[_9355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8734 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8734] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8734 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9730 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9730] = return_data.size
                                                        mem[_9730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8736 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8736] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8736 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9731 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9731] = return_data.size
                                                        mem[_9731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2359 = mem[128]
                                require 0 < mem[96]
                                _2627 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2359) >> 48) + (Mask(8, 72, _2627) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8452 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8452] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8452 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9358 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9358] = return_data.size
                                                mem[_9358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8739 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8739] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8739 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9732 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9732] = return_data.size
                                                    mem[_9732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8741 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8741] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8741 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9733 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9733] = return_data.size
                                                    mem[_9733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6138 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6138] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6591 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6591] = return_data.size
                                                    mem[_6591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6282 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6282] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6790 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6790] = return_data.size
                                                        mem[_6790 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6284 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6284] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6791 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6791] = return_data.size
                                                        mem[_6791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8454 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8454] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8454 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9361 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9361] = return_data.size
                                                    mem[_9361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8744 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8744] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8744 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9734 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9734] = return_data.size
                                                        mem[_9734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8746 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8746] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8746 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9735 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9735] = return_data.size
                                                        mem[_9735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2460 = mem[128]
                                require 0 < mem[96]
                                _2906 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2460) >> 48) + (Mask(8, 40, _2906) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8456 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8456] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8456 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9364 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9364] = return_data.size
                                                mem[_9364 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8749 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8749] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8749 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9736 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9736] = return_data.size
                                                    mem[_9736 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8751 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8751] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8751 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9737 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9737] = return_data.size
                                                    mem[_9737 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6140 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6140] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6594 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6594] = return_data.size
                                                    mem[_6594 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6287 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6287] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6794 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6794] = return_data.size
                                                        mem[_6794 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6289 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6289] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6795 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6795] = return_data.size
                                                        mem[_6795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8458 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8458] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8458 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9367 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9367] = return_data.size
                                                    mem[_9367 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8754 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8754] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8754 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9738 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9738] = return_data.size
                                                        mem[_9738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8756 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8756] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8756 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9739 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9739] = return_data.size
                                                        mem[_9739 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2461 = mem[128]
                                require 0 < mem[96]
                                _2907 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2461) >> 48) + (Mask(8, 72, _2907) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8460 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8460] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8460 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9370 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9370] = return_data.size
                                                mem[_9370 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8759 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8759] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8759 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9740 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9740] = return_data.size
                                                    mem[_9740 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8761 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8761] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8761 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9741 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9741] = return_data.size
                                                    mem[_9741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6142 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6142] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6597 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6597] = return_data.size
                                                    mem[_6597 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6292 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6292] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6798 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6798] = return_data.size
                                                        mem[_6798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6294 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6294] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6799 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6799] = return_data.size
                                                        mem[_6799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8462 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8462] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8462 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9373 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9373] = return_data.size
                                                    mem[_9373 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8764 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8764] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8764 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9742 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9742] = return_data.size
                                                        mem[_9742 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8766 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8766] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8766 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9743 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9743] = return_data.size
                                                        mem[_9743 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                require block.gas_limit < 2250 * 3600
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2103 = mem[(32 * idx + 1) + 96]
                        _2104 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2103) >> 211:
                                mem[s + _2104] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2104 + (Mask(16, 216, _2103) >> 211) + 32
                            if address(_2103) >= 255:
                                if Mask(4, 252, _2103) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2103) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2103).mem[_2104 len 4] with:
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                        mem[_2104] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2103).mem[_2104 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                        mem[_2104] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2103).mem[_2104 len 4] with:
                                            gas Mask(24, 160, _2103) >> 160 wei
                                           args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                    mem[_2104] = ext_call.return_data[0]
                                    if Mask(4, 248, _2103) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2104
                                                idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2103) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2103) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2103) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                        mem[_2104] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                        mem[_2104] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                            gas Mask(24, 160, _2103) >> 160 wei
                                           args mem[_2104 + 4 len (Mask(16, 216, _2103) >> 211) - 4]
                                    mem[_2104] = ext_call.return_data[0]
                                    if Mask(4, 248, _2103) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2104
                                                idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2103) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2103) >> 211) + 4:
                                mem[s + _2104] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2104 + (Mask(16, 216, _2103) >> 211) + 36
                            if address(_2103) >= 255:
                                if Mask(4, 252, _2103) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2103) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2103).mem[_2104 len 4] with:
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                        mem[_2104] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2103).mem[_2104 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                        mem[_2104] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2103).mem[_2104 len 4] with:
                                            gas Mask(24, 160, _2103) >> 160 wei
                                           args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                    mem[_2104] = ext_call.return_data[0]
                                    if Mask(4, 248, _2103) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2104
                                                idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2103) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2103) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2103) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                        mem[_2104] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2103) >> 160 wei
                                            args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                        mem[_2104] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2104
                                            idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2103)) + 108 len 20].mem[_2104 len 4] with:
                                            gas Mask(24, 160, _2103) >> 160 wei
                                           args mem[_2104 + 4 len Mask(16, 216, _2103) >> 211]
                                    mem[_2104] = ext_call.return_data[0]
                                    if Mask(4, 248, _2103) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2104
                                                idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2103) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2104
                                                    idx = (Mask(16, 216, _2103) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2104
                        idx = (Mask(16, 216, _2103) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2364 = mem[128]
                                require 0 < mem[96]
                                _2644 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2364) >> 48) + (Mask(8, 40, _2644) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8464 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8464] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8464 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9376 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9376] = return_data.size
                                                mem[_9376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8769 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8769] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8769 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9744 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9744] = return_data.size
                                                    mem[_9744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8771 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8771] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8771 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9745 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9745] = return_data.size
                                                    mem[_9745 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6144 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6144] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6600 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6600] = return_data.size
                                                    mem[_6600 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6297 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6297] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6802 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6802] = return_data.size
                                                        mem[_6802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6299 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6299] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6803 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6803] = return_data.size
                                                        mem[_6803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8466 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8466] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8466 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9379 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9379] = return_data.size
                                                    mem[_9379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8774 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8774] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8774 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9746 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9746] = return_data.size
                                                        mem[_9746 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8776 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8776] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8776 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9747 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9747] = return_data.size
                                                        mem[_9747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2365 = mem[128]
                                require 0 < mem[96]
                                _2645 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2365) >> 48) + (Mask(8, 72, _2645) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8468 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8468] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8468 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9382 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9382] = return_data.size
                                                mem[_9382 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8779 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8779] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8779 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9748 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9748] = return_data.size
                                                    mem[_9748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8781 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8781] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8781 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9749 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9749] = return_data.size
                                                    mem[_9749 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6146 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6146] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6603 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6603] = return_data.size
                                                    mem[_6603 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6302 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6302] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6806 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6806] = return_data.size
                                                        mem[_6806 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6304 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6304] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6807 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6807] = return_data.size
                                                        mem[_6807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8470 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8470] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8470 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9385 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9385] = return_data.size
                                                    mem[_9385 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8784 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8784] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8784 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9750 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9750] = return_data.size
                                                        mem[_9750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8786 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8786] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8786 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9751 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9751] = return_data.size
                                                        mem[_9751 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2470 = mem[128]
                                require 0 < mem[96]
                                _2916 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2470) >> 48) + (Mask(8, 40, _2916) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8472 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8472] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8472 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9388 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9388] = return_data.size
                                                mem[_9388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8789 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8789] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8789 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9752 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9752] = return_data.size
                                                    mem[_9752 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8791 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8791] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8791 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9753 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9753] = return_data.size
                                                    mem[_9753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6148 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6148] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6606 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6606] = return_data.size
                                                    mem[_6606 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6307 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6307] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6810 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6810] = return_data.size
                                                        mem[_6810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6309 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6309] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6811 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6811] = return_data.size
                                                        mem[_6811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8474 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8474] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8474 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9391 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9391] = return_data.size
                                                    mem[_9391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8794 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8794] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8794 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9754 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9754] = return_data.size
                                                        mem[_9754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8796 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8796] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8796 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9755 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9755] = return_data.size
                                                        mem[_9755 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2471 = mem[128]
                                require 0 < mem[96]
                                _2917 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2471) >> 48) + (Mask(8, 72, _2917) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8476 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8476] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8476 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9394 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9394] = return_data.size
                                                mem[_9394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8799 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8799] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8799 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9756 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9756] = return_data.size
                                                    mem[_9756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8801 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8801] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8801 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9757 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9757] = return_data.size
                                                    mem[_9757 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6150 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6150] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6609 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6609] = return_data.size
                                                    mem[_6609 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6312 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6312] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6814 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6814] = return_data.size
                                                        mem[_6814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6314 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6314] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6815 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6815] = return_data.size
                                                        mem[_6815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8478 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8478] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8478 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9397 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9397] = return_data.size
                                                    mem[_9397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8804 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8804] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8804 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9758 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9758] = return_data.size
                                                        mem[_9758 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8806 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8806] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8806 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9759 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9759] = return_data.size
                                                        mem[_9759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2106 = mem[(32 * idx + 1) + 96]
                        _2107 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2106) >> 211:
                                mem[s + _2107] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2107 + (Mask(16, 216, _2106) >> 211) + 32
                            if address(_2106) >= 255:
                                if Mask(4, 252, _2106) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2106) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2106).mem[_2107 len 4] with:
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                        mem[_2107] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2106).mem[_2107 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                        mem[_2107] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2106).mem[_2107 len 4] with:
                                            gas Mask(24, 160, _2106) >> 160 wei
                                           args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                    mem[_2107] = ext_call.return_data[0]
                                    if Mask(4, 248, _2106) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2107
                                                idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2106) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2106) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2106) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                        mem[_2107] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                        mem[_2107] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                            gas Mask(24, 160, _2106) >> 160 wei
                                           args mem[_2107 + 4 len (Mask(16, 216, _2106) >> 211) - 4]
                                    mem[_2107] = ext_call.return_data[0]
                                    if Mask(4, 248, _2106) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2107
                                                idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2106) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2106) >> 211) + 4:
                                mem[s + _2107] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2107 + (Mask(16, 216, _2106) >> 211) + 36
                            if address(_2106) >= 255:
                                if Mask(4, 252, _2106) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2106) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2106).mem[_2107 len 4] with:
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                        mem[_2107] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2106).mem[_2107 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                        mem[_2107] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2106).mem[_2107 len 4] with:
                                            gas Mask(24, 160, _2106) >> 160 wei
                                           args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                    mem[_2107] = ext_call.return_data[0]
                                    if Mask(4, 248, _2106) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2107
                                                idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2106) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2106) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2106) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                        mem[_2107] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2106) >> 160 wei
                                            args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                        mem[_2107] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2107
                                            idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2106)) + 108 len 20].mem[_2107 len 4] with:
                                            gas Mask(24, 160, _2106) >> 160 wei
                                           args mem[_2107 + 4 len Mask(16, 216, _2106) >> 211]
                                    mem[_2107] = ext_call.return_data[0]
                                    if Mask(4, 248, _2106) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2107
                                                idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2106) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2107
                                                    idx = (Mask(16, 216, _2106) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2107
                        idx = (Mask(16, 216, _2106) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2370 = mem[128]
                                require 0 < mem[96]
                                _2662 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2370) >> 48) + (Mask(8, 40, _2662) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8480 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8480] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8480 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9400 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9400] = return_data.size
                                                mem[_9400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8809 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8809] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8809 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9760 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9760] = return_data.size
                                                    mem[_9760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8811 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8811] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8811 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9761 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9761] = return_data.size
                                                    mem[_9761 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6152 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6152] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6612 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6612] = return_data.size
                                                    mem[_6612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6317 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6317] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6818 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6818] = return_data.size
                                                        mem[_6818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6319 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6319] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6819 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6819] = return_data.size
                                                        mem[_6819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8482 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8482] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8482 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9403 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9403] = return_data.size
                                                    mem[_9403 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8814 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8814] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8814 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9762 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9762] = return_data.size
                                                        mem[_9762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8816 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8816] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8816 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9763 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9763] = return_data.size
                                                        mem[_9763 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2371 = mem[128]
                                require 0 < mem[96]
                                _2663 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2371) >> 48) + (Mask(8, 72, _2663) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8484 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8484] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8484 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9406 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9406] = return_data.size
                                                mem[_9406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8819 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8819] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8819 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9764 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9764] = return_data.size
                                                    mem[_9764 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8821 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8821] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8821 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9765 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9765] = return_data.size
                                                    mem[_9765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6154 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6154] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6615 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6615] = return_data.size
                                                    mem[_6615 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6322 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6322] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6822 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6822] = return_data.size
                                                        mem[_6822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6324 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6324] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6823 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6823] = return_data.size
                                                        mem[_6823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8486 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8486] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8486 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9409 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9409] = return_data.size
                                                    mem[_9409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8824 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8824] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8824 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9766 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9766] = return_data.size
                                                        mem[_9766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8826 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8826] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8826 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9767 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9767] = return_data.size
                                                        mem[_9767 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2480 = mem[128]
                                require 0 < mem[96]
                                _2926 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2480) >> 48) + (Mask(8, 40, _2926) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8488 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8488] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8488 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9412 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9412] = return_data.size
                                                mem[_9412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8829 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8829] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8829 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9768 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9768] = return_data.size
                                                    mem[_9768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8831 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8831] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8831 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9769 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9769] = return_data.size
                                                    mem[_9769 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6156 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6156] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6618 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6618] = return_data.size
                                                    mem[_6618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6327 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6327] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6826 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6826] = return_data.size
                                                        mem[_6826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6329 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6329] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6827 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6827] = return_data.size
                                                        mem[_6827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8490 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8490] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8490 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9415 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9415] = return_data.size
                                                    mem[_9415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8834 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8834] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8834 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9770 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9770] = return_data.size
                                                        mem[_9770 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8836 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8836] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8836 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9771 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9771] = return_data.size
                                                        mem[_9771 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2481 = mem[128]
                                require 0 < mem[96]
                                _2927 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2481) >> 48) + (Mask(8, 72, _2927) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8492 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8492] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8492 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9418 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9418] = return_data.size
                                                mem[_9418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8839 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8839] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8839 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9772 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9772] = return_data.size
                                                    mem[_9772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8841 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8841] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8841 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9773 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9773] = return_data.size
                                                    mem[_9773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6158 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6158] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6621 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6621] = return_data.size
                                                    mem[_6621 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6332 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6332] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6830 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6830] = return_data.size
                                                        mem[_6830 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6334 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6334] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6831 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6831] = return_data.size
                                                        mem[_6831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8494 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8494] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8494 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9421 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9421] = return_data.size
                                                    mem[_9421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8844 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8844] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8844 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9774 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9774] = return_data.size
                                                        mem[_9774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8846 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8846] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8846 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9775 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9775] = return_data.size
                                                        mem[_9775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
        else:
            require block.timestamp > mem[128 len 4] + 1556442712
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[msg.sender]
            if not Mask(1, 5, mem[128]):
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2109 = mem[(32 * idx + 1) + 96]
                        _2110 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2109) >> 211:
                                mem[s + _2110] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2110 + (Mask(16, 216, _2109) >> 211) + 32
                            if address(_2109) >= 255:
                                if Mask(4, 252, _2109) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2109) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2109).mem[_2110 len 4] with:
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                        mem[_2110] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2109).mem[_2110 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                        mem[_2110] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2109).mem[_2110 len 4] with:
                                            gas Mask(24, 160, _2109) >> 160 wei
                                           args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                    mem[_2110] = ext_call.return_data[0]
                                    if Mask(4, 248, _2109) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2110
                                                idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2109) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2109) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2109) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                        mem[_2110] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                        mem[_2110] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                            gas Mask(24, 160, _2109) >> 160 wei
                                           args mem[_2110 + 4 len (Mask(16, 216, _2109) >> 211) - 4]
                                    mem[_2110] = ext_call.return_data[0]
                                    if Mask(4, 248, _2109) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2110
                                                idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2109) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2109) >> 211) + 4:
                                mem[s + _2110] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2110 + (Mask(16, 216, _2109) >> 211) + 36
                            if address(_2109) >= 255:
                                if Mask(4, 252, _2109) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2109) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2109).mem[_2110 len 4] with:
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                        mem[_2110] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2109).mem[_2110 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                        mem[_2110] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2109).mem[_2110 len 4] with:
                                            gas Mask(24, 160, _2109) >> 160 wei
                                           args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                    mem[_2110] = ext_call.return_data[0]
                                    if Mask(4, 248, _2109) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2110
                                                idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2109) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2109) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2109) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                        mem[_2110] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2109) >> 160 wei
                                            args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                        mem[_2110] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2110
                                            idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2109)) + 108 len 20].mem[_2110 len 4] with:
                                            gas Mask(24, 160, _2109) >> 160 wei
                                           args mem[_2110 + 4 len Mask(16, 216, _2109) >> 211]
                                    mem[_2110] = ext_call.return_data[0]
                                    if Mask(4, 248, _2109) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2110
                                                idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2109) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2110
                                                    idx = (Mask(16, 216, _2109) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2110
                        idx = (Mask(16, 216, _2109) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2376 = mem[128]
                                require 0 < mem[96]
                                _2680 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2376) >> 48) + (Mask(8, 40, _2680) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8496 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8496] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8496 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9424 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9424] = return_data.size
                                                mem[_9424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8849 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8849] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8849 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9776 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9776] = return_data.size
                                                    mem[_9776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8851 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8851] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8851 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9777 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9777] = return_data.size
                                                    mem[_9777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6160 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6160] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6624 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6624] = return_data.size
                                                    mem[_6624 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6337 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6337] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6834 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6834] = return_data.size
                                                        mem[_6834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6339 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6339] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6835 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6835] = return_data.size
                                                        mem[_6835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8498 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8498] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8498 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9427 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9427] = return_data.size
                                                    mem[_9427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8854 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8854] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8854 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9778 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9778] = return_data.size
                                                        mem[_9778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8856 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8856] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8856 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9779 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9779] = return_data.size
                                                        mem[_9779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2377 = mem[128]
                                require 0 < mem[96]
                                _2681 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2377) >> 48) + (Mask(8, 72, _2681) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8500 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8500] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8500 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9430 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9430] = return_data.size
                                                mem[_9430 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8859 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8859] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8859 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9780 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9780] = return_data.size
                                                    mem[_9780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8861 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8861] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8861 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9781 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9781] = return_data.size
                                                    mem[_9781 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6162 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6162] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6627 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6627] = return_data.size
                                                    mem[_6627 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6342 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6342] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6838 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6838] = return_data.size
                                                        mem[_6838 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6344 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6344] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6839 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6839] = return_data.size
                                                        mem[_6839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8502 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8502] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8502 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9433 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9433] = return_data.size
                                                    mem[_9433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8864 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8864] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8864 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9782 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9782] = return_data.size
                                                        mem[_9782 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8866 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8866] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8866 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9783 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9783] = return_data.size
                                                        mem[_9783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2490 = mem[128]
                                require 0 < mem[96]
                                _2936 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2490) >> 48) + (Mask(8, 40, _2936) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8504 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8504] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8504 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9436 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9436] = return_data.size
                                                mem[_9436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8869 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8869] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8869 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9784 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9784] = return_data.size
                                                    mem[_9784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8871 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8871] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8871 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9785 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9785] = return_data.size
                                                    mem[_9785 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6164 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6164] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6630 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6630] = return_data.size
                                                    mem[_6630 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6347 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6347] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6842 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6842] = return_data.size
                                                        mem[_6842 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6349 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6349] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6843 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6843] = return_data.size
                                                        mem[_6843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8506 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8506] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8506 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9439 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9439] = return_data.size
                                                    mem[_9439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8874 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8874] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8874 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9786 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9786] = return_data.size
                                                        mem[_9786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8876 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8876] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8876 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9787 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9787] = return_data.size
                                                        mem[_9787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2491 = mem[128]
                                require 0 < mem[96]
                                _2937 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2491) >> 48) + (Mask(8, 72, _2937) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8508 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8508] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8508 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9442 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9442] = return_data.size
                                                mem[_9442 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8879 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8879] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8879 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9788 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9788] = return_data.size
                                                    mem[_9788 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8881 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8881] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8881 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9789 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9789] = return_data.size
                                                    mem[_9789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6166 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6166] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6633 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6633] = return_data.size
                                                    mem[_6633 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6352 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6352] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6846 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6846] = return_data.size
                                                        mem[_6846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6354 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6354] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6847 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6847] = return_data.size
                                                        mem[_6847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8510 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8510] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8510 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9445 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9445] = return_data.size
                                                    mem[_9445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8884 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8884] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8884 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9790 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9790] = return_data.size
                                                        mem[_9790 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8886 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8886] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8886 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9791 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9791] = return_data.size
                                                        mem[_9791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2112 = mem[(32 * idx + 1) + 96]
                        _2113 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2112) >> 211:
                                mem[s + _2113] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2113 + (Mask(16, 216, _2112) >> 211) + 32
                            if address(_2112) >= 255:
                                if Mask(4, 252, _2112) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2112) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2112).mem[_2113 len 4] with:
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                        mem[_2113] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2112).mem[_2113 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                        mem[_2113] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2112).mem[_2113 len 4] with:
                                            gas Mask(24, 160, _2112) >> 160 wei
                                           args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                    mem[_2113] = ext_call.return_data[0]
                                    if Mask(4, 248, _2112) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2113
                                                idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2112) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2112) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2112) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                        mem[_2113] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                        mem[_2113] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                            gas Mask(24, 160, _2112) >> 160 wei
                                           args mem[_2113 + 4 len (Mask(16, 216, _2112) >> 211) - 4]
                                    mem[_2113] = ext_call.return_data[0]
                                    if Mask(4, 248, _2112) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2113
                                                idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2112) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2112) >> 211) + 4:
                                mem[s + _2113] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2113 + (Mask(16, 216, _2112) >> 211) + 36
                            if address(_2112) >= 255:
                                if Mask(4, 252, _2112) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2112) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2112).mem[_2113 len 4] with:
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                        mem[_2113] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2112).mem[_2113 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                        mem[_2113] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2112).mem[_2113 len 4] with:
                                            gas Mask(24, 160, _2112) >> 160 wei
                                           args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                    mem[_2113] = ext_call.return_data[0]
                                    if Mask(4, 248, _2112) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2113
                                                idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2112) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2112) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2112) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                        mem[_2113] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2112) >> 160 wei
                                            args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                        mem[_2113] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2113
                                            idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2112)) + 108 len 20].mem[_2113 len 4] with:
                                            gas Mask(24, 160, _2112) >> 160 wei
                                           args mem[_2113 + 4 len Mask(16, 216, _2112) >> 211]
                                    mem[_2113] = ext_call.return_data[0]
                                    if Mask(4, 248, _2112) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2113
                                                idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2112) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2113
                                                    idx = (Mask(16, 216, _2112) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2113
                        idx = (Mask(16, 216, _2112) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2382 = mem[128]
                                require 0 < mem[96]
                                _2698 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2382) >> 48) + (Mask(8, 40, _2698) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8512 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8512] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8512 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9448 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9448] = return_data.size
                                                mem[_9448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8889 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8889] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8889 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9792 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9792] = return_data.size
                                                    mem[_9792 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8891 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8891] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8891 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9793 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9793] = return_data.size
                                                    mem[_9793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6168 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6168] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6636 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6636] = return_data.size
                                                    mem[_6636 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6357 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6357] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6850 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6850] = return_data.size
                                                        mem[_6850 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6359 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6359] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6851 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6851] = return_data.size
                                                        mem[_6851 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8514 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8514] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8514 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9451 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9451] = return_data.size
                                                    mem[_9451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8894 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8894] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8894 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9794 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9794] = return_data.size
                                                        mem[_9794 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8896 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8896] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8896 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9795 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9795] = return_data.size
                                                        mem[_9795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2383 = mem[128]
                                require 0 < mem[96]
                                _2699 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2383) >> 48) + (Mask(8, 72, _2699) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8516 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8516] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8516 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9454 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9454] = return_data.size
                                                mem[_9454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8899 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8899] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8899 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9796 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9796] = return_data.size
                                                    mem[_9796 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8901 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8901] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8901 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9797 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9797] = return_data.size
                                                    mem[_9797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6170 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6170] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6639 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6639] = return_data.size
                                                    mem[_6639 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6362 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6362] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6854 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6854] = return_data.size
                                                        mem[_6854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6364 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6364] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6855 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6855] = return_data.size
                                                        mem[_6855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8518 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8518] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8518 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9457 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9457] = return_data.size
                                                    mem[_9457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8904 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8904] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8904 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9798 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9798] = return_data.size
                                                        mem[_9798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8906 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8906] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8906 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9799 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9799] = return_data.size
                                                        mem[_9799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2500 = mem[128]
                                require 0 < mem[96]
                                _2946 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2500) >> 48) + (Mask(8, 40, _2946) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8520 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8520] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8520 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9460 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9460] = return_data.size
                                                mem[_9460 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8909 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8909] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8909 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9800 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9800] = return_data.size
                                                    mem[_9800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8911 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8911] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8911 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9801 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9801] = return_data.size
                                                    mem[_9801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6172 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6172] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6642 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6642] = return_data.size
                                                    mem[_6642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6367 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6367] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6858 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6858] = return_data.size
                                                        mem[_6858 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6369 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6369] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6859 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6859] = return_data.size
                                                        mem[_6859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8522 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8522] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8522 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9463 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9463] = return_data.size
                                                    mem[_9463 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8914 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8914] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8914 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9802 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9802] = return_data.size
                                                        mem[_9802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8916 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8916] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8916 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9803 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9803] = return_data.size
                                                        mem[_9803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2501 = mem[128]
                                require 0 < mem[96]
                                _2947 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2501) >> 48) + (Mask(8, 72, _2947) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8524 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8524] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8524 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9466 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9466] = return_data.size
                                                mem[_9466 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8919 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8919] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8919 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9804 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9804] = return_data.size
                                                    mem[_9804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8921 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8921] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8921 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9805 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9805] = return_data.size
                                                    mem[_9805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6174 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6174] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6645 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6645] = return_data.size
                                                    mem[_6645 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6372 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6372] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6862 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6862] = return_data.size
                                                        mem[_6862 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6374 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6374] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6863 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6863] = return_data.size
                                                        mem[_6863 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8526 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8526] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8526 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9469] = return_data.size
                                                    mem[_9469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8924 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8924] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8924 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9806 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9806] = return_data.size
                                                        mem[_9806 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8926 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8926] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8926 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9807 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9807] = return_data.size
                                                        mem[_9807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                require block.gas_limit < 2250 * 3600
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2115 = mem[(32 * idx + 1) + 96]
                        _2116 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2115) >> 211:
                                mem[s + _2116] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2116 + (Mask(16, 216, _2115) >> 211) + 32
                            if address(_2115) >= 255:
                                if Mask(4, 252, _2115) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2115) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2115).mem[_2116 len 4] with:
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                        mem[_2116] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2115).mem[_2116 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                        mem[_2116] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2115).mem[_2116 len 4] with:
                                            gas Mask(24, 160, _2115) >> 160 wei
                                           args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                    mem[_2116] = ext_call.return_data[0]
                                    if Mask(4, 248, _2115) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2116
                                                idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2115) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2115) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2115) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                        mem[_2116] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                        mem[_2116] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                            gas Mask(24, 160, _2115) >> 160 wei
                                           args mem[_2116 + 4 len (Mask(16, 216, _2115) >> 211) - 4]
                                    mem[_2116] = ext_call.return_data[0]
                                    if Mask(4, 248, _2115) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2116
                                                idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2115) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2115) >> 211) + 4:
                                mem[s + _2116] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2116 + (Mask(16, 216, _2115) >> 211) + 36
                            if address(_2115) >= 255:
                                if Mask(4, 252, _2115) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2115) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2115).mem[_2116 len 4] with:
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                        mem[_2116] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2115).mem[_2116 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                        mem[_2116] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2115).mem[_2116 len 4] with:
                                            gas Mask(24, 160, _2115) >> 160 wei
                                           args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                    mem[_2116] = ext_call.return_data[0]
                                    if Mask(4, 248, _2115) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2116
                                                idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2115) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2115) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2115) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                        mem[_2116] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2115) >> 160 wei
                                            args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                        mem[_2116] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2116
                                            idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2115)) + 108 len 20].mem[_2116 len 4] with:
                                            gas Mask(24, 160, _2115) >> 160 wei
                                           args mem[_2116 + 4 len Mask(16, 216, _2115) >> 211]
                                    mem[_2116] = ext_call.return_data[0]
                                    if Mask(4, 248, _2115) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2116
                                                idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2115) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2116
                                                    idx = (Mask(16, 216, _2115) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2116
                        idx = (Mask(16, 216, _2115) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2388 = mem[128]
                                require 0 < mem[96]
                                _2716 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2388) >> 48) + (Mask(8, 40, _2716) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8528 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8528] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8528 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9472 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9472] = return_data.size
                                                mem[_9472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8929 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8929] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8929 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9808 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9808] = return_data.size
                                                    mem[_9808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8931 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8931] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8931 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9809 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9809] = return_data.size
                                                    mem[_9809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6176 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6176] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6648 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6648] = return_data.size
                                                    mem[_6648 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6377 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6377] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6866 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6866] = return_data.size
                                                        mem[_6866 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6379 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6379] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6867 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6867] = return_data.size
                                                        mem[_6867 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8530 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8530] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8530 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9475 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9475] = return_data.size
                                                    mem[_9475 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8934 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8934] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8934 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9810 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9810] = return_data.size
                                                        mem[_9810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8936 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8936] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8936 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9811 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9811] = return_data.size
                                                        mem[_9811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2389 = mem[128]
                                require 0 < mem[96]
                                _2717 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2389) >> 48) + (Mask(8, 72, _2717) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8532 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8532] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8532 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9478 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9478] = return_data.size
                                                mem[_9478 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8939 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8939] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8939 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9812 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9812] = return_data.size
                                                    mem[_9812 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8941 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8941] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8941 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9813 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9813] = return_data.size
                                                    mem[_9813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6178 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6178] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6651 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6651] = return_data.size
                                                    mem[_6651 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6382 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6382] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6870 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6870] = return_data.size
                                                        mem[_6870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6384 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6384] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6871 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6871] = return_data.size
                                                        mem[_6871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8534 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8534] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8534 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9481 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9481] = return_data.size
                                                    mem[_9481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8944 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8944] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8944 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9814 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9814] = return_data.size
                                                        mem[_9814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8946 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8946] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8946 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9815 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9815] = return_data.size
                                                        mem[_9815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2510 = mem[128]
                                require 0 < mem[96]
                                _2956 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2510) >> 48) + (Mask(8, 40, _2956) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8536 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8536] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8536 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9484 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9484] = return_data.size
                                                mem[_9484 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8949 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8949] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8949 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9816 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9816] = return_data.size
                                                    mem[_9816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8951 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8951] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8951 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9817 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9817] = return_data.size
                                                    mem[_9817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6180 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6180] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6654 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6654] = return_data.size
                                                    mem[_6654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6387 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6387] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6874 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6874] = return_data.size
                                                        mem[_6874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6389 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6389] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6875 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6875] = return_data.size
                                                        mem[_6875 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8538 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8538] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8538 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9487 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9487] = return_data.size
                                                    mem[_9487 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8954 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8954] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8954 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9818 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9818] = return_data.size
                                                        mem[_9818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8956 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8956] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8956 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9819 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9819] = return_data.size
                                                        mem[_9819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2511 = mem[128]
                                require 0 < mem[96]
                                _2957 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2511) >> 48) + (Mask(8, 72, _2957) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8540 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8540] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8540 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9490 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9490] = return_data.size
                                                mem[_9490 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8959 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8959] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8959 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9820 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9820] = return_data.size
                                                    mem[_9820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8961 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8961] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8961 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9821 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9821] = return_data.size
                                                    mem[_9821 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6182 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6182] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6657 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6657] = return_data.size
                                                    mem[_6657 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6392 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6392] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6878 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6878] = return_data.size
                                                        mem[_6878 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6394 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6394] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6879 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6879] = return_data.size
                                                        mem[_6879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8542 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8542] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8542 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9493 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9493] = return_data.size
                                                    mem[_9493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8964 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8964] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8964 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9822 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9822] = return_data.size
                                                        mem[_9822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8966 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8966] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8966 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9823 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9823] = return_data.size
                                                        mem[_9823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2118 = mem[(32 * idx + 1) + 96]
                        _2119 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2118) >> 211:
                                mem[s + _2119] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2119 + (Mask(16, 216, _2118) >> 211) + 32
                            if address(_2118) >= 255:
                                if Mask(4, 252, _2118) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2118) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2118).mem[_2119 len 4] with:
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                        mem[_2119] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2118).mem[_2119 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                        mem[_2119] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2118).mem[_2119 len 4] with:
                                            gas Mask(24, 160, _2118) >> 160 wei
                                           args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                    mem[_2119] = ext_call.return_data[0]
                                    if Mask(4, 248, _2118) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2119
                                                idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2118) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2118) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2118) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                        mem[_2119] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                        mem[_2119] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                            gas Mask(24, 160, _2118) >> 160 wei
                                           args mem[_2119 + 4 len (Mask(16, 216, _2118) >> 211) - 4]
                                    mem[_2119] = ext_call.return_data[0]
                                    if Mask(4, 248, _2118) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2119
                                                idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2118) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2118) >> 211) + 4:
                                mem[s + _2119] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2119 + (Mask(16, 216, _2118) >> 211) + 36
                            if address(_2118) >= 255:
                                if Mask(4, 252, _2118) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2118) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2118).mem[_2119 len 4] with:
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                        mem[_2119] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2118).mem[_2119 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                        mem[_2119] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2118).mem[_2119 len 4] with:
                                            gas Mask(24, 160, _2118) >> 160 wei
                                           args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                    mem[_2119] = ext_call.return_data[0]
                                    if Mask(4, 248, _2118) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2119
                                                idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2118) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2118) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2118) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                        mem[_2119] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2118) >> 160 wei
                                            args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                        mem[_2119] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2119
                                            idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2118)) + 108 len 20].mem[_2119 len 4] with:
                                            gas Mask(24, 160, _2118) >> 160 wei
                                           args mem[_2119 + 4 len Mask(16, 216, _2118) >> 211]
                                    mem[_2119] = ext_call.return_data[0]
                                    if Mask(4, 248, _2118) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2119
                                                idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2118) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2119
                                                    idx = (Mask(16, 216, _2118) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2119
                        idx = (Mask(16, 216, _2118) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2394 = mem[128]
                                require 0 < mem[96]
                                _2734 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2394) >> 48) + (Mask(8, 40, _2734) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8544 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8544] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8544 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9496 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9496] = return_data.size
                                                mem[_9496 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8969 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8969] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8969 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9824 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9824] = return_data.size
                                                    mem[_9824 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8971 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8971] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8971 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9825 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9825] = return_data.size
                                                    mem[_9825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6184 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6184] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6660 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6660] = return_data.size
                                                    mem[_6660 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6397 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6397] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6882 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6882] = return_data.size
                                                        mem[_6882 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6399 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6399] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6883 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6883] = return_data.size
                                                        mem[_6883 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8546 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8546] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8546 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9499 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9499] = return_data.size
                                                    mem[_9499 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8974 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8974] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8974 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9826 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9826] = return_data.size
                                                        mem[_9826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8976 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8976] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8976 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9827 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9827] = return_data.size
                                                        mem[_9827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2395 = mem[128]
                                require 0 < mem[96]
                                _2735 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2395) >> 48) + (Mask(8, 72, _2735) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8548 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8548] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8548 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9502 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9502] = return_data.size
                                                mem[_9502 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8979 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8979] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8979 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9828 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9828] = return_data.size
                                                    mem[_9828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8981 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8981] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8981 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9829 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9829] = return_data.size
                                                    mem[_9829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6186 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6186] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6663 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6663] = return_data.size
                                                    mem[_6663 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6402 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6402] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6886 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6886] = return_data.size
                                                        mem[_6886 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6404 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6404] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6887 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6887] = return_data.size
                                                        mem[_6887 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8550 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8550] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8550 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9505 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9505] = return_data.size
                                                    mem[_9505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8984 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8984] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8984 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9830 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9830] = return_data.size
                                                        mem[_9830 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8986 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8986] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8986 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9831 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9831] = return_data.size
                                                        mem[_9831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2520 = mem[128]
                                require 0 < mem[96]
                                _2966 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2520) >> 48) + (Mask(8, 40, _2966) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8552 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8552] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8552 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9508 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9508] = return_data.size
                                                mem[_9508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8989 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8989] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8989 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9832 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9832] = return_data.size
                                                    mem[_9832 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _8991 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8991] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8991 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9833 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9833] = return_data.size
                                                    mem[_9833 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6188 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6188] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6666 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6666] = return_data.size
                                                    mem[_6666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6407 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6407] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6890 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6890] = return_data.size
                                                        mem[_6890 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6409 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6409] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6891 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6891] = return_data.size
                                                        mem[_6891 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8554 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8554] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8554 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9511 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9511] = return_data.size
                                                    mem[_9511 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _8994 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8994] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8994 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9834 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9834] = return_data.size
                                                        mem[_9834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _8996 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_8996] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_8996 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9835 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9835] = return_data.size
                                                        mem[_9835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2521 = mem[128]
                                require 0 < mem[96]
                                _2967 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2521) >> 48) + (Mask(8, 72, _2967) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8556 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8556] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8556 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9514 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9514] = return_data.size
                                                mem[_9514 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _8999 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8999] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8999 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9836 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9836] = return_data.size
                                                    mem[_9836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9001 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9001] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9001 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9837 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9837] = return_data.size
                                                    mem[_9837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6190 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6190] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6669 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6669] = return_data.size
                                                    mem[_6669 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6412 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6412] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6894 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6894] = return_data.size
                                                        mem[_6894 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6414 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6414] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6895 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6895] = return_data.size
                                                        mem[_6895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8558 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8558] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8558 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9517 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9517] = return_data.size
                                                    mem[_9517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9004 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9004] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9004 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9838 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9838] = return_data.size
                                                        mem[_9838 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9006 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9006] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9006 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9839 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9839] = return_data.size
                                                        mem[_9839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
    else:
        require not storDEAD[mem[148 len 2]]
        if not Mask(1, 1, mem[128]):
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[msg.sender]
            if not Mask(1, 5, mem[128]):
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2121 = mem[(32 * idx + 1) + 96]
                        _2122 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2121) >> 211:
                                mem[s + _2122] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2122 + (Mask(16, 216, _2121) >> 211) + 32
                            if address(_2121) >= 255:
                                if Mask(4, 252, _2121) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2121) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2121).mem[_2122 len 4] with:
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                        mem[_2122] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2121).mem[_2122 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                        mem[_2122] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2121).mem[_2122 len 4] with:
                                            gas Mask(24, 160, _2121) >> 160 wei
                                           args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                    mem[_2122] = ext_call.return_data[0]
                                    if Mask(4, 248, _2121) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2122
                                                idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2121) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2121) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2121) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                        mem[_2122] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                        mem[_2122] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                            gas Mask(24, 160, _2121) >> 160 wei
                                           args mem[_2122 + 4 len (Mask(16, 216, _2121) >> 211) - 4]
                                    mem[_2122] = ext_call.return_data[0]
                                    if Mask(4, 248, _2121) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2122
                                                idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2121) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2121) >> 211) + 4:
                                mem[s + _2122] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2122 + (Mask(16, 216, _2121) >> 211) + 36
                            if address(_2121) >= 255:
                                if Mask(4, 252, _2121) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2121) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2121).mem[_2122 len 4] with:
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                        mem[_2122] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2121).mem[_2122 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                        mem[_2122] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2121).mem[_2122 len 4] with:
                                            gas Mask(24, 160, _2121) >> 160 wei
                                           args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                    mem[_2122] = ext_call.return_data[0]
                                    if Mask(4, 248, _2121) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2122
                                                idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2121) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2121) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2121) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                        mem[_2122] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2121) >> 160 wei
                                            args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                        mem[_2122] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2122
                                            idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2121)) + 108 len 20].mem[_2122 len 4] with:
                                            gas Mask(24, 160, _2121) >> 160 wei
                                           args mem[_2122 + 4 len Mask(16, 216, _2121) >> 211]
                                    mem[_2122] = ext_call.return_data[0]
                                    if Mask(4, 248, _2121) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2122
                                                idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2121) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2122
                                                    idx = (Mask(16, 216, _2121) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2122
                        idx = (Mask(16, 216, _2121) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2400 = mem[128]
                                require 0 < mem[96]
                                _2752 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2400) >> 48) + (Mask(8, 40, _2752) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8560 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8560] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8560 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9520 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9520] = return_data.size
                                                mem[_9520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9009 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9009] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9009 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9840 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9840] = return_data.size
                                                    mem[_9840 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9011 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9011] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9011 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9841 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9841] = return_data.size
                                                    mem[_9841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6192 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6192] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6672 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6672] = return_data.size
                                                    mem[_6672 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6417 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6417] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6898 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6898] = return_data.size
                                                        mem[_6898 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6419 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6419] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6899 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6899] = return_data.size
                                                        mem[_6899 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8562 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8562] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8562 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9523 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9523] = return_data.size
                                                    mem[_9523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9014 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9014] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9014 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9842 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9842] = return_data.size
                                                        mem[_9842 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9016 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9016] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9016 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9843 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9843] = return_data.size
                                                        mem[_9843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2401 = mem[128]
                                require 0 < mem[96]
                                _2753 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2401) >> 48) + (Mask(8, 72, _2753) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8564 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8564] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8564 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9526 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9526] = return_data.size
                                                mem[_9526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9019 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9019] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9019 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9844 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9844] = return_data.size
                                                    mem[_9844 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9021 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9021] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9021 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9845 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9845] = return_data.size
                                                    mem[_9845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6194 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6194] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6675 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6675] = return_data.size
                                                    mem[_6675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6422 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6422] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6902 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6902] = return_data.size
                                                        mem[_6902 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6424 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6424] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6903 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6903] = return_data.size
                                                        mem[_6903 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8566 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8566] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8566 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9529 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9529] = return_data.size
                                                    mem[_9529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9024 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9024] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9024 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9846 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9846] = return_data.size
                                                        mem[_9846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9026 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9026] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9026 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9847 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9847] = return_data.size
                                                        mem[_9847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2530 = mem[128]
                                require 0 < mem[96]
                                _2976 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2530) >> 48) + (Mask(8, 40, _2976) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8568 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8568] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8568 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9532 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9532] = return_data.size
                                                mem[_9532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9029 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9029] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9029 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9848 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9848] = return_data.size
                                                    mem[_9848 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9031 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9031] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9031 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9849 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9849] = return_data.size
                                                    mem[_9849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6196 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6196] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6678 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6678] = return_data.size
                                                    mem[_6678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6427 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6427] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6906 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6906] = return_data.size
                                                        mem[_6906 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6429 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6429] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6907 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6907] = return_data.size
                                                        mem[_6907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8570 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8570] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8570 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9535 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9535] = return_data.size
                                                    mem[_9535 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9034 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9034] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9034 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9850 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9850] = return_data.size
                                                        mem[_9850 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9036 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9036] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9036 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9851 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9851] = return_data.size
                                                        mem[_9851 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2531 = mem[128]
                                require 0 < mem[96]
                                _2977 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2531) >> 48) + (Mask(8, 72, _2977) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8572 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8572] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8572 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9538 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9538] = return_data.size
                                                mem[_9538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9039 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9039] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9039 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9852 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9852] = return_data.size
                                                    mem[_9852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9041 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9041] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9041 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9853 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9853] = return_data.size
                                                    mem[_9853 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6198 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6198] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6681 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6681] = return_data.size
                                                    mem[_6681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6432 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6432] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6910 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6910] = return_data.size
                                                        mem[_6910 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6434 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6434] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6911 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6911] = return_data.size
                                                        mem[_6911 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8574 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8574] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8574 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9541 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9541] = return_data.size
                                                    mem[_9541 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9044 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9044] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9044 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9854 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9854] = return_data.size
                                                        mem[_9854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9046 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9046] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9046 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9855 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9855] = return_data.size
                                                        mem[_9855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2124 = mem[(32 * idx + 1) + 96]
                        _2125 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2124) >> 211:
                                mem[s + _2125] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2125 + (Mask(16, 216, _2124) >> 211) + 32
                            if address(_2124) >= 255:
                                if Mask(4, 252, _2124) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2124) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2124).mem[_2125 len 4] with:
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                        mem[_2125] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2124).mem[_2125 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                        mem[_2125] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2124).mem[_2125 len 4] with:
                                            gas Mask(24, 160, _2124) >> 160 wei
                                           args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                    mem[_2125] = ext_call.return_data[0]
                                    if Mask(4, 248, _2124) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2125
                                                idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2124) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2124) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2124) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                        mem[_2125] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                        mem[_2125] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                            gas Mask(24, 160, _2124) >> 160 wei
                                           args mem[_2125 + 4 len (Mask(16, 216, _2124) >> 211) - 4]
                                    mem[_2125] = ext_call.return_data[0]
                                    if Mask(4, 248, _2124) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2125
                                                idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2124) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2124) >> 211) + 4:
                                mem[s + _2125] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2125 + (Mask(16, 216, _2124) >> 211) + 36
                            if address(_2124) >= 255:
                                if Mask(4, 252, _2124) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2124) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2124).mem[_2125 len 4] with:
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                        mem[_2125] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2124).mem[_2125 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                        mem[_2125] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2124).mem[_2125 len 4] with:
                                            gas Mask(24, 160, _2124) >> 160 wei
                                           args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                    mem[_2125] = ext_call.return_data[0]
                                    if Mask(4, 248, _2124) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2125
                                                idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2124) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2124) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2124) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                        mem[_2125] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2124) >> 160 wei
                                            args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                        mem[_2125] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2125
                                            idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2124)) + 108 len 20].mem[_2125 len 4] with:
                                            gas Mask(24, 160, _2124) >> 160 wei
                                           args mem[_2125 + 4 len Mask(16, 216, _2124) >> 211]
                                    mem[_2125] = ext_call.return_data[0]
                                    if Mask(4, 248, _2124) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2125
                                                idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2124) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2125
                                                    idx = (Mask(16, 216, _2124) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2125
                        idx = (Mask(16, 216, _2124) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2406 = mem[128]
                                require 0 < mem[96]
                                _2770 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2406) >> 48) + (Mask(8, 40, _2770) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8576 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8576] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8576 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9544 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9544] = return_data.size
                                                mem[_9544 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9049 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9049] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9049 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9856 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9856] = return_data.size
                                                    mem[_9856 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9051 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9051] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9051 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9857 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9857] = return_data.size
                                                    mem[_9857 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6200 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6200] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6684 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6684] = return_data.size
                                                    mem[_6684 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6437 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6437] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6914 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6914] = return_data.size
                                                        mem[_6914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6439 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6439] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6915 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6915] = return_data.size
                                                        mem[_6915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8578 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8578] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8578 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9547 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9547] = return_data.size
                                                    mem[_9547 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9054 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9054] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9054 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9858 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9858] = return_data.size
                                                        mem[_9858 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9056 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9056] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9056 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9859 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9859] = return_data.size
                                                        mem[_9859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2407 = mem[128]
                                require 0 < mem[96]
                                _2771 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2407) >> 48) + (Mask(8, 72, _2771) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8580 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8580] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8580 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9550 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9550] = return_data.size
                                                mem[_9550 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9059 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9059] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9059 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9860 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9860] = return_data.size
                                                    mem[_9860 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9061 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9061] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9061 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9861 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9861] = return_data.size
                                                    mem[_9861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6202 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6202] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6687 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6687] = return_data.size
                                                    mem[_6687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6442 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6442] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6918 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6918] = return_data.size
                                                        mem[_6918 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6444 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6444] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6919 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6919] = return_data.size
                                                        mem[_6919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8582 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8582] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8582 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9553 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9553] = return_data.size
                                                    mem[_9553 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9064 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9064] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9064 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9862 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9862] = return_data.size
                                                        mem[_9862 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9066 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9066] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9066 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9863 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9863] = return_data.size
                                                        mem[_9863 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2540 = mem[128]
                                require 0 < mem[96]
                                _2986 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2540) >> 48) + (Mask(8, 40, _2986) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8584 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8584] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8584 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9556 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9556] = return_data.size
                                                mem[_9556 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9069 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9069] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9069 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9864 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9864] = return_data.size
                                                    mem[_9864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9071 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9071] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9071 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9865 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9865] = return_data.size
                                                    mem[_9865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6204 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6204] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6690 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6690] = return_data.size
                                                    mem[_6690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6447 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6447] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6922 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6922] = return_data.size
                                                        mem[_6922 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6449 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6449] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6923 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6923] = return_data.size
                                                        mem[_6923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8586 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8586] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8586 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9559 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9559] = return_data.size
                                                    mem[_9559 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9074 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9074] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9074 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9866 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9866] = return_data.size
                                                        mem[_9866 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9076 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9076] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9076 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9867 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9867] = return_data.size
                                                        mem[_9867 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2541 = mem[128]
                                require 0 < mem[96]
                                _2987 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2541) >> 48) + (Mask(8, 72, _2987) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8588 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8588] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8588 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9562 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9562] = return_data.size
                                                mem[_9562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9079 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9079] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9079 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9868 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9868] = return_data.size
                                                    mem[_9868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9081 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9081] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9081 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9869 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9869] = return_data.size
                                                    mem[_9869 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6206 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6206] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6693 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6693] = return_data.size
                                                    mem[_6693 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6452 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6452] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6926 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6926] = return_data.size
                                                        mem[_6926 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6454 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6454] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6927 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6927] = return_data.size
                                                        mem[_6927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8590 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8590] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8590 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9565 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9565] = return_data.size
                                                    mem[_9565 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9084 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9084] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9084 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9870 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9870] = return_data.size
                                                        mem[_9870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9086 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9086] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9086 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9871 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9871] = return_data.size
                                                        mem[_9871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                require block.gas_limit < 2250 * 3600
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2127 = mem[(32 * idx + 1) + 96]
                        _2128 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2127) >> 211:
                                mem[s + _2128] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2128 + (Mask(16, 216, _2127) >> 211) + 32
                            if address(_2127) >= 255:
                                if Mask(4, 252, _2127) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2127) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2127).mem[_2128 len 4] with:
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                        mem[_2128] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2127).mem[_2128 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                        mem[_2128] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2127).mem[_2128 len 4] with:
                                            gas Mask(24, 160, _2127) >> 160 wei
                                           args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                    mem[_2128] = ext_call.return_data[0]
                                    if Mask(4, 248, _2127) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2128
                                                idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2127) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2127) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2127) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                        mem[_2128] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                        mem[_2128] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                            gas Mask(24, 160, _2127) >> 160 wei
                                           args mem[_2128 + 4 len (Mask(16, 216, _2127) >> 211) - 4]
                                    mem[_2128] = ext_call.return_data[0]
                                    if Mask(4, 248, _2127) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2128
                                                idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2127) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2127) >> 211) + 4:
                                mem[s + _2128] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2128 + (Mask(16, 216, _2127) >> 211) + 36
                            if address(_2127) >= 255:
                                if Mask(4, 252, _2127) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2127) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2127).mem[_2128 len 4] with:
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                        mem[_2128] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2127).mem[_2128 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                        mem[_2128] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2127).mem[_2128 len 4] with:
                                            gas Mask(24, 160, _2127) >> 160 wei
                                           args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                    mem[_2128] = ext_call.return_data[0]
                                    if Mask(4, 248, _2127) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2128
                                                idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2127) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2127) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2127) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                        mem[_2128] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2127) >> 160 wei
                                            args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                        mem[_2128] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2128
                                            idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2127)) + 108 len 20].mem[_2128 len 4] with:
                                            gas Mask(24, 160, _2127) >> 160 wei
                                           args mem[_2128 + 4 len Mask(16, 216, _2127) >> 211]
                                    mem[_2128] = ext_call.return_data[0]
                                    if Mask(4, 248, _2127) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2128
                                                idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2127) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2128
                                                    idx = (Mask(16, 216, _2127) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2128
                        idx = (Mask(16, 216, _2127) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2412 = mem[128]
                                require 0 < mem[96]
                                _2788 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2412) >> 48) + (Mask(8, 40, _2788) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8592 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8592] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8592 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9568 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9568] = return_data.size
                                                mem[_9568 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9089 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9089] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9089 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9872 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9872] = return_data.size
                                                    mem[_9872 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9091 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9091] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9091 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9873 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9873] = return_data.size
                                                    mem[_9873 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6208 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6208] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6696 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6696] = return_data.size
                                                    mem[_6696 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6457 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6457] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6930 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6930] = return_data.size
                                                        mem[_6930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6459 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6459] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6931 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6931] = return_data.size
                                                        mem[_6931 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8594 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8594] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8594 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9571 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9571] = return_data.size
                                                    mem[_9571 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9094 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9094] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9094 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9874 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9874] = return_data.size
                                                        mem[_9874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9096 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9096] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9096 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9875 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9875] = return_data.size
                                                        mem[_9875 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2413 = mem[128]
                                require 0 < mem[96]
                                _2789 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2413) >> 48) + (Mask(8, 72, _2789) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8596 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8596] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8596 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9574 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9574] = return_data.size
                                                mem[_9574 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9099 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9099] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9099 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9876 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9876] = return_data.size
                                                    mem[_9876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9101 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9101] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9101 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9877 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9877] = return_data.size
                                                    mem[_9877 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6210 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6210] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6699 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6699] = return_data.size
                                                    mem[_6699 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6462 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6462] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6934 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6934] = return_data.size
                                                        mem[_6934 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6464 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6464] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6935 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6935] = return_data.size
                                                        mem[_6935 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8598 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8598] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8598 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9577 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9577] = return_data.size
                                                    mem[_9577 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9104 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9104] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9104 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9878 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9878] = return_data.size
                                                        mem[_9878 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9106 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9106] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9106 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9879 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9879] = return_data.size
                                                        mem[_9879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2550 = mem[128]
                                require 0 < mem[96]
                                _2996 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2550) >> 48) + (Mask(8, 40, _2996) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8600 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8600] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8600 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9580 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9580] = return_data.size
                                                mem[_9580 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9109 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9109] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9109 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9880 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9880] = return_data.size
                                                    mem[_9880 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9111 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9111] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9111 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9881 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9881] = return_data.size
                                                    mem[_9881 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6212 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6212] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6702 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6702] = return_data.size
                                                    mem[_6702 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6467 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6467] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6938 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6938] = return_data.size
                                                        mem[_6938 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6469 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6469] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6939 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6939] = return_data.size
                                                        mem[_6939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8602 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8602] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8602 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9583 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9583] = return_data.size
                                                    mem[_9583 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9114 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9114] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9114 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9882 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9882] = return_data.size
                                                        mem[_9882 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9116 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9116] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9116 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9883 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9883] = return_data.size
                                                        mem[_9883 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2551 = mem[128]
                                require 0 < mem[96]
                                _2997 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2551) >> 48) + (Mask(8, 72, _2997) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8604 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8604] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8604 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9586 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9586] = return_data.size
                                                mem[_9586 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9119 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9119] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9119 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9884 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9884] = return_data.size
                                                    mem[_9884 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9121 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9121] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9121 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9885 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9885] = return_data.size
                                                    mem[_9885 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6214 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6214] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6705 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6705] = return_data.size
                                                    mem[_6705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6472 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6472] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6942 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6942] = return_data.size
                                                        mem[_6942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6474 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6474] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6943 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6943] = return_data.size
                                                        mem[_6943 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8606 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8606] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8606 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9589 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9589] = return_data.size
                                                    mem[_9589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9124 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9124] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9124 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9886 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9886] = return_data.size
                                                        mem[_9886 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9126 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9126] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9126 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9887 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9887] = return_data.size
                                                        mem[_9887 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2130 = mem[(32 * idx + 1) + 96]
                        _2131 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2130) >> 211:
                                mem[s + _2131] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2131 + (Mask(16, 216, _2130) >> 211) + 32
                            if address(_2130) >= 255:
                                if Mask(4, 252, _2130) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2130) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2130).mem[_2131 len 4] with:
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                        mem[_2131] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2130).mem[_2131 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                        mem[_2131] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2130).mem[_2131 len 4] with:
                                            gas Mask(24, 160, _2130) >> 160 wei
                                           args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                    mem[_2131] = ext_call.return_data[0]
                                    if Mask(4, 248, _2130) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2131
                                                idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2130) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2130) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2130) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                        mem[_2131] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                        mem[_2131] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                            gas Mask(24, 160, _2130) >> 160 wei
                                           args mem[_2131 + 4 len (Mask(16, 216, _2130) >> 211) - 4]
                                    mem[_2131] = ext_call.return_data[0]
                                    if Mask(4, 248, _2130) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2131
                                                idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2130) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2130) >> 211) + 4:
                                mem[s + _2131] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2131 + (Mask(16, 216, _2130) >> 211) + 36
                            if address(_2130) >= 255:
                                if Mask(4, 252, _2130) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2130) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2130).mem[_2131 len 4] with:
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                        mem[_2131] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2130).mem[_2131 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                        mem[_2131] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2130).mem[_2131 len 4] with:
                                            gas Mask(24, 160, _2130) >> 160 wei
                                           args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                    mem[_2131] = ext_call.return_data[0]
                                    if Mask(4, 248, _2130) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2131
                                                idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2130) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2130) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2130) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                        mem[_2131] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2130) >> 160 wei
                                            args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                        mem[_2131] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2131
                                            idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2130)) + 108 len 20].mem[_2131 len 4] with:
                                            gas Mask(24, 160, _2130) >> 160 wei
                                           args mem[_2131 + 4 len Mask(16, 216, _2130) >> 211]
                                    mem[_2131] = ext_call.return_data[0]
                                    if Mask(4, 248, _2130) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2131
                                                idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2130) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2131
                                                    idx = (Mask(16, 216, _2130) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2131
                        idx = (Mask(16, 216, _2130) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2418 = mem[128]
                                require 0 < mem[96]
                                _2806 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2418) >> 48) + (Mask(8, 40, _2806) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8608 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8608] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8608 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9592 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9592] = return_data.size
                                                mem[_9592 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9129 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9129] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9129 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9888 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9888] = return_data.size
                                                    mem[_9888 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9131 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9131] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9131 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9889 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9889] = return_data.size
                                                    mem[_9889 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6216 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6216] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6708 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6708] = return_data.size
                                                    mem[_6708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6477 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6477] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6946 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6946] = return_data.size
                                                        mem[_6946 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6479 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6479] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6947 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6947] = return_data.size
                                                        mem[_6947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8610 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8610] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8610 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9595 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9595] = return_data.size
                                                    mem[_9595 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9134 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9134] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9134 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9890 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9890] = return_data.size
                                                        mem[_9890 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9136 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9136] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9136 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9891 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9891] = return_data.size
                                                        mem[_9891 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2419 = mem[128]
                                require 0 < mem[96]
                                _2807 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2419) >> 48) + (Mask(8, 72, _2807) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8612 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8612] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8612 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9598 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9598] = return_data.size
                                                mem[_9598 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9139 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9139] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9139 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9892 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9892] = return_data.size
                                                    mem[_9892 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9141 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9141] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9141 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9893] = return_data.size
                                                    mem[_9893 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6218 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6218] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6711 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6711] = return_data.size
                                                    mem[_6711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6482 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6482] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6950 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6950] = return_data.size
                                                        mem[_6950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6484 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6484] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6951 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6951] = return_data.size
                                                        mem[_6951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8614 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8614] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8614 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9601 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9601] = return_data.size
                                                    mem[_9601 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9144 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9144] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9144 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9894 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9894] = return_data.size
                                                        mem[_9894 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9146 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9146] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9146 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9895 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9895] = return_data.size
                                                        mem[_9895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2560 = mem[128]
                                require 0 < mem[96]
                                _3006 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2560) >> 48) + (Mask(8, 40, _3006) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8616 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8616] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8616 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9604 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9604] = return_data.size
                                                mem[_9604 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9149 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9149] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9149 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9896 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9896] = return_data.size
                                                    mem[_9896 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9151 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9151] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9151 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9897 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9897] = return_data.size
                                                    mem[_9897 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6220 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6220] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6714 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6714] = return_data.size
                                                    mem[_6714 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6487 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6487] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6954 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6954] = return_data.size
                                                        mem[_6954 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6489 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6489] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6955 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6955] = return_data.size
                                                        mem[_6955 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8618 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8618] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8618 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9607 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9607] = return_data.size
                                                    mem[_9607 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9154 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9154] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9154 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9898 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9898] = return_data.size
                                                        mem[_9898 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9156 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9156] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9156 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9899 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9899] = return_data.size
                                                        mem[_9899 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2561 = mem[128]
                                require 0 < mem[96]
                                _3007 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2561) >> 48) + (Mask(8, 72, _3007) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8620 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8620] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8620 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9610 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9610] = return_data.size
                                                mem[_9610 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9159 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9159] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9159 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9900 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9900] = return_data.size
                                                    mem[_9900 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9161 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9161] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9161 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9901 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9901] = return_data.size
                                                    mem[_9901 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6222 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6222] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6717 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6717] = return_data.size
                                                    mem[_6717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6492 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6492] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6958 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6958] = return_data.size
                                                        mem[_6958 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6494 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6494] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6959 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6959] = return_data.size
                                                        mem[_6959 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8622 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8622] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8622 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9613 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9613] = return_data.size
                                                    mem[_9613 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9164 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9164] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9164 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9902 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9902] = return_data.size
                                                        mem[_9902 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9166 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9166] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9166 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9903 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9903] = return_data.size
                                                        mem[_9903 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
        else:
            require block.timestamp > mem[128 len 4] + 1556442712
            mem[0] = msg.sender
            mem[32] = 1
            require stor1[msg.sender]
            if not Mask(1, 5, mem[128]):
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2133 = mem[(32 * idx + 1) + 96]
                        _2134 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2133) >> 211:
                                mem[s + _2134] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2134 + (Mask(16, 216, _2133) >> 211) + 32
                            if address(_2133) >= 255:
                                if Mask(4, 252, _2133) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2133) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2133).mem[_2134 len 4] with:
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                        mem[_2134] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2133).mem[_2134 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                        mem[_2134] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2133).mem[_2134 len 4] with:
                                            gas Mask(24, 160, _2133) >> 160 wei
                                           args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                    mem[_2134] = ext_call.return_data[0]
                                    if Mask(4, 248, _2133) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2134
                                                idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2133) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2133) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2133) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                        mem[_2134] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                        mem[_2134] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                            gas Mask(24, 160, _2133) >> 160 wei
                                           args mem[_2134 + 4 len (Mask(16, 216, _2133) >> 211) - 4]
                                    mem[_2134] = ext_call.return_data[0]
                                    if Mask(4, 248, _2133) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2134
                                                idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2133) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2133) >> 211) + 4:
                                mem[s + _2134] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2134 + (Mask(16, 216, _2133) >> 211) + 36
                            if address(_2133) >= 255:
                                if Mask(4, 252, _2133) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2133) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2133).mem[_2134 len 4] with:
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                        mem[_2134] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2133).mem[_2134 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                        mem[_2134] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2133).mem[_2134 len 4] with:
                                            gas Mask(24, 160, _2133) >> 160 wei
                                           args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                    mem[_2134] = ext_call.return_data[0]
                                    if Mask(4, 248, _2133) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2134
                                                idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2133) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2133) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2133) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                        mem[_2134] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2133) >> 160 wei
                                            args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                        mem[_2134] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2134
                                            idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2133)) + 108 len 20].mem[_2134 len 4] with:
                                            gas Mask(24, 160, _2133) >> 160 wei
                                           args mem[_2134 + 4 len Mask(16, 216, _2133) >> 211]
                                    mem[_2134] = ext_call.return_data[0]
                                    if Mask(4, 248, _2133) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2134
                                                idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2133) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2134
                                                    idx = (Mask(16, 216, _2133) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2134
                        idx = (Mask(16, 216, _2133) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2424 = mem[128]
                                require 0 < mem[96]
                                _2824 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2424) >> 48) + (Mask(8, 40, _2824) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8624 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8624] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8624 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9616 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9616] = return_data.size
                                                mem[_9616 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9169 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9169] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9169 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9904 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9904] = return_data.size
                                                    mem[_9904 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9171 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9171] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9171 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9905 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9905] = return_data.size
                                                    mem[_9905 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6224 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6224] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6720 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6720] = return_data.size
                                                    mem[_6720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6497 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6497] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6962 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6962] = return_data.size
                                                        mem[_6962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6499 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6499] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6963 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6963] = return_data.size
                                                        mem[_6963 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8626 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8626] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8626 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9619 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9619] = return_data.size
                                                    mem[_9619 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9174 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9174] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9174 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9906 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9906] = return_data.size
                                                        mem[_9906 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9176 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9176] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9176 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9907 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9907] = return_data.size
                                                        mem[_9907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2425 = mem[128]
                                require 0 < mem[96]
                                _2825 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2425) >> 48) + (Mask(8, 72, _2825) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8628 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8628] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8628 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9622 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9622] = return_data.size
                                                mem[_9622 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9179 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9179] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9179 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9908 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9908] = return_data.size
                                                    mem[_9908 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9181 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9181] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9181 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9909 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9909] = return_data.size
                                                    mem[_9909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6226 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6226] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6723 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6723] = return_data.size
                                                    mem[_6723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6502 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6502] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6966 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6966] = return_data.size
                                                        mem[_6966 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6504 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6504] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6967 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6967] = return_data.size
                                                        mem[_6967 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8630 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8630] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8630 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9625 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9625] = return_data.size
                                                    mem[_9625 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9184 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9184] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9184 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9910 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9910] = return_data.size
                                                        mem[_9910 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9186 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9186] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9186 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9911 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9911] = return_data.size
                                                        mem[_9911 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2570 = mem[128]
                                require 0 < mem[96]
                                _3016 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2570) >> 48) + (Mask(8, 40, _3016) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8632 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8632] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8632 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9628 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9628] = return_data.size
                                                mem[_9628 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9189 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9189] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9189 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9912 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9912] = return_data.size
                                                    mem[_9912 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9191 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9191] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9191 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9913 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9913] = return_data.size
                                                    mem[_9913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6228 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6228] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6726 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6726] = return_data.size
                                                    mem[_6726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6507 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6507] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6970 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6970] = return_data.size
                                                        mem[_6970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6509 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6509] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6971 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6971] = return_data.size
                                                        mem[_6971 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8634 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8634] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8634 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9631 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9631] = return_data.size
                                                    mem[_9631 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9194 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9194] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9194 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9914 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9914] = return_data.size
                                                        mem[_9914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9196 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9196] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9196 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9915 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9915] = return_data.size
                                                        mem[_9915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2571 = mem[128]
                                require 0 < mem[96]
                                _3017 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2571) >> 48) + (Mask(8, 72, _3017) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8636 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8636] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8636 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9634 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9634] = return_data.size
                                                mem[_9634 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9199 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9199] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9199 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9916 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9916] = return_data.size
                                                    mem[_9916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9201 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9201] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9201 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9917 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9917] = return_data.size
                                                    mem[_9917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6230 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6230] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6729 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6729] = return_data.size
                                                    mem[_6729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6512 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6512] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6974 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6974] = return_data.size
                                                        mem[_6974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6514 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6514] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6975 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6975] = return_data.size
                                                        mem[_6975 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8638 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8638] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8638 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9637 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9637] = return_data.size
                                                    mem[_9637 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9204 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9204] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9204 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9918 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9918] = return_data.size
                                                        mem[_9918 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9206 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9206] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9206 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9919 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9919] = return_data.size
                                                        mem[_9919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2136 = mem[(32 * idx + 1) + 96]
                        _2137 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2136) >> 211:
                                mem[s + _2137] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2137 + (Mask(16, 216, _2136) >> 211) + 32
                            if address(_2136) >= 255:
                                if Mask(4, 252, _2136) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2136) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2136).mem[_2137 len 4] with:
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                        mem[_2137] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2136).mem[_2137 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                        mem[_2137] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2136).mem[_2137 len 4] with:
                                            gas Mask(24, 160, _2136) >> 160 wei
                                           args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                    mem[_2137] = ext_call.return_data[0]
                                    if Mask(4, 248, _2136) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2137
                                                idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2136) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2136) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2136) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                        mem[_2137] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                        mem[_2137] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                            gas Mask(24, 160, _2136) >> 160 wei
                                           args mem[_2137 + 4 len (Mask(16, 216, _2136) >> 211) - 4]
                                    mem[_2137] = ext_call.return_data[0]
                                    if Mask(4, 248, _2136) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2137
                                                idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2136) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2136) >> 211) + 4:
                                mem[s + _2137] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2137 + (Mask(16, 216, _2136) >> 211) + 36
                            if address(_2136) >= 255:
                                if Mask(4, 252, _2136) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2136) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2136).mem[_2137 len 4] with:
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                        mem[_2137] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2136).mem[_2137 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                        mem[_2137] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2136).mem[_2137 len 4] with:
                                            gas Mask(24, 160, _2136) >> 160 wei
                                           args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                    mem[_2137] = ext_call.return_data[0]
                                    if Mask(4, 248, _2136) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2137
                                                idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2136) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2136) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2136) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                        mem[_2137] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2136) >> 160 wei
                                            args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                        mem[_2137] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2137
                                            idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2136)) + 108 len 20].mem[_2137 len 4] with:
                                            gas Mask(24, 160, _2136) >> 160 wei
                                           args mem[_2137 + 4 len Mask(16, 216, _2136) >> 211]
                                    mem[_2137] = ext_call.return_data[0]
                                    if Mask(4, 248, _2136) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2137
                                                idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2136) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2137
                                                    idx = (Mask(16, 216, _2136) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2137
                        idx = (Mask(16, 216, _2136) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2430 = mem[128]
                                require 0 < mem[96]
                                _2842 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2430) >> 48) + (Mask(8, 40, _2842) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8640 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8640] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8640 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9640 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9640] = return_data.size
                                                mem[_9640 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9209 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9209] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9209 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9920 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9920] = return_data.size
                                                    mem[_9920 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9211 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9211] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9211 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9921 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9921] = return_data.size
                                                    mem[_9921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6232 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6232] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6732 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6732] = return_data.size
                                                    mem[_6732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6517 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6517] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6978 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6978] = return_data.size
                                                        mem[_6978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6519 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6519] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6979 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6979] = return_data.size
                                                        mem[_6979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8642 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8642] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8642 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9643 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9643] = return_data.size
                                                    mem[_9643 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9214 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9214] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9214 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9922 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9922] = return_data.size
                                                        mem[_9922 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9216 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9216] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9216 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9923 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9923] = return_data.size
                                                        mem[_9923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2431 = mem[128]
                                require 0 < mem[96]
                                _2843 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2431) >> 48) + (Mask(8, 72, _2843) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8644 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8644] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8644 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9646 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9646] = return_data.size
                                                mem[_9646 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9219 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9219] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9219 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9924 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9924] = return_data.size
                                                    mem[_9924 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9221 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9221] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9221 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9925 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9925] = return_data.size
                                                    mem[_9925 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6234 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6234] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6735 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6735] = return_data.size
                                                    mem[_6735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6522 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6522] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6982 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6982] = return_data.size
                                                        mem[_6982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6524 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6524] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6983 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6983] = return_data.size
                                                        mem[_6983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8646 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8646] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8646 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9649 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9649] = return_data.size
                                                    mem[_9649 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9224 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9224] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9224 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9926 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9926] = return_data.size
                                                        mem[_9926 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9226 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9226] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9226 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9927 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9927] = return_data.size
                                                        mem[_9927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2580 = mem[128]
                                require 0 < mem[96]
                                _3026 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2580) >> 48) + (Mask(8, 40, _3026) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8648 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8648] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8648 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9652 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9652] = return_data.size
                                                mem[_9652 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9229 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9229] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9229 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9928 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9928] = return_data.size
                                                    mem[_9928 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9231 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9231] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9231 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9929 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9929] = return_data.size
                                                    mem[_9929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6236 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6236] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6738 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6738] = return_data.size
                                                    mem[_6738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6527 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6527] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6986 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6986] = return_data.size
                                                        mem[_6986 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6529 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6529] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6987 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6987] = return_data.size
                                                        mem[_6987 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8650 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8650] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8650 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9655 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9655] = return_data.size
                                                    mem[_9655 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9234 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9234] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9234 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9930 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9930] = return_data.size
                                                        mem[_9930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9236 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9236] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9236 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9931 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9931] = return_data.size
                                                        mem[_9931 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2581 = mem[128]
                                require 0 < mem[96]
                                _3027 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2581) >> 48) + (Mask(8, 72, _3027) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8652 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8652] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8652 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9658 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9658] = return_data.size
                                                mem[_9658 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9239 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9239] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9239 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9932 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9932] = return_data.size
                                                    mem[_9932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9241 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9241] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9241 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9933 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9933] = return_data.size
                                                    mem[_9933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6238 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6238] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6741 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6741] = return_data.size
                                                    mem[_6741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6532 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6532] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6990 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6990] = return_data.size
                                                        mem[_6990 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6534 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6534] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6991 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6991] = return_data.size
                                                        mem[_6991 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8654 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8654] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8654 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9661 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9661] = return_data.size
                                                    mem[_9661 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9244 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9244] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9244 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9934 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9934] = return_data.size
                                                        mem[_9934 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9246 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9246] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9246 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9935 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9935] = return_data.size
                                                        mem[_9935 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
            else:
                require block.gas_limit < 2250 * 3600
                if not Mask(1, 2, mem[128]):
                    idx = 1
                    while idx < arg1.length:
                        _2139 = mem[(32 * idx + 1) + 96]
                        _2140 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2139) >> 211:
                                mem[s + _2140] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2140 + (Mask(16, 216, _2139) >> 211) + 32
                            if address(_2139) >= 255:
                                if Mask(4, 252, _2139) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2139) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2139).mem[_2140 len 4] with:
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                        mem[_2140] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2139).mem[_2140 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                        mem[_2140] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2139).mem[_2140 len 4] with:
                                            gas Mask(24, 160, _2139) >> 160 wei
                                           args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                    mem[_2140] = ext_call.return_data[0]
                                    if Mask(4, 248, _2139) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2140
                                                idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2139) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2139) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2139) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                        mem[_2140] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                        mem[_2140] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                            gas Mask(24, 160, _2139) >> 160 wei
                                           args mem[_2140 + 4 len (Mask(16, 216, _2139) >> 211) - 4]
                                    mem[_2140] = ext_call.return_data[0]
                                    if Mask(4, 248, _2139) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2140
                                                idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2139) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2139) >> 211) + 4:
                                mem[s + _2140] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2140 + (Mask(16, 216, _2139) >> 211) + 36
                            if address(_2139) >= 255:
                                if Mask(4, 252, _2139) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2139) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2139).mem[_2140 len 4] with:
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                        mem[_2140] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2139).mem[_2140 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                        mem[_2140] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2139).mem[_2140 len 4] with:
                                            gas Mask(24, 160, _2139) >> 160 wei
                                           args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                    mem[_2140] = ext_call.return_data[0]
                                    if Mask(4, 248, _2139) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2140
                                                idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2139) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2139) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2139) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                        mem[_2140] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2139) >> 160 wei
                                            args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                        mem[_2140] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2140
                                            idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2139)) + 108 len 20].mem[_2140 len 4] with:
                                            gas Mask(24, 160, _2139) >> 160 wei
                                           args mem[_2140 + 4 len Mask(16, 216, _2139) >> 211]
                                    mem[_2140] = ext_call.return_data[0]
                                    if Mask(4, 248, _2139) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2140
                                                idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2139) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2140
                                                    idx = (Mask(16, 216, _2139) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2140
                        idx = (Mask(16, 216, _2139) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2436 = mem[128]
                                require 0 < mem[96]
                                _2860 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2436) >> 48) + (Mask(8, 40, _2860) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8656 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8656] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8656 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9664 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9664] = return_data.size
                                                mem[_9664 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9249 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9249] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9249 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9936 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9936] = return_data.size
                                                    mem[_9936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9251 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9251] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9251 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9937 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9937] = return_data.size
                                                    mem[_9937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6240 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6240] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6744 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6744] = return_data.size
                                                    mem[_6744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6537 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6537] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6994 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6994] = return_data.size
                                                        mem[_6994 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6539 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6539] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6995 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6995] = return_data.size
                                                        mem[_6995 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8658 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8658] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8658 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9667 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9667] = return_data.size
                                                    mem[_9667 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9254 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9254] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9254 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9938 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9938] = return_data.size
                                                        mem[_9938 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9256 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9256] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9256 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9939 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9939] = return_data.size
                                                        mem[_9939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2437 = mem[128]
                                require 0 < mem[96]
                                _2861 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2437) >> 48) + (Mask(8, 72, _2861) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8660 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8660] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8660 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9670 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9670] = return_data.size
                                                mem[_9670 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9259 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9259] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9259 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9940 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9940] = return_data.size
                                                    mem[_9940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9261 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9261] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9261 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9941 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9941] = return_data.size
                                                    mem[_9941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6242 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6242] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6747 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6747] = return_data.size
                                                    mem[_6747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6542 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6542] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6998 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6998] = return_data.size
                                                        mem[_6998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6544 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6544] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _6999 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_6999] = return_data.size
                                                        mem[_6999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8662 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8662] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8662 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9673 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9673] = return_data.size
                                                    mem[_9673 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9264 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9264] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9264 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9942 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9942] = return_data.size
                                                        mem[_9942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9266 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9266] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9266 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9943 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9943] = return_data.size
                                                        mem[_9943 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2590 = mem[128]
                                require 0 < mem[96]
                                _3036 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2590) >> 48) + (Mask(8, 40, _3036) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8664 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8664] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8664 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9676 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9676] = return_data.size
                                                mem[_9676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9269 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9269] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9269 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9944 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9944] = return_data.size
                                                    mem[_9944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9271 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9271] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9271 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9945 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9945] = return_data.size
                                                    mem[_9945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6244 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6244] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6750 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6750] = return_data.size
                                                    mem[_6750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6547 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6547] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7002 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7002] = return_data.size
                                                        mem[_7002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6549 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6549] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7003 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7003] = return_data.size
                                                        mem[_7003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8666 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8666] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8666 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9679 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9679] = return_data.size
                                                    mem[_9679 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9274 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9274] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9274 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9946 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9946] = return_data.size
                                                        mem[_9946 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9276 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9276] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9276 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9947 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9947] = return_data.size
                                                        mem[_9947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2591 = mem[128]
                                require 0 < mem[96]
                                _3037 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2591) >> 48) + (Mask(8, 72, _3037) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8668 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8668] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8668 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9682 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9682] = return_data.size
                                                mem[_9682 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9279 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9279] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9279 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9948 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9948] = return_data.size
                                                    mem[_9948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9281 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9281] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9281 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9949 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9949] = return_data.size
                                                    mem[_9949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6246 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6246] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6753 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6753] = return_data.size
                                                    mem[_6753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6552 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6552] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7006 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7006] = return_data.size
                                                        mem[_7006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6554 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6554] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7007 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7007] = return_data.size
                                                        mem[_7007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8670 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8670] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8670 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9685 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9685] = return_data.size
                                                    mem[_9685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9284 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9284] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9284 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9950 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9950] = return_data.size
                                                        mem[_9950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9286 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9286] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9286 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9951 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9951] = return_data.size
                                                        mem[_9951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                else:
                    mem[0] = block.coinbase
                    mem[32] = 0
                    require stor0[block.coinbase]
                    idx = 1
                    while idx < arg1.length:
                        _2142 = mem[(32 * idx + 1) + 96]
                        _2143 = mem[64]
                        if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                            s = 0
                            while s < Mask(16, 216, _2142) >> 211:
                                mem[s + _2143] = mem[s + (32 * idx + 3) + 96]
                                s = s + 32
                                continue 
                            mem[64] = _2143 + (Mask(16, 216, _2142) >> 211) + 32
                            if address(_2142) >= 255:
                                if Mask(4, 252, _2142) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2142) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2142).mem[_2143 len 4] with:
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                        mem[_2143] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2142).mem[_2143 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                        mem[_2143] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2142).mem[_2143 len 4] with:
                                            gas Mask(24, 160, _2142) >> 160 wei
                                           args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                    mem[_2143] = ext_call.return_data[0]
                                    if Mask(4, 248, _2142) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2143
                                                idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2142) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2142) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2142) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                        mem[_2143] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                        mem[_2143] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                            gas Mask(24, 160, _2142) >> 160 wei
                                           args mem[_2143 + 4 len (Mask(16, 216, _2142) >> 211) - 4]
                                    mem[_2143] = ext_call.return_data[0]
                                    if Mask(4, 248, _2142) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2143
                                                idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2142) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                        else:
                            mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                            s = 4
                            while s < (Mask(16, 216, _2142) >> 211) + 4:
                                mem[s + _2143] = mem[s + (32 * idx + 3) + 92]
                                s = s + 32
                                continue 
                            mem[64] = _2143 + (Mask(16, 216, _2142) >> 211) + 36
                            if address(_2142) >= 255:
                                if Mask(4, 252, _2142) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2142) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate address(_2142).mem[_2143 len 4] with:
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                        mem[_2143] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call address(_2142).mem[_2143 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                        mem[_2143] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall address(_2142).mem[_2143 len 4] with:
                                            gas Mask(24, 160, _2142) >> 160 wei
                                           args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                    mem[_2143] = ext_call.return_data[0]
                                    if Mask(4, 248, _2142) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2143
                                                idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2142) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                            else:
                                if Mask(4, 252, _2142) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                    if Mask(4, 252, _2142) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                        delegate mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                        mem[_2143] = delegate.return_data[0]
                                        if delegate.return_code:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                    else:
                                        call mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                           value mem[(32 * idx + 2) + 96] wei
                                             gas Mask(24, 160, _2142) >> 160 wei
                                            args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                        mem[_2143] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[64] = _2143
                                            idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                            continue 
                                else:
                                    staticcall mem[(32 * address(_2142)) + 108 len 20].mem[_2143 len 4] with:
                                            gas Mask(24, 160, _2142) >> 160 wei
                                           args mem[_2143 + 4 len Mask(16, 216, _2142) >> 211]
                                    mem[_2143] = ext_call.return_data[0]
                                    if Mask(4, 248, _2142) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _2143
                                                idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if Mask(4, 248, _2142) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                            if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                                        else:
                                            if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                                if ext_call.success:
                                                    mem[64] = _2143
                                                    idx = (Mask(16, 216, _2142) >> 216) + idx + 2
                                                    continue 
                                            else:
                        mem[64] = _2143
                        idx = (Mask(16, 216, _2142) >> 216) + 65537
                        continue 
                    require mem[96]
                    if bool(mem[128]) <= 0:
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2442 = mem[128]
                                require 0 < mem[96]
                                _2878 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2442) >> 48) + (Mask(8, 40, _2878) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8672 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8672] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8672 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9688 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9688] = return_data.size
                                                mem[_9688 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9289 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9289] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9289 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9952 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9952] = return_data.size
                                                    mem[_9952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9291 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9291] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9291 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9953 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9953] = return_data.size
                                                    mem[_9953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6248 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6248] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6756 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6756] = return_data.size
                                                    mem[_6756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6557 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6557] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7010 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7010] = return_data.size
                                                        mem[_7010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6559 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6559] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7011 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7011] = return_data.size
                                                        mem[_7011 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8674 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8674] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8674 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9691 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9691] = return_data.size
                                                    mem[_9691 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9294 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9294] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9294 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9954 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9954] = return_data.size
                                                        mem[_9954 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9296 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9296] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9296 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9955 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9955] = return_data.size
                                                        mem[_9955 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2443 = mem[128]
                                require 0 < mem[96]
                                _2879 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2443) >> 48) + (Mask(8, 72, _2879) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8676 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8676] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8676 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9694 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9694] = return_data.size
                                                mem[_9694 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9299 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9299] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9299 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9956 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9956] = return_data.size
                                                    mem[_9956 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9301 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9301] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9301 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9957 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9957] = return_data.size
                                                    mem[_9957 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6250 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6250] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6759 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6759] = return_data.size
                                                    mem[_6759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6562 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6562] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7014 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7014] = return_data.size
                                                        mem[_7014 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6564 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6564] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7015 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7015] = return_data.size
                                                        mem[_7015 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8678 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8678] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8678 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9697 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9697] = return_data.size
                                                    mem[_9697 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9304 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9304] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9304 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9958 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9958] = return_data.size
                                                        mem[_9958 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9306 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9306] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9306 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9959 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9959] = return_data.size
                                                        mem[_9959 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        require eth.balance(this.address) >= eth.balance(this.address)
                        require 0 < mem[96]
                        if Mask(1, 4, mem[128]) > 0:
                            require 0 < mem[96]
                            if idx <= 65535:
                                _2600 = mem[128]
                                require 0 < mem[96]
                                _3046 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2600) >> 48) + (Mask(8, 40, _3046) >> 40):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8680 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8680] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8680 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9700 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9700] = return_data.size
                                                mem[_9700 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9309 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9309] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9309 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9960 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9960] = return_data.size
                                                    mem[_9960 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9311 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9311] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9311 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9961 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9961] = return_data.size
                                                    mem[_9961 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6252 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6252] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6762 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6762] = return_data.size
                                                    mem[_6762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6567 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6567] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7018 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7018] = return_data.size
                                                        mem[_7018 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6569 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6569] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7019 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7019] = return_data.size
                                                        mem[_7019 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8682 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8682] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8682 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9703 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9703] = return_data.size
                                                    mem[_9703 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9314 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9314] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9314 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9962 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9962] = return_data.size
                                                        mem[_9962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9316 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9316] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9316 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9963 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9963] = return_data.size
                                                        mem[_9963 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                _2601 = mem[128]
                                require 0 < mem[96]
                                _3047 = mem[128]
                                idx = mem[151 len 3]
                                while idx < (Mask(24, 48, _2601) >> 48) + (Mask(8, 72, _3047) >> 72):
                                    if 0 >= idx:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _8684 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_8684] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                            call address(sha3(mem[_8684 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _9706 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_9706] = return_data.size
                                                mem[_9706 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _9319 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9319] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9319 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9964 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9964] = return_data.size
                                                    mem[_9964 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _9321 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_9321] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_9321 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9965 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9965] = return_data.size
                                                    mem[_9965 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx < 128:
                                            if not idx:
                                                _6254 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_6254] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _6765 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_6765] = return_data.size
                                                    mem[_6765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _6572 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6572] = (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ed7f000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7022 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7022] = return_data.size
                                                        mem[_7022 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _6574 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_6574] = (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000
                                                    call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff535845b8eb62575d0f31fd2ebf1305ee00000000000000000000) >> 72)) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _7023 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_7023] = return_data.size
                                                        mem[_7023 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            s = 1
                                            t = 0
                                            while idx >= s:
                                                s = 256 * s
                                                t = t + 1
                                                continue 
                                            if not idx:
                                                _8686 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_8686] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                call address(sha3(mem[_8686 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _9709 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_9709] = return_data.size
                                                    mem[_9709 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                if idx >= 128:
                                                    _9324 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9324] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9324 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9966 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9966] = return_data.size
                                                        mem[_9966 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                else:
                                                    _9326 = mem[64]
                                                    mem[64] = mem[64] + 32
                                                    mem[_9326] = (idx << 72) + (t + 214 << 248) + 0x9400000000aca7ba47149da8a2f0ce02d140ecfa1200000000000000000000
                                                    call address(sha3(mem[_9326 len t + 23])) with:
                                                         gas gas_remaining wei
                                                    if return_data.size:
                                                        _9967 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                        mem[_9967] = return_data.size
                                                        mem[_9967 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
    return 0
}



}
