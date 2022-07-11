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
                        _392 = mem[(32 * idx + 1) + 96]
                        _393 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _392)) + 4:
                            mem[s + _393] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _393 + (2 * Mask(28, 4, _392)) + 36
                        if _392 % 16 == 1:
                            delegate (Mask(160, 96, _392) >> 96).mem[_393 len 4] with:
                                 gas Mask(32, 64, _392) >> 64 wei
                                args mem[_393 + 4 len 2 * Mask(28, 4, _392)]
                            mem[_393] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _392) >> 96.mem[_393 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _392) >> 64 wei
                                args mem[_393 + 4 len 2 * Mask(28, 4, _392)]
                            mem[_393] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _393
                        idx = (uint32(_392) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _394 = mem[(32 * idx + 1) + 96]
                        _395 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _394)) + 4:
                            mem[s + _395] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _395 + (2 * Mask(28, 4, _394)) + 36
                        if _394 % 16 == 1:
                            delegate (Mask(160, 96, _394) >> 96).mem[_395 len 4] with:
                                 gas Mask(32, 64, _394) >> 64 wei
                                args mem[_395 + 4 len 2 * Mask(28, 4, _394)]
                            mem[_395] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _394) >> 96.mem[_395 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _394) >> 64 wei
                                args mem[_395 + 4 len 2 * Mask(28, 4, _394)]
                            mem[_395] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _395
                        idx = (uint32(_394) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _396 = mem[(32 * idx + 1) + 96]
                        _397 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _396)) + 4:
                            mem[s + _397] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _397 + (2 * Mask(28, 4, _396)) + 36
                        if _396 % 16 == 1:
                            delegate (Mask(160, 96, _396) >> 96).mem[_397 len 4] with:
                                 gas Mask(32, 64, _396) >> 64 wei
                                args mem[_397 + 4 len 2 * Mask(28, 4, _396)]
                            mem[_397] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _396) >> 96.mem[_397 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _396) >> 64 wei
                                args mem[_397 + 4 len 2 * Mask(28, 4, _396)]
                            mem[_397] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _397
                        idx = (uint32(_396) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _398 = mem[(32 * idx + 1) + 96]
                        _399 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _398)) + 4:
                            mem[s + _399] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _399 + (2 * Mask(28, 4, _398)) + 36
                        if _398 % 16 == 1:
                            delegate (Mask(160, 96, _398) >> 96).mem[_399 len 4] with:
                                 gas Mask(32, 64, _398) >> 64 wei
                                args mem[_399 + 4 len 2 * Mask(28, 4, _398)]
                            mem[_399] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _398) >> 96.mem[_399 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _398) >> 64 wei
                                args mem[_399 + 4 len 2 * Mask(28, 4, _398)]
                            mem[_399] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _399
                        idx = (uint32(_398) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
            require block.gas_limit < 10 * 10^6
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _400 = mem[(32 * idx + 1) + 96]
                        _401 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _400)) + 4:
                            mem[s + _401] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _401 + (2 * Mask(28, 4, _400)) + 36
                        if _400 % 16 == 1:
                            delegate (Mask(160, 96, _400) >> 96).mem[_401 len 4] with:
                                 gas Mask(32, 64, _400) >> 64 wei
                                args mem[_401 + 4 len 2 * Mask(28, 4, _400)]
                            mem[_401] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _400) >> 96.mem[_401 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _400) >> 64 wei
                                args mem[_401 + 4 len 2 * Mask(28, 4, _400)]
                            mem[_401] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _401
                        idx = (uint32(_400) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _402 = mem[(32 * idx + 1) + 96]
                        _403 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _402)) + 4:
                            mem[s + _403] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _403 + (2 * Mask(28, 4, _402)) + 36
                        if _402 % 16 == 1:
                            delegate (Mask(160, 96, _402) >> 96).mem[_403 len 4] with:
                                 gas Mask(32, 64, _402) >> 64 wei
                                args mem[_403 + 4 len 2 * Mask(28, 4, _402)]
                            mem[_403] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _402) >> 96.mem[_403 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _402) >> 64 wei
                                args mem[_403 + 4 len 2 * Mask(28, 4, _402)]
                            mem[_403] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _403
                        idx = (uint32(_402) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _404 = mem[(32 * idx + 1) + 96]
                        _405 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _404)) + 4:
                            mem[s + _405] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _405 + (2 * Mask(28, 4, _404)) + 36
                        if _404 % 16 == 1:
                            delegate (Mask(160, 96, _404) >> 96).mem[_405 len 4] with:
                                 gas Mask(32, 64, _404) >> 64 wei
                                args mem[_405 + 4 len 2 * Mask(28, 4, _404)]
                            mem[_405] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _404) >> 96.mem[_405 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _404) >> 64 wei
                                args mem[_405 + 4 len 2 * Mask(28, 4, _404)]
                            mem[_405] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _405
                        idx = (uint32(_404) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _406 = mem[(32 * idx + 1) + 96]
                        _407 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _406)) + 4:
                            mem[s + _407] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _407 + (2 * Mask(28, 4, _406)) + 36
                        if _406 % 16 == 1:
                            delegate (Mask(160, 96, _406) >> 96).mem[_407 len 4] with:
                                 gas Mask(32, 64, _406) >> 64 wei
                                args mem[_407 + 4 len 2 * Mask(28, 4, _406)]
                            mem[_407] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _406) >> 96.mem[_407 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _406) >> 64 wei
                                args mem[_407 + 4 len 2 * Mask(28, 4, _406)]
                            mem[_407] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _407
                        idx = (uint32(_406) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _408 = mem[(32 * idx + 1) + 96]
                        _409 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _408)) + 4:
                            mem[s + _409] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _409 + (2 * Mask(28, 4, _408)) + 36
                        if _408 % 16 == 1:
                            delegate (Mask(160, 96, _408) >> 96).mem[_409 len 4] with:
                                 gas Mask(32, 64, _408) >> 64 wei
                                args mem[_409 + 4 len 2 * Mask(28, 4, _408)]
                            mem[_409] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _408) >> 96.mem[_409 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _408) >> 64 wei
                                args mem[_409 + 4 len 2 * Mask(28, 4, _408)]
                            mem[_409] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _409
                        idx = (uint32(_408) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _410 = mem[(32 * idx + 1) + 96]
                        _411 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _410)) + 4:
                            mem[s + _411] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _411 + (2 * Mask(28, 4, _410)) + 36
                        if _410 % 16 == 1:
                            delegate (Mask(160, 96, _410) >> 96).mem[_411 len 4] with:
                                 gas Mask(32, 64, _410) >> 64 wei
                                args mem[_411 + 4 len 2 * Mask(28, 4, _410)]
                            mem[_411] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _410) >> 96.mem[_411 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _410) >> 64 wei
                                args mem[_411 + 4 len 2 * Mask(28, 4, _410)]
                            mem[_411] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _411
                        idx = (uint32(_410) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _412 = mem[(32 * idx + 1) + 96]
                        _413 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _412)) + 4:
                            mem[s + _413] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _413 + (2 * Mask(28, 4, _412)) + 36
                        if _412 % 16 == 1:
                            delegate (Mask(160, 96, _412) >> 96).mem[_413 len 4] with:
                                 gas Mask(32, 64, _412) >> 64 wei
                                args mem[_413 + 4 len 2 * Mask(28, 4, _412)]
                            mem[_413] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _412) >> 96.mem[_413 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _412) >> 64 wei
                                args mem[_413 + 4 len 2 * Mask(28, 4, _412)]
                            mem[_413] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _413
                        idx = (uint32(_412) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _414 = mem[(32 * idx + 1) + 96]
                        _415 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _414)) + 4:
                            mem[s + _415] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _415 + (2 * Mask(28, 4, _414)) + 36
                        if _414 % 16 == 1:
                            delegate (Mask(160, 96, _414) >> 96).mem[_415 len 4] with:
                                 gas Mask(32, 64, _414) >> 64 wei
                                args mem[_415 + 4 len 2 * Mask(28, 4, _414)]
                            mem[_415] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _414) >> 96.mem[_415 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _414) >> 64 wei
                                args mem[_415 + 4 len 2 * Mask(28, 4, _414)]
                            mem[_415] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _415
                        idx = (uint32(_414) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
            require block.gas_limit < 10 * 10^6
            if not Mask(1, 2, arg2):
                if Mask(1, 1, arg2) <= 0:
                    idx = 0
                    while idx < arg1.length:
                        _416 = mem[(32 * idx + 1) + 96]
                        _417 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _416)) + 4:
                            mem[s + _417] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _417 + (2 * Mask(28, 4, _416)) + 36
                        if _416 % 16 == 1:
                            delegate (Mask(160, 96, _416) >> 96).mem[_417 len 4] with:
                                 gas Mask(32, 64, _416) >> 64 wei
                                args mem[_417 + 4 len 2 * Mask(28, 4, _416)]
                            mem[_417] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _416) >> 96.mem[_417 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _416) >> 64 wei
                                args mem[_417 + 4 len 2 * Mask(28, 4, _416)]
                            mem[_417] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _417
                        idx = (uint32(_416) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _418 = mem[(32 * idx + 1) + 96]
                        _419 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _418)) + 4:
                            mem[s + _419] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _419 + (2 * Mask(28, 4, _418)) + 36
                        if _418 % 16 == 1:
                            delegate (Mask(160, 96, _418) >> 96).mem[_419 len 4] with:
                                 gas Mask(32, 64, _418) >> 64 wei
                                args mem[_419 + 4 len 2 * Mask(28, 4, _418)]
                            mem[_419] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _418) >> 96.mem[_419 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _418) >> 64 wei
                                args mem[_419 + 4 len 2 * Mask(28, 4, _418)]
                            mem[_419] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _419
                        idx = (uint32(_418) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _420 = mem[(32 * idx + 1) + 96]
                        _421 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _420)) + 4:
                            mem[s + _421] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _421 + (2 * Mask(28, 4, _420)) + 36
                        if _420 % 16 == 1:
                            delegate (Mask(160, 96, _420) >> 96).mem[_421 len 4] with:
                                 gas Mask(32, 64, _420) >> 64 wei
                                args mem[_421 + 4 len 2 * Mask(28, 4, _420)]
                            mem[_421] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _420) >> 96.mem[_421 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _420) >> 64 wei
                                args mem[_421 + 4 len 2 * Mask(28, 4, _420)]
                            mem[_421] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _421
                        idx = (uint32(_420) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
                        _422 = mem[(32 * idx + 1) + 96]
                        _423 = mem[64]
                        mem[mem[64]] = mem[(32 * idx + 1) + 96] << 192
                        s = 4
                        while s < (2 * Mask(28, 4, _422)) + 4:
                            mem[s + _423] = mem[s + (32 * idx + 3) + 92]
                            s = s + 32
                            continue 
                        mem[64] = _423 + (2 * Mask(28, 4, _422)) + 36
                        if _422 % 16 == 1:
                            delegate (Mask(160, 96, _422) >> 96).mem[_423 len 4] with:
                                 gas Mask(32, 64, _422) >> 64 wei
                                args mem[_423 + 4 len 2 * Mask(28, 4, _422)]
                            mem[_423] = delegate.return_data[0]
                            require delegate.return_code
                        else:
                            call Mask(160, 96, _422) >> 96.mem[_423 len 4] with:
                               value mem[(32 * idx + 2) + 96] wei
                                 gas Mask(32, 64, _422) >> 64 wei
                                args mem[_423 + 4 len 2 * Mask(28, 4, _422)]
                            mem[_423] = ext_call.return_data[0]
                            require ext_call.success
                        mem[64] = _423
                        idx = (uint32(_422) / 16) + idx + 2
                        continue 
                    if Mask(1, 6, arg2) > 0:
                        s = 1
                        while s <= uint16(arg2):
                            stor[uint16(arg2) + -s + 3735936685] = 0
                            s = s + 1
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
