contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor2209;
address stor220A;
address stor220B;

function _fallback() payable {
    stor0 = 33
    stor2209 = msg.sender or Mask(96, 160, stor2209)
    stor220A = 0x782bdf7015b71b64f6750796dd087fde32fd6fdc
    stor220B = 0x68549d7dbb7a956f955ec1263f55494f05972a6b
    return code.data[116 len 11261]
}



// =====================  Runtime code  =====================


#
#  - editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4)
#
uint8 stor0;
address stor2209;
uint8 whatHappened; offset 160
uint8 locked; offset 168
uint128 stor220B; offset 168
address stor220B;
uint256 stor220B;

function getWhatHappened() payable {
    return whatHappened
}

function getLocked() payable {
    return locked
}

function getLastFarm(uint8 arg1, uint8 arg2) payable {
    require arg1 < 33
    require arg2 < 33
    return uint256(stor[(8 * arg2) + (264 * arg1) + 7].field_0)
}

function getName(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(264 * arg1) + (8 * arg2) + 2][0 len stor[(264 * arg1) + (8 * arg2) + 2].length].field_0)
}

function getStatus(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(8 * arg2) + (264 * arg1) + 3][0 len stor[(8 * arg2) + (264 * arg1) + 3].length].field_0)
}

function getOwner(uint8 arg1, uint8 arg2) payable {
    require arg1 < 33
    require arg2 < 33
    return address(stor[(8 * arg2) + (264 * arg1) + 1].field_0)
}

function kill() payable {
    if locked:
    if stor2209 != msg.sender:
    selfdestruct(stor2209)
}

function _fallback() payable {
  stop
}

function setLocked() payable {
    locked = 1
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * uint8(arg2)) + 64)) - (arg1 % 16^(-(2 * uint8(arg2)) + 64) % 16^(-(2 * uint8(arg2)) + 62)) / 16^(-(2 * uint8(arg2)) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * uint8(arg2)) + 62)) / 16^(-(2 * uint8(arg2)) + 62))
}

function setName(uint8 arg1, uint8 arg2, string arg3) payable {
    if arg1 >= 0:
        if arg1 <= uint8(stor0 - 1):
            if arg2 >= 0:
                if arg2 <= uint8(stor0 - 1):
                    require arg1 < 33
                    require arg2 < 33
                    if msg.sender == address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                        uint256(stor[sha3((8 * arg2) + (264 * arg1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
                        emit code.data[11229 len 32]: arg1 << 248, arg2
    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
}

function sub_6a864559(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
        mem[160] = address(stor[sha3((8 * arg2) + (264 * arg1) + 4)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((8 * arg2) + (264 * arg1) + 4) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0), data=mem[160 len 32 * uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)]), 
}

function sub_c7dafc78(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0):
        mem[160] = uint256(stor[sha3((8 * arg2) + (264 * arg1) + 5)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + (264 * arg1) + 5) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0), data=mem[160 len 32 * uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)]), 
}

function getBlocks(uint8 arg1, uint8 arg2) payable {
    mem[96] = 0
    require arg1 < 33
    require arg2 < 33
    mem[64] = (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)) + 160
    mem[128] = uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0):
        mem[0] = (8 * arg2) + (264 * arg1) + 6
        _10 = mem[64]
        mem[64] = mem[64] + 160
        mem[_10] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 6, ('mul', 8, ('param', 'arg2')), ('mul', 264, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _10
        s = 0
        while _10 + 160 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 6, ('mul', 8, ('param', 'arg2')), ('mul', 264, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
            t = t + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        mem[_10 + 128] = _10
        t = _10 + 160
        s = 5
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[128]
    _14 = mem[128]
    s = mem[64] + 64
    idx = 0
    while idx < mem[128]:
        mem[s len 160] = mem[mem[(32 * idx) + 160] len 160]
        s = s + 160
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (160 * _14) + -mem[64] + 64
}

function setStatus(uint8 arg1, uint8 arg2, string arg3) payable {
    if msg.value != 0:
        if 10^18 != msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if arg1 < 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if arg1 > uint8(stor0 - 1):
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if arg2 < 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        if arg2 > uint8(stor0 - 1):
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                        else:
                            require arg1 < 33
                            require arg2 < 33
                            if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) != msg.sender:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                            else:
                                uint256(stor[sha3((8 * arg2) + (264 * arg1) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
                                call stor2209 with:
                                   value msg.value wei
                                     gas 0 wei
                                emit code.data[11229 len 32]: arg1 << 248, arg2
    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
}

function sub_a4741f48(?) payable {
    if arg1 >= 0:
        if arg1 <= uint8(stor0 - 1):
            if arg2 >= 0:
                if arg2 <= uint8(stor0 - 1):
                    require arg1 < 33
                    require arg2 < 33
                    if msg.sender == address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                        if arg3 >= 0:
                            if arg3 <= uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1:
                                require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                if arg4 == uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0):
                                    call stor2209 with:
                                       value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) / 10 wei
                                         gas 0 wei
                                    call address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) with:
                                       value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) - (uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) / 10) wei
                                         gas 0 wei
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0)
                                    idx = 0
                                    while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
                                        if arg3 != uint8(idx):
                                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                            mem[0] = (8 * arg2) + (264 * arg1) + 5
                                            call address(stor[sha3((8 * arg2) + (264 * arg1) + 4) + idx].field_0) with:
                                               value uint256(stor[sha3((8 * arg2) + (264 * arg1) + 5) + idx].field_0) wei
                                                 gas 0 wei
                                        idx = idx + 1
                                        continue 
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) = 0
                                    idx = 0
                                    while uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > idx:
                                        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) = 0
                                    idx = 0
                                    while uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > idx:
                                        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                    emit code.data[11229 len 32]: arg1 << 248, arg2
    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
}

