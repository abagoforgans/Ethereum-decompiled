contract main {




// =====================  Runtime code  =====================


mapping of uint8 sub_7e28fac0;
mapping of uint8 stor1;
array of uint256 stor3735936685;

function sub_0361b39c(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_7e28fac0(?) {
    require calldata.size - 4 >= 32
    return sub_7e28fac0[arg1]
}

function _fallback() payable {
  stop
}

function approveMiner(address arg1) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    sub_7e28fac0[address(arg1)] = 1
}

function sub_23882c6c(?) {
    require calldata.size - 4 >= 32
    if 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9 != msg.sender:
        require msg.sender == 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75
    stor1[address(arg1)] = 1
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
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[msg.sender]
    if not Mask(1, 5, arg2):
        if not Mask(1, 2, arg2):
            if 0 >= Mask(1, 1, arg2):
                idx = 0
                while idx < arg1.length:
                    _197 = mem[idx + 128]
                    _198 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _197)) + 4:
                        mem[s + _198] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _198 + (2 * Mask(28, 4, _197)) + 36
                    if _197 % 16 == 1:
                        delegate (Mask(160, 96, _197) >> 96).mem[_198 len 4] with:
                             gas Mask(32, 64, _197) >> 64 wei
                            args mem[_198 + 4 len 2 * Mask(28, 4, _197)]
                        mem[_198] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _197) >> 96.mem[_198 len 4] with:
                           value mem[idx + (uint32(_197) / 16) + 162] wei
                             gas Mask(32, 64, _197) >> 64 wei
                            args mem[_198 + 4 len 2 * Mask(28, 4, _197)]
                        mem[_198] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _198
                    idx = idx + (uint32(_197) / 16) + 2
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
                    _199 = mem[idx + 128]
                    _200 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _199)) + 4:
                        mem[s + _200] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _200 + (2 * Mask(28, 4, _199)) + 36
                    if _199 % 16 == 1:
                        delegate (Mask(160, 96, _199) >> 96).mem[_200 len 4] with:
                             gas Mask(32, 64, _199) >> 64 wei
                            args mem[_200 + 4 len 2 * Mask(28, 4, _199)]
                        mem[_200] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _199) >> 96.mem[_200 len 4] with:
                           value mem[idx + (uint32(_199) / 16) + 162] wei
                             gas Mask(32, 64, _199) >> 64 wei
                            args mem[_200 + 4 len 2 * Mask(28, 4, _199)]
                        mem[_200] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _200
                    idx = idx + (uint32(_199) / 16) + 2
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
            if 0 >= Mask(1, 1, arg2):
                idx = 0
                while idx < arg1.length:
                    _201 = mem[idx + 128]
                    _202 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _201)) + 4:
                        mem[s + _202] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _202 + (2 * Mask(28, 4, _201)) + 36
                    if _201 % 16 == 1:
                        delegate (Mask(160, 96, _201) >> 96).mem[_202 len 4] with:
                             gas Mask(32, 64, _201) >> 64 wei
                            args mem[_202 + 4 len 2 * Mask(28, 4, _201)]
                        mem[_202] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _201) >> 96.mem[_202 len 4] with:
                           value mem[idx + (uint32(_201) / 16) + 162] wei
                             gas Mask(32, 64, _201) >> 64 wei
                            args mem[_202 + 4 len 2 * Mask(28, 4, _201)]
                        mem[_202] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _202
                    idx = idx + (uint32(_201) / 16) + 2
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
                    _203 = mem[idx + 128]
                    _204 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _203)) + 4:
                        mem[s + _204] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _204 + (2 * Mask(28, 4, _203)) + 36
                    if _203 % 16 == 1:
                        delegate (Mask(160, 96, _203) >> 96).mem[_204 len 4] with:
                             gas Mask(32, 64, _203) >> 64 wei
                            args mem[_204 + 4 len 2 * Mask(28, 4, _203)]
                        mem[_204] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _203) >> 96.mem[_204 len 4] with:
                           value mem[idx + (uint32(_203) / 16) + 162] wei
                             gas Mask(32, 64, _203) >> 64 wei
                            args mem[_204 + 4 len 2 * Mask(28, 4, _203)]
                        mem[_204] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _204
                    idx = idx + (uint32(_203) / 16) + 2
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
            if 0 >= Mask(1, 1, arg2):
                idx = 0
                while idx < arg1.length:
                    _205 = mem[idx + 128]
                    _206 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _205)) + 4:
                        mem[s + _206] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _206 + (2 * Mask(28, 4, _205)) + 36
                    if _205 % 16 == 1:
                        delegate (Mask(160, 96, _205) >> 96).mem[_206 len 4] with:
                             gas Mask(32, 64, _205) >> 64 wei
                            args mem[_206 + 4 len 2 * Mask(28, 4, _205)]
                        mem[_206] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _205) >> 96.mem[_206 len 4] with:
                           value mem[idx + (uint32(_205) / 16) + 162] wei
                             gas Mask(32, 64, _205) >> 64 wei
                            args mem[_206 + 4 len 2 * Mask(28, 4, _205)]
                        mem[_206] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _206
                    idx = idx + (uint32(_205) / 16) + 2
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
                    _207 = mem[idx + 128]
                    _208 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _207)) + 4:
                        mem[s + _208] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _208 + (2 * Mask(28, 4, _207)) + 36
                    if _207 % 16 == 1:
                        delegate (Mask(160, 96, _207) >> 96).mem[_208 len 4] with:
                             gas Mask(32, 64, _207) >> 64 wei
                            args mem[_208 + 4 len 2 * Mask(28, 4, _207)]
                        mem[_208] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _207) >> 96.mem[_208 len 4] with:
                           value mem[idx + (uint32(_207) / 16) + 162] wei
                             gas Mask(32, 64, _207) >> 64 wei
                            args mem[_208 + 4 len 2 * Mask(28, 4, _207)]
                        mem[_208] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _208
                    idx = idx + (uint32(_207) / 16) + 2
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
            if 0 >= Mask(1, 1, arg2):
                idx = 0
                while idx < arg1.length:
                    _209 = mem[idx + 128]
                    _210 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _209)) + 4:
                        mem[s + _210] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _210 + (2 * Mask(28, 4, _209)) + 36
                    if _209 % 16 == 1:
                        delegate (Mask(160, 96, _209) >> 96).mem[_210 len 4] with:
                             gas Mask(32, 64, _209) >> 64 wei
                            args mem[_210 + 4 len 2 * Mask(28, 4, _209)]
                        mem[_210] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _209) >> 96.mem[_210 len 4] with:
                           value mem[idx + (uint32(_209) / 16) + 162] wei
                             gas Mask(32, 64, _209) >> 64 wei
                            args mem[_210 + 4 len 2 * Mask(28, 4, _209)]
                        mem[_210] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _210
                    idx = idx + (uint32(_209) / 16) + 2
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
                    _211 = mem[idx + 128]
                    _212 = mem[64]
                    mem[mem[64]] = mem[idx + 128] << 192
                    s = 4
                    while s < (2 * Mask(28, 4, _211)) + 4:
                        mem[s + _212] = mem[s + (32 * idx + 3) + 92]
                        s = s + 32
                        continue 
                    mem[64] = _212 + (2 * Mask(28, 4, _211)) + 36
                    if _211 % 16 == 1:
                        delegate (Mask(160, 96, _211) >> 96).mem[_212 len 4] with:
                             gas Mask(32, 64, _211) >> 64 wei
                            args mem[_212 + 4 len 2 * Mask(28, 4, _211)]
                        mem[_212] = delegate.return_data[0]
                        require delegate.return_code
                    else:
                        call Mask(160, 96, _211) >> 96.mem[_212 len 4] with:
                           value mem[idx + (uint32(_211) / 16) + 162] wei
                             gas Mask(32, 64, _211) >> 64 wei
                            args mem[_212 + 4 len 2 * Mask(28, 4, _211)]
                        mem[_212] = ext_call.return_data[0]
                        require ext_call.success
                    mem[64] = _212
                    idx = idx + (uint32(_211) / 16) + 2
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
