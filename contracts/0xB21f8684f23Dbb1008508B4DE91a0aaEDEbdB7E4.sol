contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1987;
address stor1988;
address stor1989;

function _fallback() payable {
    stor0 = 33
    stor1987 = tx.origin or Mask(96, 160, stor1987)
    stor1988 = 0xd4e686a1fbf1bfe058510f07cd3936d3d5a70589
    stor1989 = 0x68549d7dbb7a956f955ec1263f55494f05972a6b
    return code.data[116 len 10859]
}



// =====================  Runtime code  =====================


#
#  - editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4)
#
address stor1987;
address stor1989;
array of uint256 whatHappened;
uint8 locked;

function getWhatHappened() payable {
    return uint256(whatHappened[0 len whatHappened.length].field_0)
}

function getLocked() payable {
    return locked
}

function getLastFarm(uint8 arg1, uint8 arg2) payable {
    require arg1 < 33
    require arg2 < 33
    return uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0)
}

function getName(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(198 * arg1) + (6 * arg2) + 2][0 len stor[(198 * arg1) + (6 * arg2) + 2].length].field_0)
}

function getStatus(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(6 * arg2) + (198 * arg1) + 3][0 len stor[(6 * arg2) + (198 * arg1) + 3].length].field_0)
}

function getOwner(uint8 arg1, uint8 arg2) payable {
    require arg1 < 33
    require arg2 < 33
    return address(stor[(6 * arg2) + (198 * arg1) + 1].field_0)
}

function kill() payable {
    if locked:
    if stor1987 != msg.sender:
    selfdestruct(stor1987)
}

function setLocked() payable {
    if stor1987 == msg.sender:
        locked = 1
}

function _fallback() payable {
    call tx.origin with:
       value msg.value wei
         gas 0 wei
}

