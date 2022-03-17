contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1987;
address stor1988;
address stor1989;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, '!') or Mask(88, 168, uint256(stor0)) or Mask(96, 160, address(stor0))
    stor1987 = msg.sender or Mask(96, 160, stor1987)
    stor1988 = 0x782bdf7015b71b64f6750796dd087fde32fd6fdc
    stor1989 = 0xc35a4e966bf792734a25ea524448ea54de385e4e
    return code.data[153 len 9449]
}



// =====================  Runtime code  =====================


#
#  - editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4)
#
uint8 stor0; offset 160
address stor0;
address stor1987;
address stor1989;
uint256 stor198A;
uint256 stor198B;
uint8 whatHappened;

function getWhatHappened() payable {
    return whatHappened
}

function kill() payable {
    if address(stor0.field_0) != msg.sender:
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * arg2 % 128) + 64)) - (arg1 % 16^(-(2 * arg2 % 128) + 64) % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
}

function sub_cf2059ab(?) payable {
    idx = 864
    s = 0
    while 1632 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('name', 'stor198B', 6539)), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('stor', ('name', 'stor198B', 6539))), mem[896 len 736]
}

function sub_af507833(?) payable {
    idx = 896
    s = 1
    while 1632 > idx + 32:
        mem[idx + 32] = ('signextend', 0, ('div', ('stor', ('name', 'stor198A', 6538)), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return ('signextend', 0, ('stor', ('name', 'stor198A', 6538))), 
           ('signextend', 0, ('div', ('stor', ('name', 'stor198A', 6538)), 256)),
           mem[928 len 704]
}

function getOwners() payable {
    mem[64] = 10 * 3600
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 34944
    if var6002 - 1:
        mem[64] = 37056
        var5001 = 10 * 3600
        var5002 = 33
        continue 
    mem[64] = 71904
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 70848
    if var12002 - 1:
        mem[64] = 72960
        var11001 = 71904
        var11002 = 33
        continue 
    s = 0
    idx = 0
    while uint8(idx) < uint8(stor0.field_160):
        s = 0
        while uint8(s) < uint8(stor0.field_160):
            require s < 33
            require idx < 33
            require s < 33
            require idx < 33
            mem[(32 * idx) + mem[(32 * s) + (10 * 3600)]] = address(stor[(6 * idx) + (198 * s) + 1].field_0)
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 33:
        mem[s len 1056] = mem[mem[(32 * idx) + (10 * 3600)] len 1056]
        s = s + 1056
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 34848
}

function sub_8e3e5a4b(?) payable {
    mem[96] = 0
    require arg1 < 33
    require arg2 < 33
    mem[64] = (32 * uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)) + 160
    mem[128] = uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0):
        mem[0] = (6 * arg2) + (198 * arg1) + 6
        _11 = mem[64]
        mem[64] = mem[64] + 96
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 96 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 64] = _11
        t = _11 + 96
        s = 3
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _14:
        mem[s len 96] = mem[mem[(32 * idx) + 160] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (96 * _14) + -mem[64] + 64
}

function getBlocks(uint8 arg1, uint8 arg2) payable {
    mem[96] = 0
    require arg1 < 33
    require arg2 < 33
    mem[64] = (32 * uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)) + 160
    mem[128] = uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0):
        mem[0] = (6 * arg2) + (198 * arg1) + 4
        _11 = mem[64]
        mem[64] = mem[64] + 160
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 160 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_11 + 128] = _11
        t = _11 + 160
        s = 5
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < _14:
        mem[s len 160] = mem[mem[(32 * idx) + 160] len 160]
        s = s + 160
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (160 * _14) + -mem[64] + 64
}

function sub_959eac47(?) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 4320:
            idx = 0
            while uint8(idx) < 10:
                require arg1 < 33
                require arg2 < 33
                uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                    s = sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1
                    while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                if uint8(idx) != 0:
                    stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                else:
                    stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_8) = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_16) = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                mem[0] = (6 * arg2) + (198 * arg1) + 4
                uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_32) = 0
                idx = idx + 1
                continue 
            require arg1 < 33
            require arg2 < 33
            uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
}

