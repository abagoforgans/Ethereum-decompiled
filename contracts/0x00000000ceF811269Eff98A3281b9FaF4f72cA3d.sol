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
        mem[96] = 0x766fcef811269eff98a3281b9faf4f72ca3d3318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766fcef811269eff98a3281b9faf4f72ca3d3318585733ff60005260176009f3
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
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if not Mask(1, 5, mem[128]):
            if not Mask(1, 2, mem[128]):
                idx = 1
                while idx < arg1.length:
                    _1051 = mem[(32 * idx + 1) + 96]
                    _1052 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1051) >> 211:
                            mem[s + _1052] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1052 + (Mask(16, 216, _1051) >> 211) + 32
                        if address(_1051) >= 255:
                            if Mask(4, 252, _1051) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1051) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1051).mem[_1052 len 4] with:
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                    mem[_1052] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1051).mem[_1052 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                    mem[_1052] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1051).mem[_1052 len 4] with:
                                        gas Mask(24, 160, _1051) >> 160 wei
                                       args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                mem[_1052] = ext_call.return_data[0]
                                if Mask(4, 248, _1051) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1052
                                            idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1051) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1051) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1051) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                    mem[_1052] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                    mem[_1052] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                        gas Mask(24, 160, _1051) >> 160 wei
                                       args mem[_1052 + 4 len (Mask(16, 216, _1051) >> 211) - 4]
                                mem[_1052] = ext_call.return_data[0]
                                if Mask(4, 248, _1051) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1052
                                            idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1051) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1051) >> 211) + 4:
                            mem[s + _1052] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1052 + (Mask(16, 216, _1051) >> 211) + 36
                        if address(_1051) >= 255:
                            if Mask(4, 252, _1051) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1051) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1051).mem[_1052 len 4] with:
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                    mem[_1052] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1051).mem[_1052 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                    mem[_1052] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1051).mem[_1052 len 4] with:
                                        gas Mask(24, 160, _1051) >> 160 wei
                                       args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                mem[_1052] = ext_call.return_data[0]
                                if Mask(4, 248, _1051) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1052
                                            idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1051) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1051) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1051) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                    mem[_1052] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1051) >> 160 wei
                                        args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                    mem[_1052] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1052
                                        idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1051)) + 108 len 20].mem[_1052 len 4] with:
                                        gas Mask(24, 160, _1051) >> 160 wei
                                       args mem[_1052 + 4 len Mask(16, 216, _1051) >> 211]
                                mem[_1052] = ext_call.return_data[0]
                                if Mask(4, 248, _1051) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1052
                                            idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1051) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1052
                                                idx = (Mask(16, 216, _1051) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1052
                    idx = (Mask(16, 216, _1051) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1178 = mem[128]
                            require 0 < mem[96]
                            _1306 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1178) >> 48) + (Mask(8, 40, _1306) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4218 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4218] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4218 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4666 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4666] = return_data.size
                                            mem[_4666 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4347 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4347] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4347 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4858 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4858] = return_data.size
                                                mem[_4858 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4349 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4349] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4349 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4859 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4859] = return_data.size
                                                mem[_4859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3066 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3066] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3290 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3290] = return_data.size
                                                mem[_3290 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3131 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3131] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3388 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3388] = return_data.size
                                                    mem[_3388 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3133 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3133] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3389 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3389] = return_data.size
                                                    mem[_3389 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4220 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4220] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4220 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4669 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4669] = return_data.size
                                                mem[_4669 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4352 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4352] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4352 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4860 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4860] = return_data.size
                                                    mem[_4860 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4354 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4354] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4354 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4861 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4861] = return_data.size
                                                    mem[_4861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1179 = mem[128]
                            require 0 < mem[96]
                            _1307 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1179) >> 48) + (Mask(8, 72, _1307) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4222 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4222] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4222 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4672 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4672] = return_data.size
                                            mem[_4672 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4357 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4357] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4357 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4862 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4862] = return_data.size
                                                mem[_4862 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4359 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4359] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4359 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4863 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4863] = return_data.size
                                                mem[_4863 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3068 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3068] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3293 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3293] = return_data.size
                                                mem[_3293 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3136 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3136] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3392 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3392] = return_data.size
                                                    mem[_3392 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3138 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3138] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3393 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3393] = return_data.size
                                                    mem[_3393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4224 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4224] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4224 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4675 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4675] = return_data.size
                                                mem[_4675 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4362 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4362] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4362 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4864 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4864] = return_data.size
                                                    mem[_4864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4364 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4364] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4364 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4865 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4865] = return_data.size
                                                    mem[_4865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1228 = mem[128]
                            require 0 < mem[96]
                            _1450 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1228) >> 48) + (Mask(8, 40, _1450) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4226 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4226] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4226 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4678 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4678] = return_data.size
                                            mem[_4678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4367 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4367] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4367 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4866 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4866] = return_data.size
                                                mem[_4866 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4369 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4369] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4369 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4867 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4867] = return_data.size
                                                mem[_4867 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3070 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3070] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3296 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3296] = return_data.size
                                                mem[_3296 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3141 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3141] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3396 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3396] = return_data.size
                                                    mem[_3396 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3143 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3143] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3397 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3397] = return_data.size
                                                    mem[_3397 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4228 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4228] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4228 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4681 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4681] = return_data.size
                                                mem[_4681 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4372 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4372] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4372 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4868 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4868] = return_data.size
                                                    mem[_4868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4374 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4374] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4374 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4869 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4869] = return_data.size
                                                    mem[_4869 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1229 = mem[128]
                            require 0 < mem[96]
                            _1451 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1229) >> 48) + (Mask(8, 72, _1451) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4230 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4230] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4230 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4684] = return_data.size
                                            mem[_4684 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4377 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4377] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4377 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4870 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4870] = return_data.size
                                                mem[_4870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4379 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4379] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4379 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4871 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4871] = return_data.size
                                                mem[_4871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3072 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3072] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3299 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3299] = return_data.size
                                                mem[_3299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3146 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3146] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3400 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3400] = return_data.size
                                                    mem[_3400 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3148 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3148] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3401 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3401] = return_data.size
                                                    mem[_3401 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4232 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4232] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4232 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4687 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4687] = return_data.size
                                                mem[_4687 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4382 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4382] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4382 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4872 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4872] = return_data.size
                                                    mem[_4872 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4384 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4384] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4384 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4873 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4873] = return_data.size
                                                    mem[_4873 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1054 = mem[(32 * idx + 1) + 96]
                    _1055 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1054) >> 211:
                            mem[s + _1055] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1055 + (Mask(16, 216, _1054) >> 211) + 32
                        if address(_1054) >= 255:
                            if Mask(4, 252, _1054) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1054) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1054).mem[_1055 len 4] with:
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                    mem[_1055] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1054).mem[_1055 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                    mem[_1055] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1054).mem[_1055 len 4] with:
                                        gas Mask(24, 160, _1054) >> 160 wei
                                       args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                mem[_1055] = ext_call.return_data[0]
                                if Mask(4, 248, _1054) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1055
                                            idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1054) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1054) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1054) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                    mem[_1055] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                    mem[_1055] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                        gas Mask(24, 160, _1054) >> 160 wei
                                       args mem[_1055 + 4 len (Mask(16, 216, _1054) >> 211) - 4]
                                mem[_1055] = ext_call.return_data[0]
                                if Mask(4, 248, _1054) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1055
                                            idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1054) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1054) >> 211) + 4:
                            mem[s + _1055] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1055 + (Mask(16, 216, _1054) >> 211) + 36
                        if address(_1054) >= 255:
                            if Mask(4, 252, _1054) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1054) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1054).mem[_1055 len 4] with:
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                    mem[_1055] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1054).mem[_1055 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                    mem[_1055] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1054).mem[_1055 len 4] with:
                                        gas Mask(24, 160, _1054) >> 160 wei
                                       args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                mem[_1055] = ext_call.return_data[0]
                                if Mask(4, 248, _1054) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1055
                                            idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1054) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1054) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1054) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                    mem[_1055] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1054) >> 160 wei
                                        args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                    mem[_1055] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1055
                                        idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1054)) + 108 len 20].mem[_1055 len 4] with:
                                        gas Mask(24, 160, _1054) >> 160 wei
                                       args mem[_1055 + 4 len Mask(16, 216, _1054) >> 211]
                                mem[_1055] = ext_call.return_data[0]
                                if Mask(4, 248, _1054) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1055
                                            idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1054) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1055
                                                idx = (Mask(16, 216, _1054) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1055
                    idx = (Mask(16, 216, _1054) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1184 = mem[128]
                            require 0 < mem[96]
                            _1324 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1184) >> 48) + (Mask(8, 40, _1324) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4234 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4234] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4234 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4690 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4690] = return_data.size
                                            mem[_4690 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4387 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4387] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4387 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4874 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4874] = return_data.size
                                                mem[_4874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4389 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4389] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4389 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4875 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4875] = return_data.size
                                                mem[_4875 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3074 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3074] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3302 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3302] = return_data.size
                                                mem[_3302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3151 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3151] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3404 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3404] = return_data.size
                                                    mem[_3404 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3153 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3153] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3405 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3405] = return_data.size
                                                    mem[_3405 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4236 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4236] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4236 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4693 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4693] = return_data.size
                                                mem[_4693 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4392 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4392] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4392 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4876 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4876] = return_data.size
                                                    mem[_4876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4394 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4394] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4394 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4877 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4877] = return_data.size
                                                    mem[_4877 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1185 = mem[128]
                            require 0 < mem[96]
                            _1325 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1185) >> 48) + (Mask(8, 72, _1325) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4238 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4238] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4238 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4696 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4696] = return_data.size
                                            mem[_4696 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4397 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4397] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4397 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4878 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4878] = return_data.size
                                                mem[_4878 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4399 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4399] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4399 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4879 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4879] = return_data.size
                                                mem[_4879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3076 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3076] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3305 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3305] = return_data.size
                                                mem[_3305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3156 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3156] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3408 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3408] = return_data.size
                                                    mem[_3408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3158 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3158] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3409 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3409] = return_data.size
                                                    mem[_3409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4240 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4240] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4240 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4699 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4699] = return_data.size
                                                mem[_4699 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4402 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4402] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4402 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4880 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4880] = return_data.size
                                                    mem[_4880 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4404 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4404] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4404 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4881 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4881] = return_data.size
                                                    mem[_4881 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1238 = mem[128]
                            require 0 < mem[96]
                            _1460 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1238) >> 48) + (Mask(8, 40, _1460) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4242 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4242] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4242 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4702 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4702] = return_data.size
                                            mem[_4702 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4407 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4407] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4407 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4882 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4882] = return_data.size
                                                mem[_4882 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4409 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4409] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4409 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4883 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4883] = return_data.size
                                                mem[_4883 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3078 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3078] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3308 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3308] = return_data.size
                                                mem[_3308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3161 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3161] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3412 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3412] = return_data.size
                                                    mem[_3412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3163 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3163] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3413 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3413] = return_data.size
                                                    mem[_3413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4244 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4244] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4244 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4705 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4705] = return_data.size
                                                mem[_4705 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4412 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4412] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4412 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4884 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4884] = return_data.size
                                                    mem[_4884 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4414 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4414] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4414 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4885 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4885] = return_data.size
                                                    mem[_4885 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1239 = mem[128]
                            require 0 < mem[96]
                            _1461 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1239) >> 48) + (Mask(8, 72, _1461) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4246 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4246] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4246 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4708 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4708] = return_data.size
                                            mem[_4708 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4417 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4417] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4417 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4886 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4886] = return_data.size
                                                mem[_4886 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4419 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4419] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4419 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4887 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4887] = return_data.size
                                                mem[_4887 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3080 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3080] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3311 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3311] = return_data.size
                                                mem[_3311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3166 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3166] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3416 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3416] = return_data.size
                                                    mem[_3416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3168 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3168] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3417 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3417] = return_data.size
                                                    mem[_3417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4248 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4248] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4248 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4711 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4711] = return_data.size
                                                mem[_4711 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4422 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4422] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4422 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4888 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4888] = return_data.size
                                                    mem[_4888 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4424 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4424] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4424 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4889 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4889] = return_data.size
                                                    mem[_4889 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if not Mask(1, 2, mem[128]):
                idx = 1
                while idx < arg1.length:
                    _1057 = mem[(32 * idx + 1) + 96]
                    _1058 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1057) >> 211:
                            mem[s + _1058] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1058 + (Mask(16, 216, _1057) >> 211) + 32
                        if address(_1057) >= 255:
                            if Mask(4, 252, _1057) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1057) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1057).mem[_1058 len 4] with:
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                    mem[_1058] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1057).mem[_1058 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                    mem[_1058] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1057).mem[_1058 len 4] with:
                                        gas Mask(24, 160, _1057) >> 160 wei
                                       args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                mem[_1058] = ext_call.return_data[0]
                                if Mask(4, 248, _1057) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1058
                                            idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1057) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1057) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1057) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                    mem[_1058] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                    mem[_1058] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                        gas Mask(24, 160, _1057) >> 160 wei
                                       args mem[_1058 + 4 len (Mask(16, 216, _1057) >> 211) - 4]
                                mem[_1058] = ext_call.return_data[0]
                                if Mask(4, 248, _1057) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1058
                                            idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1057) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1057) >> 211) + 4:
                            mem[s + _1058] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1058 + (Mask(16, 216, _1057) >> 211) + 36
                        if address(_1057) >= 255:
                            if Mask(4, 252, _1057) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1057) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1057).mem[_1058 len 4] with:
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                    mem[_1058] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1057).mem[_1058 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                    mem[_1058] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1057).mem[_1058 len 4] with:
                                        gas Mask(24, 160, _1057) >> 160 wei
                                       args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                mem[_1058] = ext_call.return_data[0]
                                if Mask(4, 248, _1057) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1058
                                            idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1057) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1057) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1057) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                    mem[_1058] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1057) >> 160 wei
                                        args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                    mem[_1058] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1058
                                        idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1057)) + 108 len 20].mem[_1058 len 4] with:
                                        gas Mask(24, 160, _1057) >> 160 wei
                                       args mem[_1058 + 4 len Mask(16, 216, _1057) >> 211]
                                mem[_1058] = ext_call.return_data[0]
                                if Mask(4, 248, _1057) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1058
                                            idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1057) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1058
                                                idx = (Mask(16, 216, _1057) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1058
                    idx = (Mask(16, 216, _1057) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1190 = mem[128]
                            require 0 < mem[96]
                            _1342 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1190) >> 48) + (Mask(8, 40, _1342) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4250 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4250] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4250 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4714 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4714] = return_data.size
                                            mem[_4714 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4427 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4427] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4427 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4890 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4890] = return_data.size
                                                mem[_4890 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4429 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4429] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4429 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4891 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4891] = return_data.size
                                                mem[_4891 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3082 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3082] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3314 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3314] = return_data.size
                                                mem[_3314 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3171 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3171] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3420 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3420] = return_data.size
                                                    mem[_3420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3173 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3173] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3421 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3421] = return_data.size
                                                    mem[_3421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4252 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4252] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4252 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4717 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4717] = return_data.size
                                                mem[_4717 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4432 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4432] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4432 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4892 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4892] = return_data.size
                                                    mem[_4892 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4434 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4434] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4434 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4893] = return_data.size
                                                    mem[_4893 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1191 = mem[128]
                            require 0 < mem[96]
                            _1343 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1191) >> 48) + (Mask(8, 72, _1343) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4254 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4254] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4254 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4720 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4720] = return_data.size
                                            mem[_4720 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4437 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4437] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4437 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4894 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4894] = return_data.size
                                                mem[_4894 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4439 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4439] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4439 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4895 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4895] = return_data.size
                                                mem[_4895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3084 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3084] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3317 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3317] = return_data.size
                                                mem[_3317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3176 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3176] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3424 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3424] = return_data.size
                                                    mem[_3424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3178 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3178] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3425 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3425] = return_data.size
                                                    mem[_3425 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4256 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4256] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4256 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4723 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4723] = return_data.size
                                                mem[_4723 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4442 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4442] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4442 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4896 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4896] = return_data.size
                                                    mem[_4896 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4444 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4444] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4444 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4897 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4897] = return_data.size
                                                    mem[_4897 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1248 = mem[128]
                            require 0 < mem[96]
                            _1470 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1248) >> 48) + (Mask(8, 40, _1470) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4258 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4258] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4258 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4726 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4726] = return_data.size
                                            mem[_4726 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4447 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4447] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4447 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4898 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4898] = return_data.size
                                                mem[_4898 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4449 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4449] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4449 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4899 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4899] = return_data.size
                                                mem[_4899 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3086 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3086] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3320 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3320] = return_data.size
                                                mem[_3320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3181 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3181] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3428 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3428] = return_data.size
                                                    mem[_3428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3183 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3183] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3429 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3429] = return_data.size
                                                    mem[_3429 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4260 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4260] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4260 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4729 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4729] = return_data.size
                                                mem[_4729 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4452 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4452] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4452 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4900 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4900] = return_data.size
                                                    mem[_4900 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4454 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4454] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4454 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4901 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4901] = return_data.size
                                                    mem[_4901 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1249 = mem[128]
                            require 0 < mem[96]
                            _1471 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1249) >> 48) + (Mask(8, 72, _1471) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4262 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4262] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4262 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4732 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4732] = return_data.size
                                            mem[_4732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4457 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4457] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4457 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4902 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4902] = return_data.size
                                                mem[_4902 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4459 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4459] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4459 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4903 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4903] = return_data.size
                                                mem[_4903 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3088 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3088] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3323 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3323] = return_data.size
                                                mem[_3323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3186 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3186] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3432 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3432] = return_data.size
                                                    mem[_3432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3188 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3188] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3433 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3433] = return_data.size
                                                    mem[_3433 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4264 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4264] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4264 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4735 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4735] = return_data.size
                                                mem[_4735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4462 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4462] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4462 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4904 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4904] = return_data.size
                                                    mem[_4904 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4464 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4464] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4464 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4905 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4905] = return_data.size
                                                    mem[_4905 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1060 = mem[(32 * idx + 1) + 96]
                    _1061 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1060) >> 211:
                            mem[s + _1061] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1061 + (Mask(16, 216, _1060) >> 211) + 32
                        if address(_1060) >= 255:
                            if Mask(4, 252, _1060) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1060) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1060).mem[_1061 len 4] with:
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                    mem[_1061] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1060).mem[_1061 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                    mem[_1061] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1060).mem[_1061 len 4] with:
                                        gas Mask(24, 160, _1060) >> 160 wei
                                       args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                mem[_1061] = ext_call.return_data[0]
                                if Mask(4, 248, _1060) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1061
                                            idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1060) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1060) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1060) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                    mem[_1061] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                    mem[_1061] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                        gas Mask(24, 160, _1060) >> 160 wei
                                       args mem[_1061 + 4 len (Mask(16, 216, _1060) >> 211) - 4]
                                mem[_1061] = ext_call.return_data[0]
                                if Mask(4, 248, _1060) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1061
                                            idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1060) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1060) >> 211) + 4:
                            mem[s + _1061] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1061 + (Mask(16, 216, _1060) >> 211) + 36
                        if address(_1060) >= 255:
                            if Mask(4, 252, _1060) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1060) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1060).mem[_1061 len 4] with:
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                    mem[_1061] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1060).mem[_1061 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                    mem[_1061] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1060).mem[_1061 len 4] with:
                                        gas Mask(24, 160, _1060) >> 160 wei
                                       args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                mem[_1061] = ext_call.return_data[0]
                                if Mask(4, 248, _1060) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1061
                                            idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1060) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1060) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1060) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                    mem[_1061] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1060) >> 160 wei
                                        args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                    mem[_1061] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1061
                                        idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1060)) + 108 len 20].mem[_1061 len 4] with:
                                        gas Mask(24, 160, _1060) >> 160 wei
                                       args mem[_1061 + 4 len Mask(16, 216, _1060) >> 211]
                                mem[_1061] = ext_call.return_data[0]
                                if Mask(4, 248, _1060) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1061
                                            idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1060) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1061
                                                idx = (Mask(16, 216, _1060) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1061
                    idx = (Mask(16, 216, _1060) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1196 = mem[128]
                            require 0 < mem[96]
                            _1360 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1196) >> 48) + (Mask(8, 40, _1360) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4266 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4266] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4266 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4738 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4738] = return_data.size
                                            mem[_4738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4467 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4467] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4467 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4906 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4906] = return_data.size
                                                mem[_4906 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4469 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4469] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4469 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4907 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4907] = return_data.size
                                                mem[_4907 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3090 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3090] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3326 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3326] = return_data.size
                                                mem[_3326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3191 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3191] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3436 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3436] = return_data.size
                                                    mem[_3436 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3193 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3193] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3437 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3437] = return_data.size
                                                    mem[_3437 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4268 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4268] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4268 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4741 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4741] = return_data.size
                                                mem[_4741 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4472 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4472] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4472 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4908 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4908] = return_data.size
                                                    mem[_4908 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4474 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4474] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4474 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4909 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4909] = return_data.size
                                                    mem[_4909 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1197 = mem[128]
                            require 0 < mem[96]
                            _1361 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1197) >> 48) + (Mask(8, 72, _1361) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4270 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4270] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4270 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4744 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4744] = return_data.size
                                            mem[_4744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4477 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4477] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4477 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4910 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4910] = return_data.size
                                                mem[_4910 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4479 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4479] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4479 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4911 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4911] = return_data.size
                                                mem[_4911 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3092 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3092] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3329 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3329] = return_data.size
                                                mem[_3329 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3196 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3196] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3440 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3440] = return_data.size
                                                    mem[_3440 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3198 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3198] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3441 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3441] = return_data.size
                                                    mem[_3441 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4272 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4272] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4272 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4747 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4747] = return_data.size
                                                mem[_4747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4482 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4482] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4482 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4912 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4912] = return_data.size
                                                    mem[_4912 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4484 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4484] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4484 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4913 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4913] = return_data.size
                                                    mem[_4913 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1258 = mem[128]
                            require 0 < mem[96]
                            _1480 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1258) >> 48) + (Mask(8, 40, _1480) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4274 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4274] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4274 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4750 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4750] = return_data.size
                                            mem[_4750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4487 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4487] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4487 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4914 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4914] = return_data.size
                                                mem[_4914 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4489 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4489] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4489 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4915 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4915] = return_data.size
                                                mem[_4915 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3094 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3094] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3332 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3332] = return_data.size
                                                mem[_3332 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3201 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3201] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3444 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3444] = return_data.size
                                                    mem[_3444 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3203 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3203] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3445 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3445] = return_data.size
                                                    mem[_3445 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4276 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4276] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4276 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4753 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4753] = return_data.size
                                                mem[_4753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4492 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4492] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4492 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4916 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4916] = return_data.size
                                                    mem[_4916 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4494 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4494] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4494 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4917 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4917] = return_data.size
                                                    mem[_4917 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1259 = mem[128]
                            require 0 < mem[96]
                            _1481 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1259) >> 48) + (Mask(8, 72, _1481) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4278 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4278] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4278 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4756 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4756] = return_data.size
                                            mem[_4756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4497 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4497] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4497 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4918 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4918] = return_data.size
                                                mem[_4918 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4499 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4499] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4499 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4919 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4919] = return_data.size
                                                mem[_4919 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3096 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3096] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3335 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3335] = return_data.size
                                                mem[_3335 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3206 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3206] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3448 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3448] = return_data.size
                                                    mem[_3448 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3208 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3208] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3449 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3449] = return_data.size
                                                    mem[_3449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4280 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4280] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4280 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4759 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4759] = return_data.size
                                                mem[_4759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4502 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4502] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4502 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4920 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4920] = return_data.size
                                                    mem[_4920 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4504 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4504] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4504 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4921 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4921] = return_data.size
                                                    mem[_4921 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    else:
        require not storDEAD[mem[148 len 2]]
        mem[0] = msg.sender
        mem[32] = 1
        require stor1[msg.sender]
        if not Mask(1, 5, mem[128]):
            if not Mask(1, 2, mem[128]):
                idx = 1
                while idx < arg1.length:
                    _1063 = mem[(32 * idx + 1) + 96]
                    _1064 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1063) >> 211:
                            mem[s + _1064] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1064 + (Mask(16, 216, _1063) >> 211) + 32
                        if address(_1063) >= 255:
                            if Mask(4, 252, _1063) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1063) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1063).mem[_1064 len 4] with:
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                    mem[_1064] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1063).mem[_1064 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                    mem[_1064] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1063).mem[_1064 len 4] with:
                                        gas Mask(24, 160, _1063) >> 160 wei
                                       args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                mem[_1064] = ext_call.return_data[0]
                                if Mask(4, 248, _1063) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1064
                                            idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1063) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1063) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1063) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                    mem[_1064] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                    mem[_1064] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                        gas Mask(24, 160, _1063) >> 160 wei
                                       args mem[_1064 + 4 len (Mask(16, 216, _1063) >> 211) - 4]
                                mem[_1064] = ext_call.return_data[0]
                                if Mask(4, 248, _1063) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1064
                                            idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1063) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1063) >> 211) + 4:
                            mem[s + _1064] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1064 + (Mask(16, 216, _1063) >> 211) + 36
                        if address(_1063) >= 255:
                            if Mask(4, 252, _1063) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1063) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1063).mem[_1064 len 4] with:
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                    mem[_1064] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1063).mem[_1064 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                    mem[_1064] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1063).mem[_1064 len 4] with:
                                        gas Mask(24, 160, _1063) >> 160 wei
                                       args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                mem[_1064] = ext_call.return_data[0]
                                if Mask(4, 248, _1063) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1064
                                            idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1063) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1063) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1063) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                    mem[_1064] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1063) >> 160 wei
                                        args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                    mem[_1064] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1064
                                        idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1063)) + 108 len 20].mem[_1064 len 4] with:
                                        gas Mask(24, 160, _1063) >> 160 wei
                                       args mem[_1064 + 4 len Mask(16, 216, _1063) >> 211]
                                mem[_1064] = ext_call.return_data[0]
                                if Mask(4, 248, _1063) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1064
                                            idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1063) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1064
                                                idx = (Mask(16, 216, _1063) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1064
                    idx = (Mask(16, 216, _1063) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1202 = mem[128]
                            require 0 < mem[96]
                            _1378 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1202) >> 48) + (Mask(8, 40, _1378) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4282 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4282] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4282 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4762 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4762] = return_data.size
                                            mem[_4762 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4507 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4507] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4507 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4922 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4922] = return_data.size
                                                mem[_4922 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4509 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4509] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4509 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4923 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4923] = return_data.size
                                                mem[_4923 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3098 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3098] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3338 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3338] = return_data.size
                                                mem[_3338 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3211 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3211] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3452 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3452] = return_data.size
                                                    mem[_3452 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3213 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3213] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3453 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3453] = return_data.size
                                                    mem[_3453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4284 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4284] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4284 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4765 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4765] = return_data.size
                                                mem[_4765 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4512 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4512] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4512 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4924 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4924] = return_data.size
                                                    mem[_4924 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4514 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4514] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4514 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4925 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4925] = return_data.size
                                                    mem[_4925 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1203 = mem[128]
                            require 0 < mem[96]
                            _1379 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1203) >> 48) + (Mask(8, 72, _1379) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4286 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4286] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4286 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4768 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4768] = return_data.size
                                            mem[_4768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4517 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4517] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4517 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4926 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4926] = return_data.size
                                                mem[_4926 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4519 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4519] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4519 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4927 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4927] = return_data.size
                                                mem[_4927 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3100 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3100] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3341 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3341] = return_data.size
                                                mem[_3341 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3216 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3216] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3456 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3456] = return_data.size
                                                    mem[_3456 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3218 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3218] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3457 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3457] = return_data.size
                                                    mem[_3457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4288 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4288] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4288 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4771 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4771] = return_data.size
                                                mem[_4771 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4522 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4522] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4522 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4928 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4928] = return_data.size
                                                    mem[_4928 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4524 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4524] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4524 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4929 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4929] = return_data.size
                                                    mem[_4929 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1268 = mem[128]
                            require 0 < mem[96]
                            _1490 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1268) >> 48) + (Mask(8, 40, _1490) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4290 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4290] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4290 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4774 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4774] = return_data.size
                                            mem[_4774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4527 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4527] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4527 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4930 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4930] = return_data.size
                                                mem[_4930 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4529 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4529] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4529 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4931 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4931] = return_data.size
                                                mem[_4931 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3102 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3102] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3344 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3344] = return_data.size
                                                mem[_3344 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3221 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3221] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3460 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3460] = return_data.size
                                                    mem[_3460 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3223 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3223] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3461 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3461] = return_data.size
                                                    mem[_3461 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4292 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4292] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4292 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4777 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4777] = return_data.size
                                                mem[_4777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4532 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4532] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4532 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4932 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4932] = return_data.size
                                                    mem[_4932 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4534 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4534] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4534 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4933 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4933] = return_data.size
                                                    mem[_4933 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1269 = mem[128]
                            require 0 < mem[96]
                            _1491 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1269) >> 48) + (Mask(8, 72, _1491) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4294 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4294] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4294 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4780 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4780] = return_data.size
                                            mem[_4780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4537 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4537] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4537 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4934 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4934] = return_data.size
                                                mem[_4934 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4539 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4539] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4539 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4935 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4935] = return_data.size
                                                mem[_4935 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3104 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3104] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3347 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3347] = return_data.size
                                                mem[_3347 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3226 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3226] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3464 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3464] = return_data.size
                                                    mem[_3464 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3228 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3228] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3465 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3465] = return_data.size
                                                    mem[_3465 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4296 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4296] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4296 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4783 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4783] = return_data.size
                                                mem[_4783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4542 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4542] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4542 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4936 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4936] = return_data.size
                                                    mem[_4936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4544 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4544] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4544 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4937 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4937] = return_data.size
                                                    mem[_4937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1066 = mem[(32 * idx + 1) + 96]
                    _1067 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1066) >> 211:
                            mem[s + _1067] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1067 + (Mask(16, 216, _1066) >> 211) + 32
                        if address(_1066) >= 255:
                            if Mask(4, 252, _1066) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1066) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1066).mem[_1067 len 4] with:
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                    mem[_1067] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1066).mem[_1067 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                    mem[_1067] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1066).mem[_1067 len 4] with:
                                        gas Mask(24, 160, _1066) >> 160 wei
                                       args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                mem[_1067] = ext_call.return_data[0]
                                if Mask(4, 248, _1066) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1067
                                            idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1066) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1066) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1066) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                    mem[_1067] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                    mem[_1067] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                        gas Mask(24, 160, _1066) >> 160 wei
                                       args mem[_1067 + 4 len (Mask(16, 216, _1066) >> 211) - 4]
                                mem[_1067] = ext_call.return_data[0]
                                if Mask(4, 248, _1066) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1067
                                            idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1066) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1066) >> 211) + 4:
                            mem[s + _1067] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1067 + (Mask(16, 216, _1066) >> 211) + 36
                        if address(_1066) >= 255:
                            if Mask(4, 252, _1066) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1066) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1066).mem[_1067 len 4] with:
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                    mem[_1067] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1066).mem[_1067 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                    mem[_1067] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1066).mem[_1067 len 4] with:
                                        gas Mask(24, 160, _1066) >> 160 wei
                                       args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                mem[_1067] = ext_call.return_data[0]
                                if Mask(4, 248, _1066) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1067
                                            idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1066) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1066) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1066) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                    mem[_1067] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1066) >> 160 wei
                                        args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                    mem[_1067] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1067
                                        idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1066)) + 108 len 20].mem[_1067 len 4] with:
                                        gas Mask(24, 160, _1066) >> 160 wei
                                       args mem[_1067 + 4 len Mask(16, 216, _1066) >> 211]
                                mem[_1067] = ext_call.return_data[0]
                                if Mask(4, 248, _1066) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1067
                                            idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1066) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1067
                                                idx = (Mask(16, 216, _1066) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1067
                    idx = (Mask(16, 216, _1066) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1208 = mem[128]
                            require 0 < mem[96]
                            _1396 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1208) >> 48) + (Mask(8, 40, _1396) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4298 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4298] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4298 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4786 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4786] = return_data.size
                                            mem[_4786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4547 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4547] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4547 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4938 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4938] = return_data.size
                                                mem[_4938 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4549 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4549] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4549 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4939 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4939] = return_data.size
                                                mem[_4939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3106 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3106] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3350 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3350] = return_data.size
                                                mem[_3350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3231 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3231] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3468 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3468] = return_data.size
                                                    mem[_3468 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3233 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3233] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3469] = return_data.size
                                                    mem[_3469 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4300 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4300] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4300 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4789 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4789] = return_data.size
                                                mem[_4789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4552 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4552] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4552 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4940 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4940] = return_data.size
                                                    mem[_4940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4554 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4554] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4554 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4941 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4941] = return_data.size
                                                    mem[_4941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1209 = mem[128]
                            require 0 < mem[96]
                            _1397 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1209) >> 48) + (Mask(8, 72, _1397) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4302 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4302] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4302 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4792 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4792] = return_data.size
                                            mem[_4792 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4557 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4557] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4557 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4942 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4942] = return_data.size
                                                mem[_4942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4559 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4559] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4559 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4943 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4943] = return_data.size
                                                mem[_4943 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3108 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3108] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3353 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3353] = return_data.size
                                                mem[_3353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3236 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3236] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3472 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3472] = return_data.size
                                                    mem[_3472 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3238 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3238] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3473 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3473] = return_data.size
                                                    mem[_3473 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4304 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4304] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4304 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4795 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4795] = return_data.size
                                                mem[_4795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4562 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4562] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4562 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4944 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4944] = return_data.size
                                                    mem[_4944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4564 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4564] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4564 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4945 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4945] = return_data.size
                                                    mem[_4945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1278 = mem[128]
                            require 0 < mem[96]
                            _1500 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1278) >> 48) + (Mask(8, 40, _1500) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4306 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4306] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4306 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4798 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4798] = return_data.size
                                            mem[_4798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4567 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4567] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4567 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4946 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4946] = return_data.size
                                                mem[_4946 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4569 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4569] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4569 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4947 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4947] = return_data.size
                                                mem[_4947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3110 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3110] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3356 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3356] = return_data.size
                                                mem[_3356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3241 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3241] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3476 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3476] = return_data.size
                                                    mem[_3476 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3243 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3243] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3477 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3477] = return_data.size
                                                    mem[_3477 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4308 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4308] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4308 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4801 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4801] = return_data.size
                                                mem[_4801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4572 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4572] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4572 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4948 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4948] = return_data.size
                                                    mem[_4948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4574 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4574] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4574 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4949 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4949] = return_data.size
                                                    mem[_4949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1279 = mem[128]
                            require 0 < mem[96]
                            _1501 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1279) >> 48) + (Mask(8, 72, _1501) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4310 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4310] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4310 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4804 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4804] = return_data.size
                                            mem[_4804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4577 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4577] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4577 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4950 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4950] = return_data.size
                                                mem[_4950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4579 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4579] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4579 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4951 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4951] = return_data.size
                                                mem[_4951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3112 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3112] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3359 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3359] = return_data.size
                                                mem[_3359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3246 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3246] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3480 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3480] = return_data.size
                                                    mem[_3480 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3248 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3248] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3481 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3481] = return_data.size
                                                    mem[_3481 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4312 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4312] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4312 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4807 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4807] = return_data.size
                                                mem[_4807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4582 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4582] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4582 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4952 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4952] = return_data.size
                                                    mem[_4952 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4584 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4584] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4584 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4953 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4953] = return_data.size
                                                    mem[_4953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
        else:
            require block.gas_limit < 2250 * 3600
            if not Mask(1, 2, mem[128]):
                idx = 1
                while idx < arg1.length:
                    _1069 = mem[(32 * idx + 1) + 96]
                    _1070 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1069) >> 211:
                            mem[s + _1070] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1070 + (Mask(16, 216, _1069) >> 211) + 32
                        if address(_1069) >= 255:
                            if Mask(4, 252, _1069) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1069) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1069).mem[_1070 len 4] with:
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                    mem[_1070] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1069).mem[_1070 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                    mem[_1070] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1069).mem[_1070 len 4] with:
                                        gas Mask(24, 160, _1069) >> 160 wei
                                       args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                mem[_1070] = ext_call.return_data[0]
                                if Mask(4, 248, _1069) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1070
                                            idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1069) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1069) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1069) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                    mem[_1070] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                    mem[_1070] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                        gas Mask(24, 160, _1069) >> 160 wei
                                       args mem[_1070 + 4 len (Mask(16, 216, _1069) >> 211) - 4]
                                mem[_1070] = ext_call.return_data[0]
                                if Mask(4, 248, _1069) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1070
                                            idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1069) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1069) >> 211) + 4:
                            mem[s + _1070] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1070 + (Mask(16, 216, _1069) >> 211) + 36
                        if address(_1069) >= 255:
                            if Mask(4, 252, _1069) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1069) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1069).mem[_1070 len 4] with:
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                    mem[_1070] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1069).mem[_1070 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                    mem[_1070] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1069).mem[_1070 len 4] with:
                                        gas Mask(24, 160, _1069) >> 160 wei
                                       args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                mem[_1070] = ext_call.return_data[0]
                                if Mask(4, 248, _1069) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1070
                                            idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1069) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1069) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1069) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                    mem[_1070] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1069) >> 160 wei
                                        args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                    mem[_1070] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1070
                                        idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1069)) + 108 len 20].mem[_1070 len 4] with:
                                        gas Mask(24, 160, _1069) >> 160 wei
                                       args mem[_1070 + 4 len Mask(16, 216, _1069) >> 211]
                                mem[_1070] = ext_call.return_data[0]
                                if Mask(4, 248, _1069) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1070
                                            idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1069) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1070
                                                idx = (Mask(16, 216, _1069) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1070
                    idx = (Mask(16, 216, _1069) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1214 = mem[128]
                            require 0 < mem[96]
                            _1414 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1214) >> 48) + (Mask(8, 40, _1414) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4314 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4314] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4314 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4810 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4810] = return_data.size
                                            mem[_4810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4587 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4587] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4587 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4954 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4954] = return_data.size
                                                mem[_4954 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4589 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4589] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4589 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4955 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4955] = return_data.size
                                                mem[_4955 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3114 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3114] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3362 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3362] = return_data.size
                                                mem[_3362 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3251 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3251] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3484 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3484] = return_data.size
                                                    mem[_3484 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3253 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3253] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3485 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3485] = return_data.size
                                                    mem[_3485 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4316 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4316] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4316 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4813 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4813] = return_data.size
                                                mem[_4813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4592 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4592] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4592 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4956 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4956] = return_data.size
                                                    mem[_4956 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4594 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4594] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4594 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4957 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4957] = return_data.size
                                                    mem[_4957 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1215 = mem[128]
                            require 0 < mem[96]
                            _1415 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1215) >> 48) + (Mask(8, 72, _1415) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4318 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4318] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4318 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4816 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4816] = return_data.size
                                            mem[_4816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4597 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4597] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4597 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4958 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4958] = return_data.size
                                                mem[_4958 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4599 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4599] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4599 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4959 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4959] = return_data.size
                                                mem[_4959 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3116 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3116] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3365 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3365] = return_data.size
                                                mem[_3365 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3256 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3256] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3488 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3488] = return_data.size
                                                    mem[_3488 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3258 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3258] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3489 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3489] = return_data.size
                                                    mem[_3489 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4320 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4320] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4320 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4819 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4819] = return_data.size
                                                mem[_4819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4602 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4602] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4602 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4960 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4960] = return_data.size
                                                    mem[_4960 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4604 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4604] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4604 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4961 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4961] = return_data.size
                                                    mem[_4961 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1288 = mem[128]
                            require 0 < mem[96]
                            _1510 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1288) >> 48) + (Mask(8, 40, _1510) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4322 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4322] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4322 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4822 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4822] = return_data.size
                                            mem[_4822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4607 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4607] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4607 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4962 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4962] = return_data.size
                                                mem[_4962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4609 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4609] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4609 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4963 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4963] = return_data.size
                                                mem[_4963 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3118 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3118] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3368 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3368] = return_data.size
                                                mem[_3368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3261 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3261] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3492 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3492] = return_data.size
                                                    mem[_3492 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3263 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3263] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3493 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3493] = return_data.size
                                                    mem[_3493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4324 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4324] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4324 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4825 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4825] = return_data.size
                                                mem[_4825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4612 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4612] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4612 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4964 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4964] = return_data.size
                                                    mem[_4964 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4614 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4614] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4614 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4965 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4965] = return_data.size
                                                    mem[_4965 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1289 = mem[128]
                            require 0 < mem[96]
                            _1511 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1289) >> 48) + (Mask(8, 72, _1511) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4326 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4326] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4326 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4828 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4828] = return_data.size
                                            mem[_4828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4617 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4617] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4617 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4966 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4966] = return_data.size
                                                mem[_4966 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4619 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4619] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4619 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4967 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4967] = return_data.size
                                                mem[_4967 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3120 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3120] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3371 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3371] = return_data.size
                                                mem[_3371 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3266 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3266] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3496 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3496] = return_data.size
                                                    mem[_3496 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3268 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3268] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3497 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3497] = return_data.size
                                                    mem[_3497 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4328 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4328] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4328 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4831 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4831] = return_data.size
                                                mem[_4831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4622 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4622] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4622 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4968 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4968] = return_data.size
                                                    mem[_4968 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4624 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4624] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4624 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4969 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4969] = return_data.size
                                                    mem[_4969 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
            else:
                mem[0] = block.coinbase
                mem[32] = 0
                require stor0[block.coinbase]
                idx = 1
                while idx < arg1.length:
                    _1072 = mem[(32 * idx + 1) + 96]
                    _1073 = mem[64]
                    if not Mask(32, 184, mem[(32 * idx + 1) + 96]):
                        s = 0
                        while s < Mask(16, 216, _1072) >> 211:
                            mem[s + _1073] = mem[s + (32 * idx + 3) + 96]
                            s = s + 32
                            continue 
                        mem[64] = _1073 + (Mask(16, 216, _1072) >> 211) + 32
                        if address(_1072) >= 255:
                            if Mask(4, 252, _1072) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1072) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1072).mem[_1073 len 4] with:
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                    mem[_1073] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1072).mem[_1073 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                    mem[_1073] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1072).mem[_1073 len 4] with:
                                        gas Mask(24, 160, _1072) >> 160 wei
                                       args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                mem[_1073] = ext_call.return_data[0]
                                if Mask(4, 248, _1072) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1073
                                            idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1072) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1072) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1072) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                    mem[_1073] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                    mem[_1073] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                        gas Mask(24, 160, _1072) >> 160 wei
                                       args mem[_1073 + 4 len (Mask(16, 216, _1072) >> 211) - 4]
                                mem[_1073] = ext_call.return_data[0]
                                if Mask(4, 248, _1072) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1073
                                            idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1072) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                    else:
                        mem[mem[64]] = Mask(32, 184, mem[(32 * idx + 1) + 96]) << 40
                        s = 4
                        while s < (Mask(16, 216, _1072) >> 211) + 4:
                            mem[s + _1073] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _1073 + (Mask(16, 216, _1072) >> 211) + 36
                        if address(_1072) >= 255:
                            if Mask(4, 252, _1072) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1072) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate address(_1072).mem[_1073 len 4] with:
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                    mem[_1073] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                                else:
                                    call address(_1072).mem[_1073 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                    mem[_1073] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall address(_1072).mem[_1073 len 4] with:
                                        gas Mask(24, 160, _1072) >> 160 wei
                                       args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                mem[_1073] = ext_call.return_data[0]
                                if Mask(4, 248, _1072) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1073
                                            idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1072) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                        else:
                            if Mask(4, 252, _1072) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                                if Mask(4, 252, _1072) == 0x1000000000000000000000000000000000000000000000000000000000000000:
                                    delegate mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                    mem[_1073] = delegate.return_data[0]
                                    if delegate.return_code:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                                else:
                                    call mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                       value mem[(32 * idx + 2) + 96] wei
                                         gas Mask(24, 160, _1072) >> 160 wei
                                        args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                    mem[_1073] = ext_call.return_data[0]
                                    if ext_call.success:
                                        mem[64] = _1073
                                        idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                        continue 
                            else:
                                staticcall mem[(32 * address(_1072)) + 108 len 20].mem[_1073 len 4] with:
                                        gas Mask(24, 160, _1072) >> 160 wei
                                       args mem[_1073 + 4 len Mask(16, 216, _1072) >> 211]
                                mem[_1073] = ext_call.return_data[0]
                                if Mask(4, 248, _1072) == 0x200000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] >= mem[(32 * idx + 2) + 96]:
                                        if ext_call.success:
                                            mem[64] = _1073
                                            idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                            continue 
                                    else:
                                else:
                                    if Mask(4, 248, _1072) == 0x100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] <= mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                                    else:
                                        if ext_call.return_data[0] == mem[(32 * idx + 2) + 96]:
                                            if ext_call.success:
                                                mem[64] = _1073
                                                idx = (Mask(16, 216, _1072) >> 216) + idx + 2
                                                continue 
                                        else:
                    mem[64] = _1073
                    idx = (Mask(16, 216, _1072) >> 216) + 65537
                    continue 
                require mem[96]
                if bool(mem[128]) <= 0:
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1220 = mem[128]
                            require 0 < mem[96]
                            _1432 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1220) >> 48) + (Mask(8, 40, _1432) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4330 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4330] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4330 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4834 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4834] = return_data.size
                                            mem[_4834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4627 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4627] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4627 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4970 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4970] = return_data.size
                                                mem[_4970 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4629 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4629] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4629 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4971 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4971] = return_data.size
                                                mem[_4971 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3122 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3122] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3374 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3374] = return_data.size
                                                mem[_3374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3271 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3271] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3500 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3500] = return_data.size
                                                    mem[_3500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3273 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3273] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3501 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3501] = return_data.size
                                                    mem[_3501 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4332 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4332] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4332 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4837 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4837] = return_data.size
                                                mem[_4837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4632 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4632] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4632 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4972 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4972] = return_data.size
                                                    mem[_4972 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4634 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4634] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4634 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4973 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4973] = return_data.size
                                                    mem[_4973 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1221 = mem[128]
                            require 0 < mem[96]
                            _1433 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1221) >> 48) + (Mask(8, 72, _1433) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4334 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4334] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4334 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4840 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4840] = return_data.size
                                            mem[_4840 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4637 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4637] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4637 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4974] = return_data.size
                                                mem[_4974 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4639 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4639] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4639 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4975 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4975] = return_data.size
                                                mem[_4975 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3124 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3124] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3377 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3377] = return_data.size
                                                mem[_3377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3276 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3276] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3504 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3504] = return_data.size
                                                    mem[_3504 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3278 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3278] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3505 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3505] = return_data.size
                                                    mem[_3505 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4336 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4336] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4336 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4843 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4843] = return_data.size
                                                mem[_4843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4642 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4642] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4642 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4976 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4976] = return_data.size
                                                    mem[_4976 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4644 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4644] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4644 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4977 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4977] = return_data.size
                                                    mem[_4977 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    require eth.balance(this.address) >= eth.balance(this.address)
                    require 0 < mem[96]
                    if Mask(1, 4, mem[128]) > 0:
                        require 0 < mem[96]
                        if idx <= 65535:
                            _1298 = mem[128]
                            require 0 < mem[96]
                            _1520 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1298) >> 48) + (Mask(8, 40, _1520) >> 40):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4338 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4338] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4338 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4846 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4846] = return_data.size
                                            mem[_4846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4647 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4647] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4647 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4978 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4978] = return_data.size
                                                mem[_4978 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4649 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4649] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4649 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4979 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4979] = return_data.size
                                                mem[_4979 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3126 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3126] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3380 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3380] = return_data.size
                                                mem[_3380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3281 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3281] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3508 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3508] = return_data.size
                                                    mem[_3508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3283 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3283] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3509 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3509] = return_data.size
                                                    mem[_3509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4340 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4340] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4340 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4849 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4849] = return_data.size
                                                mem[_4849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4652 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4652] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4652 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4980 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4980] = return_data.size
                                                    mem[_4980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4654 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4654] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4654 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4981 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4981] = return_data.size
                                                    mem[_4981 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            _1299 = mem[128]
                            require 0 < mem[96]
                            _1521 = mem[128]
                            idx = mem[151 len 3]
                            while idx < (Mask(24, 48, _1299) >> 48) + (Mask(8, 72, _1521) >> 72):
                                if 0 >= idx:
                                    s = 1
                                    t = 0
                                    while idx >= s:
                                        s = 256 * s
                                        t = t + 1
                                        continue 
                                    if not idx:
                                        _4342 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_4342] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                        call address(sha3(mem[_4342 len t + 23])) with:
                                             gas gas_remaining wei
                                        if return_data.size:
                                            _4852 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_4852] = return_data.size
                                            mem[_4852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if idx >= 128:
                                            _4657 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4657] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4657 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4982 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4982] = return_data.size
                                                mem[_4982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            _4659 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4659] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4659 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4983 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4983] = return_data.size
                                                mem[_4983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if idx < 128:
                                        if not idx:
                                            _3128 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_3128] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                            call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _3383 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_3383] = return_data.size
                                                mem[_3383 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _3286 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3286] = (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 64) - 0x296bffffffff3107eed96100675cd7e46050b08d35c27f000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3512 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3512] = return_data.size
                                                    mem[_3512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _3288 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_3288] = (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000
                                                call address(sha3(Mask(184, 72, (idx << 72) - 0x296bffffffff3107eed96100675cd7e46050b08d35c300000000000000000000) >> 72)) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _3513 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_3513] = return_data.size
                                                    mem[_3513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        s = 1
                                        t = 0
                                        while idx >= s:
                                            s = 256 * s
                                            t = t + 1
                                            continue 
                                        if not idx:
                                            _4344 = mem[64]
                                            mem[64] = mem[64] + 32
                                            mem[_4344] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                            call address(sha3(mem[_4344 len t + 23])) with:
                                                 gas gas_remaining wei
                                            if return_data.size:
                                                _4855 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_4855] = return_data.size
                                                mem[_4855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            if idx >= 128:
                                                _4662 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4662] = (idx * 256^(-t + 9)) + (t + 128 << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4662 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4984 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4984] = return_data.size
                                                    mem[_4984 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            else:
                                                _4664 = mem[64]
                                                mem[64] = mem[64] + 32
                                                mem[_4664] = (idx << 72) + (t + 214 << 248) + 0x9400000000cef811269eff98a3281b9faf4f72ca3d00000000000000000000
                                                call address(sha3(mem[_4664 len t + 23])) with:
                                                     gas gas_remaining wei
                                                if return_data.size:
                                                    _4985 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_4985] = return_data.size
                                                    mem[_4985 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
    return 0
}



}