function empty() payable {
    call stor1987 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function setName(uint8 arg1, uint8 arg2, string arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if tx.origin == address(stor[(6 * arg2) + (198 * arg1) + 1].field_0):
        uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
        emit 0x56962cd3: arg1 << 248, arg2
        uint8(whatHappened.length) = 20
        Mask(248, 0, whatHappened.length.field_8) = 'setName:OK' / 256
    else:
        if stor1987 != tx.origin:
            uint8(whatHappened.length) = 42
            Mask(248, 0, whatHappened.length.field_8) = 'setName:ERR:not owner' / 256
        else:
            if locked:
                uint8(whatHappened.length) = 42
                Mask(248, 0, whatHappened.length.field_8) = 'setName:ERR:not owner' / 256
            else:
                uint256(stor[sha3((6 * arg2) + (198 * arg1) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
                emit 0x56962cd3: arg1 << 248, arg2
                uint8(whatHappened.length) = 20
                Mask(248, 0, whatHappened.length.field_8) = 'setName:OK' / 256
    idx = code.data[10827 len 32]
    while code.data[10827 len 32] + (whatHappened.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
}

function setOwner(uint8 arg1, uint8 arg2, address arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if tx.origin == address(stor[(6 * arg2) + (198 * arg1) + 1].field_0):
        uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = arg3 or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
        emit 0x56962cd3: arg1 << 248, arg2
        uint8(whatHappened.length) = 22
        Mask(248, 0, whatHappened.length.field_8) = 'setOwner:OK' / 256
    else:
        if stor1987 != tx.origin:
            uint8(whatHappened.length) = 44
            Mask(248, 0, whatHappened.length.field_8) = 'setOwner:ERR:not owner' / 256
        else:
            if locked:
                uint8(whatHappened.length) = 44
                Mask(248, 0, whatHappened.length.field_8) = 'setOwner:ERR:not owner' / 256
            else:
                uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = arg3 or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
                emit 0x56962cd3: arg1 << 248, arg2
                uint8(whatHappened.length) = 22
                Mask(248, 0, whatHappened.length.field_8) = 'setOwner:OK' / 256
    idx = code.data[10827 len 32]
    while code.data[10827 len 32] + (whatHappened.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
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
        _10 = mem[64]
        mem[64] = mem[64] + 160
        mem[_10] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _10
        s = 0
        while _10 + 160 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
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
    s = mem[64] + 64
    idx = 0
    while idx < mem[128]:
        mem[s len 160] = mem[mem[(32 * idx) + 160] len 160]
        s = s + 160
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len _12 + (160 * mem[128]) + -mem[64] + 64
}

function buyTile(uint8 arg1, uint8 arg2) payable {
    if 10^18 != msg.value:
        call tx.origin with:
           value msg.value wei
             gas 0 wei
        uint8(whatHappened.length) = 42
        Mask(248, 0, whatHappened.length.field_8) = 'buyTile:ERR:val!=1eth' / 256
    else:
        require arg1 < 33
        require arg2 < 33
        if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) != 0:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
            uint8(whatHappened.length) = 42
            Mask(248, 0, whatHappened.length.field_8) = 'buyTile:ERR:alr owned' / 256
        else:
            call stor1989.getElevation(uint8 rg1, uint8 rg2) with:
                 gas gas_remaining - 25050 wei
                args arg1 << 248, arg2
            require ext_call.success
            if ext_call.return_data[31 len 1] < 125:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                uint8(whatHappened.length) = 34
                Mask(248, 0, whatHappened.length.field_8) = 'buyTile:ERR:water' / 256
            else:
                call stor1987 with:
                   value msg.value wei
                     gas 0 wei
                uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = tx.origin or Mask(96, 160, uint256(stor[(6 * arg2) + (198 * arg1) + 1].field_0))
                emit 0x56962cd3: arg1 << 248, arg2
                uint8(whatHappened.length) = 20
                Mask(248, 0, whatHappened.length.field_8) = 'buyTile:OK' / 256
    idx = code.data[10827 len 32]
    while code.data[10827 len 32] + (whatHappened.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
}

function setStatus(uint8 arg1, uint8 arg2, string arg3) payable {
    if 10^18 != msg.value:
        call tx.origin with:
           value msg.value wei
             gas 0 wei
        uint8(whatHappened.length) = 46
        Mask(248, 0, whatHappened.length.field_8) = 'setStatus:ERR:val!=1eth' / 256
    else:
        require arg1 < 33
        require arg2 < 33
        if tx.origin == address(stor[(6 * arg2) + (198 * arg1) + 1].field_0):
            uint256(stor[sha3((6 * arg2) + (198 * arg1) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
            call stor1987 with:
               value msg.value wei
                 gas 0 wei
            emit 0x56962cd3: arg1 << 248, arg2
            uint8(whatHappened.length) = 24
            Mask(248, 0, whatHappened.length.field_8) = 'setStatus:OK' / 256
        else:
            if stor1987 != tx.origin:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                uint8(whatHappened.length) = 46
                Mask(248, 0, whatHappened.length.field_8) = 'setStatus:ERR:not owner' / 256
            else:
                if locked:
                    call tx.origin with:
                       value msg.value wei
                         gas 0 wei
                    uint8(whatHappened.length) = 46
                    Mask(248, 0, whatHappened.length.field_8) = 'setStatus:ERR:not owner' / 256
                else:
                    uint256(stor[sha3((6 * arg2) + (198 * arg1) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
                    call stor1987 with:
                       value msg.value wei
                         gas 0 wei
                    emit 0x56962cd3: arg1 << 248, arg2
                    uint8(whatHappened.length) = 24
                    Mask(248, 0, whatHappened.length.field_8) = 'setStatus:OK' / 256
    idx = code.data[10827 len 32]
    while code.data[10827 len 32] + (whatHappened.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
}

function farmTile(uint8 arg1, uint8 arg2, int8 arg3) payable {
    if ('signextend', 0, ('param', 'arg3')) < 0:
        call tx.origin with:
           value msg.value wei
             gas 0 wei
        uint8(whatHappened.length) = 60
        Mask(248, 0, whatHappened.length.field_8) = 'farmTile:ERR:invalid blocktype' / 256
    else:
        if ('signextend', 0, ('param', 'arg3')) > 17:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
            uint8(whatHappened.length) = 60
            Mask(248, 0, whatHappened.length.field_8) = 'farmTile:ERR:invalid blocktype' / 256
        else:
            require arg1 < 33
            require arg2 < 33
            if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) != tx.origin:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                uint8(whatHappened.length) = 44
                Mask(248, 0, whatHappened.length.field_8) = 'farmTile:ERR:not owner' / 256
            else:
                if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 2500:
                    if msg.value > 0:
                        call tx.origin with:
                           value msg.value wei
                             gas 0 wei
                    idx = 0
                    while uint8(idx) < 10:
                        uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                        if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                            s = uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) + 1
                            while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                        uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0) = arg3
                        uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_8) = 0
                        require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                        uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_16) = 0
                        uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                        mem[0] = (6 * arg2) + (198 * arg1) + 4
                        uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_32) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
                    emit 0x56962cd3: arg1 << 248, arg2
                    uint8(whatHappened.length) = 22
                    Mask(248, 0, whatHappened.length.field_8) = 'farmTile:OK' / 256
                else:
                    if 10^18 != msg.value:
                        call tx.origin with:
                           value msg.value wei
                             gas 0 wei
                        uint8(whatHappened.length) = 44
                        Mask(248, 0, whatHappened.length.field_8) = 'farmTile:ERR:val!=1eth' / 256
                    else:
                        call stor1987 with:
                           value msg.value wei
                             gas 0 wei
                        idx = 0
                        while uint8(idx) < 10:
                            uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                            if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                                s = uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) + 1
                                while sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                            uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_0) = arg3
                            uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_8) = 0
                            require uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                            uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_16) = 0
                            uint8(stor[uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) - 1].field_24) = 255
                            mem[0] = (6 * arg2) + (198 * arg1) + 4
                            uint8(stor[sha3((6 * arg2) + (198 * arg1) + 4) + uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) - 1].field_32) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) = block.number
                        emit 0x56962cd3: arg1 << 248, arg2
                        uint8(whatHappened.length) = 22
                        Mask(248, 0, whatHappened.length.field_8) = 'farmTile:OK' / 256
    idx = code.data[10827 len 32]
    while code.data[10827 len 32] + (whatHappened.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
}



}