function sub_6266b514(?) payable {
    if 0 == msg.value:
        whatHappened = 1
    else:
        if arg1 < 0:
            whatHappened = 2
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if arg1 > uint8(stor0 - 1):
                whatHappened = 2
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if arg2 < 0:
                    whatHappened = 2
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    if arg2 > uint8(stor0 - 1):
                        whatHappened = 2
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        require arg1 < 33
                        require arg2 < 33
                        if 0 == address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                            if msg.value != 10^18:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                whatHappened = 3
                            else:
                                call address(stor220B.field_0).getElevation(uint8 rg1, uint8 rg2) with:
                                     gas gas_remaining - 25050 wei
                                    args arg1 << 248, arg2
                                require ext_call.success
                                if ext_call.return_data[31 len 1] < 125:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    whatHappened = 3
                                else:
                                    call stor2209 with:
                                       value msg.value wei
                                         gas 0 wei
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0))
                                    emit code.data[11229 len 32]: arg1 << 248, arg2
                                    whatHappened = 4
                        else:
                            if msg.sender == address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                whatHappened = 5
                            else:
                                if msg.value < 10^16:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    whatHappened = 5
                                else:
                                    if msg.value > 1000000 * 10^18:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                        whatHappened = 5
                                    else:
                                        if uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) >= 10:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 0 wei
                                            whatHappened = 5
                                        else:
                                            idx = 0
                                            while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
                                                require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                                mem[0] = (8 * arg2) + (264 * arg1) + 4
                                                if address(stor[sha3((8 * arg2) + (264 * arg1) + 4) + idx].field_0) != msg.sender:
                                                    idx = idx + 1
                                                    continue 
                                                require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                                call msg.sender with:
                                                   value uint256(stor[sha3((8 * arg2) + (264 * arg1) + 5) + idx].field_0) wei
                                                     gas 0 wei
                                                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = msg.value
                                                emit code.data[11229 len 32]: arg1 << 248, arg2
                                                whatHappened = 6
                                            uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)++
                                            if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1:
                                                idx = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1
                                                while uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > idx:
                                                    uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                            uint256(stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)].field_0))
                                            uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)++
                                            if not uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) + 1:
                                                idx = uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) + 1
                                                while uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > idx:
                                                    uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                                    idx = idx + 1
                                                    continue 
                                            uint256(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = msg.value
                                            emit code.data[11229 len 32]: arg1 << 248, arg2
                                            whatHappened = 7
}