function sub_6266b514(?) payable {
    if msg.value < 10^16:
        if msg.value != 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if msg.value > test266151307():
            if msg.value != 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            call stor1989.0x4166c1fd with:
                 gas gas_remaining - 25050 wei
                args arg1 << 248, arg2
            require ext_call.success
            require arg1 < 33
            require arg2 < 33
            if ext_call.return_data[31 len 1] < 125:
                if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) > 100000:
                    if 10^18 != msg.value:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        call stor1987 with:
                           value msg.value wei
                             gas 0 wei
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
                            require arg1 < 33
                            require arg2 < 33
                            if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 4320:
                                idx = 0
                                while uint8(idx) < 10:
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                                    if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                                        s = sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1
                                        while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    if uint8(idx) != 0:
                                        stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    else:
                                        stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_8) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_16) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    mem[0] = (6 * arg2) + (198 * arg1) + 4
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_32) = 0
                                    idx = idx + 1
                                    continue 
                                require arg1 < 33
                                require arg2 < 33
                                uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) < 10:
                        require arg1 < 33
                        require arg2 < 33
                        idx = var23001
                        while uint8(idx) < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
                            require arg1 < 33
                            require arg2 < 33
                            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                            mem[0] = (6 * arg2) + (198 * arg1) + 2
                            require arg1 < 33
                            if address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx].field_0) != msg.sender:
                                require arg2 < 33
                                idx = idx + 1
                                continue 
                            require arg2 < 33
                            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                            call msg.sender with:
                               value uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) wei
                                 gas 0 wei
                            require arg1 < 33
                            require arg2 < 33
                            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                            uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = msg.value
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)++
                        if not uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) + 1:
                            idx = uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) + 1
                            while uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) > idx:
                                uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)++
                        if not uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + 1:
                            idx = uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + 1
                            while uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) > idx:
                                uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 33
                        require arg2 < 33
                        require arg1 < 33
                        require arg2 < 33
                        require uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                        uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2) + uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2) + uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        require arg1 < 33
                        require arg2 < 33
                        require uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                        uint256(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + sha3((6 * arg2) + (198 * arg1) + 3) - 1].field_0) = msg.value
            else:
                if not address(stor[(6 * arg2) + (198 * arg1) + 1].field_0):
                    if 10^18 != msg.value:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        call stor1987 with:
                           value msg.value wei
                             gas 0 wei
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
                            require arg1 < 33
                            require arg2 < 33
                            if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 4320:
                                idx = 0
                                while uint8(idx) < 10:
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                                    if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                                        s = sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1
                                        while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    if uint8(idx) != 0:
                                        stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    else:
                                        stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_8) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_16) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                    mem[0] = (6 * arg2) + (198 * arg1) + 4
                                    uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_32) = 0
                                    idx = idx + 1
                                    continue 
                                require arg1 < 33
                                require arg2 < 33
                                uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) > 100000:
                        if 10^18 != msg.value:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                        else:
                            call stor1987 with:
                               value msg.value wei
                                 gas 0 wei
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
                            require arg1 < 33
                            require arg2 < 33
                            if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
                                require arg1 < 33
                                require arg2 < 33
                                if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 4320:
                                    idx = 0
                                    while uint8(idx) < 10:
                                        require arg1 < 33
                                        require arg2 < 33
                                        uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                                        if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                                            s = sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1
                                            while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                        if uint8(idx) != 0:
                                            stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                        else:
                                            stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                        stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_8) = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_16) = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                                        mem[0] = (6 * arg2) + (198 * arg1) + 4
                                        uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_32) = 0
                                        idx = idx + 1
                                        continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
                    else:
                        require arg1 < 33
                        require arg2 < 33
                        if uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) < 10:
                            require arg1 < 33
                            require arg2 < 33
                            idx = var26001
                            while uint8(idx) < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
                                require arg1 < 33
                                require arg2 < 33
                                require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                                mem[0] = (6 * arg2) + (198 * arg1) + 2
                                require arg1 < 33
                                if address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx].field_0) != msg.sender:
                                    require arg2 < 33
                                    idx = idx + 1
                                    continue 
                                require arg2 < 33
                                require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                                call msg.sender with:
                                   value uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) wei
                                     gas 0 wei
                                require arg1 < 33
                                require arg2 < 33
                                require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                                uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = msg.value
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)++
                            if not uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) + 1:
                                idx = uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) + 1
                                while uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) > idx:
                                    uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)++
                            if not uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + 1:
                                idx = uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + 1
                                while uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) > idx:
                                    uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            require arg1 < 33
                            require arg2 < 33
                            require arg1 < 33
                            require arg2 < 33
                            require uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                            uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2) + uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2) + uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1].field_0))
                            require arg1 < 33
                            require arg2 < 33
                            require arg1 < 33
                            require arg2 < 33
                            require uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                            uint256(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + sha3((6 * arg2) + (198 * arg1) + 3) - 1].field_0) = msg.value
}



}