function sub_959eac47(?) payable {
    if arg1 < 0:
        whatHappened = 30
    else:
        if arg1 > uint8(stor0 - 1):
            whatHappened = 30
        else:
            if arg2 < 0:
                whatHappened = 30
            else:
                if arg2 > uint8(stor0 - 1):
                    whatHappened = 30
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) != msg.sender:
                        whatHappened = 31
                    else:
                        if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 7].field_0) >= 2500:
                            if msg.value > 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                            idx = 0
                            while uint8(idx) < 20:
                                uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)++
                                if not uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + 1:
                                    s = uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) + 1
                                    while sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                require uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)
                                if 1 == uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0):
                                    uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_0) = 0
                                else:
                                    if uint8(idx) != 0:
                                        stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 64) % 16^(-(2 * uint8(idx)) + 62)) / 16^(-(2 * uint8(idx)) + 62) % 32
                                    else:
                                        stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 62)) / 16^(-(2 * uint8(idx)) + 62) % 32
                                    stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_5 % 8 = 0
                                uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_8) = 0
                                uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_16) = 0
                                require uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)
                                uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_24) = 255
                                mem[0] = (8 * arg2) + (264 * arg1) + 6
                                uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_32) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor[(8 * arg2) + (264 * arg1) + 7].field_0) = block.number
                            emit code.data[11229 len 32]: arg1 << 248, arg2
                        else:
                            if msg.value != 0:
                                if 10^18 != msg.value:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                else:
                                    call stor2209 with:
                                       value msg.value wei
                                         gas 0 wei
                                    idx = 0
                                    while uint8(idx) < 20:
                                        uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)++
                                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + 1:
                                            s = uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) + 1
                                            while sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)
                                        if 1 == uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0):
                                            uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_0) = 0
                                        else:
                                            if uint8(idx) != 0:
                                                stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 64) % 16^(-(2 * uint8(idx)) + 62)) / 16^(-(2 * uint8(idx)) + 62) % 32
                                            else:
                                                stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * uint8(idx)) + 62)) / 16^(-(2 * uint8(idx)) + 62) % 32
                                            stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_5 % 8 = 0
                                        uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_8) = 0
                                        uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_16) = 0
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0)
                                        uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) + sha3((8 * arg2) + (264 * arg1) + 6) - 1].field_24) = 255
                                        mem[0] = (8 * arg2) + (264 * arg1) + 6
                                        uint8(stor[sha3((8 * arg2) + (264 * arg1) + 6) + uint256(stor[(8 * arg2) + (264 * arg1) + 6].field_0) - 1].field_32) = 0
                                        idx = idx + 1
                                        continue 
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 7].field_0) = block.number
                                    emit code.data[11229 len 32]: arg1 << 248, arg2
                        uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
}

function sub_7f40458a(?) payable {
    if arg1 >= 0:
        if arg1 <= uint8(stor0 - 1):
            if arg2 >= 0:
                if arg2 <= uint8(stor0 - 1):
                    require arg1 < 33
                    require arg2 < 33
                    if arg3 >= 0:
                        if arg3 <= uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1:
                            if msg.sender == address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                                require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                if arg4 == uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0):
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                    call address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) with:
                                       value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) wei
                                         gas 0 wei
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) = 0
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                    uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                    idx = arg3 + 1
                                    while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
                                        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        address(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_0) = address(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4)].field_0)
                                        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                        mem[0] = (8 * arg2) + (264 * arg1) + 5
                                        require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5) - 1].field_0) = uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0)
                                        idx = idx + 1
                                        continue 
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)--
                                    if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1:
                                        s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1
                                        while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > None:
                                            uint256(stor[None].field_0) = 0
                                            s = None + 1
                                            continue 
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)--
                                    if not uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1:
                                        idx = uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1
                                        while uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > idx:
                                            uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                            idx = idx + 1
                                            continue 
                                    emit code.data[11229 len 32]: arg1 << 248, arg2
                            else:
                                require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                if address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) == msg.sender:
                                    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                    if arg4 == uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0):
                                        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                        call address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) with:
                                           value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) wei
                                             gas 0 wei
                                        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 4)].field_0) = 0
                                        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                        uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                        idx = arg3 + 1
                                        while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
                                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                            require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                            address(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_0) = address(stor[idx + sha3((8 * arg2) + (264 * arg1) + 4)].field_0)
                                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                            mem[0] = (8 * arg2) + (264 * arg1) + 5
                                            require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)
                                            uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5) - 1].field_0) = uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0)
                                            idx = idx + 1
                                            continue 
                                        uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)--
                                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1:
                                            s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1
                                            while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > None:
                                                uint256(stor[None].field_0) = 0
                                                s = None + 1
                                                continue 
                                        uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0)--
                                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1:
                                            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) - 1
                                            while uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > idx:
                                                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 5)].field_0) = 0
                                                idx = idx + 1
                                                continue 
                                        emit code.data[11229 len 32]: arg1 << 248, arg2
    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
}



}
