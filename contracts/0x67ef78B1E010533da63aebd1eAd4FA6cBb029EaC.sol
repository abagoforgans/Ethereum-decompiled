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
    stor1988 = 0xed9c3aead241f6fd8e6b6951e29c3dcb5b3662c1
    stor1989 = 0xc35a4e966bf792734a25ea524448ea54de385e4e
    return code.data[153 len 8942]
}



// =====================  Runtime code  =====================


const getAttachesto(uint8 arg1) = mem[960 len 768]

const getOccupies(uint8 arg1) = mem[960 len 768]


uint8 stor0; offset 160
address stor0;
address stor1987;
address stor1988;
address stor1989;

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

function sub_6a864559(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
        mem[160] = address(stor[sha3((6 * arg2) + (198 * arg1) + 2)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((6 * arg2) + (198 * arg1) + 2) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0), data=mem[160 len 32 * uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)]), 
}

function sub_c7dafc78(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0):
        mem[160] = uint256(stor[sha3((6 * arg2) + (198 * arg1) + 3)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((6 * arg2) + (198 * arg1) + 3) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0), data=mem[160 len 32 * uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)]), 
}

function sub_a5ffca0e(?) payable {
    require arg1 < 33
    require arg2 < 33
    require arg1 < 33
    require arg2 < 33
    require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
    call address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) with:
       value uint256(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) wei
         gas 0 wei
    require arg1 < 33
    require arg2 < 33
    require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
    require arg1 < 33
    require arg2 < 33
    address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) = address(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 2)].field_0)
    require arg1 < 33
    require arg2 < 33
    uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) = 0
    idx = 0
    while uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) > idx:
        uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    require arg1 < 33
    require arg2 < 33
    uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) = 0
    idx = 0
    while uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) > idx:
        uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
        idx = idx + 1
        continue 
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

function sub_a713081c(?) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
        call address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + arg3].field_0) with:
           value uint256(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
        address(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
        uint256(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        idx = var34001
        while uint8(idx) < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
            address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx - 1].field_0) = address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
            mem[0] = (6 * arg2) + (198 * arg1) + 3
            uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3) - 1].field_0) = uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0)
            require arg1 < 33
            require arg2 < 33
            idx = idx + 1
            continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)--
        if not uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1:
            idx = uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1
            while uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) > idx:
                uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
                idx = idx + 1
                continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)--
        if not uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) - 1:
            idx = uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) - 1
            while uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) > idx:
                uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_959eac47(?) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        if block.number - uint256(stor[(6 * arg2) + (198 * arg1) + 5].field_0) >= 4320:
            idx = 0
            while uint8(idx) < 20:
                require arg1 < 33
                require arg2 < 33
                uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)++
                if not uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + 1:
                    s = uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0) + sha3((6 * arg2) + (198 * arg1) + 4) + 1
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

function sub_edffcd57(?) payable {
    require arg1 < 33
    require arg2 < 33
    idx = var42001
    while uint8(idx) < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
        require arg1 < 33
        require arg2 < 33
        require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
        mem[0] = (6 * arg2) + (198 * arg1) + 2
        require arg1 < 33
        if address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx].field_0) == msg.sender:
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
            call address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + idx].field_0) with:
               value uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) wei
                 gas 0 wei
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
            address(stor[idx + sha3((6 * arg2) + (198 * arg1) + 2)].field_0) = 0
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
            mem[0] = (6 * arg2) + (198 * arg1) + 3
            uint256(stor[idx + sha3((6 * arg2) + (198 * arg1) + 3)].field_0) = 0
            require arg1 < 33
            require arg2 < 33
            s = var41001
            while uint8(s) < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0):
                require arg1 < 33
                require arg2 < 33
                require s < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                require arg1 < 33
                require arg2 < 33
                require s - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)
                address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + s - 1].field_0) = address(stor[sha3((6 * arg2) + (198 * arg1) + 2) + s].field_0)
                require arg1 < 33
                require arg2 < 33
                require s < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                require arg1 < 33
                require arg2 < 33
                require s - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)
                mem[0] = (6 * arg2) + (198 * arg1) + 3
                uint256(stor[s + sha3((6 * arg2) + (198 * arg1) + 3) - 1].field_0) = uint256(stor[s + sha3((6 * arg2) + (198 * arg1) + 3)].field_0)
                require arg1 < 33
                require arg2 < 33
                require arg2 < 33
                s = s + 1
                continue 
            require arg1 < 33
            require arg2 < 33
            uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0)--
            if not uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) - 1:
                mem[0] = (6 * arg2) + (198 * arg1) + 2
                s = uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) + sha3((6 * arg2) + (198 * arg1) + 2) - 1
                while sha3((6 * arg2) + (198 * arg1) + 2) + uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    require arg2 < 33
                    s = s + 1
                    continue 
            require arg1 < 33
            require arg2 < 33
            uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0)--
            if not uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) <= uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) - 1:
                mem[0] = (6 * arg2) + (198 * arg1) + 3
                s = uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) + sha3((6 * arg2) + (198 * arg1) + 3) - 1
                while sha3((6 * arg2) + (198 * arg1) + 3) + uint256(stor[(6 * arg2) + (198 * arg1) + 3].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    require arg2 < 33
                    s = s + 1
                    continue 
        require arg2 < 33
        idx = idx + 1
        continue 
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
                if uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) < 10:
                    require arg1 < 33
                    require arg2 < 33
                    idx = var19001
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
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if uint256(stor[(6 * arg2) + (198 * arg1) + 2].field_0) < 10:
                        require arg1 < 33
                        require arg2 < 33
                        idx = var22001
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

function editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4) payable {
    mem[96 len 160] = call.data[100 len 160]
    mem[64] = 1120
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 1024
    if var6002 - 1:
        mem[64] = 1216
        var5001 = 1120
        var5002 = 3
        continue 
    mem[64] = 1984
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 1888
    if var12002 - 1:
        mem[64] = 2080
        var11001 = 1984
        var11002 = 3
        continue 
    require arg1 < 33
    require arg2 < 33
    if address(stor[(6 * arg2) + (198 * arg1) + 1].field_0) == msg.sender:
        if ('signextend', 0, ('call.data', 196, 32)) >= -1:
            require arg1 < 33
            require arg2 < 33
            require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
            mem[0] = (6 * arg2) + (198 * arg1) + 4
            mem[96] = ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1'))))))))))
            mem[64] = 2848
            mem[var24001] = 0
            if var24002 - 1:
                var24001 = var24001 + 32
                var24002 = var24002 - 1
                continue 
            mem[var25001] = 2752
            if var25002 - 1:
                mem[64] = 2944
                var24001 = 2848
                var24002 = 3
                continue 
            call stor1988.0x1bcf5758 with:
                 gas gas_remaining - 25050 wei
                args uint8(('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))))))
            mem[2848 len 768] = ext_call.return_data[0 len 768]
            require ext_call.success
            mem[64] = 3104
            idx = 0
            s = 0
            while uint8(idx) < 8:
                require idx < 8
                mem[mem[(32 * idx) + 2848]] = ('signextend', 0, ('add', ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32)), ('call.data', 132, 32)))
                mem[mem[(32 * idx) + 2848] + 32] = ('signextend', 0, ('add', ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32)), ('call.data', 164, 32)))
                require idx < 8
                if not ('signextend', 0, ('smod', ('signextend', 0, ('call.data', 164, 32)), 2)):
                else:
                    require idx < 8
                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                    else:
                        mem[mem[(32 * idx) + 2848]] = ('signextend', 0, ('add', 1, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))))
                mem[mem[(32 * idx) + 2848] + 64] = ('signextend', 0, ('add', ('mem', ('range', ('add', 64, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32)), ('call.data', 196, 32)))
                if -33 > ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))):
                    if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                        if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) < 0:
                            if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                        else:
                            if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                    if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) >= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                    else:
                                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                    else:
                        if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) < 0:
                            if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                        else:
                            if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                    if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                else:
                                    if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) >= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                    else:
                                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                else:
                    if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) <= 33:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                            if -49 > ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))):
                        else:
                            if -50 > ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))):
                        if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) > 49:
                    else:
                        if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                            if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) < 0:
                                if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) >= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                    else:
                                        if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                            if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                            else:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                                        else:
                                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                            else:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * mem[mem[(32 * idx) + 2848]])) > 198:
                        else:
                            if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) < 0:
                                if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                    if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((-3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                            else:
                                if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) >= 0:
                                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                    else:
                                        if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                else:
                                    if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) >= 0:
                                        if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                        else:
                                            if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                    else:
                                        if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) <= 0:
                                            if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)) != 0:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                            else:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                                        else:
                                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))), 2)):
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]] + 1) - 3) > 198:
                                            else:
                                                if uint8((3 * mem[mem[(32 * idx) + 2848] + 32]) + (2 * -mem[mem[(32 * idx) + 2848]])) > 198:
                if s != 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < 8
                if ('signextend', 0, ('mem', ('range', ('add', 64, ('mem', ('range', ('add', 2848, ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))):
                    idx = idx + 1
                    s = s
                    continue 
                idx = idx + 1
                s = 1
                continue 
            if s:
                call stor1988.0x1bcf5758 with:
                     gas gas_remaining - 25050 wei
                    args (mem[96] << 248)
                mem[mem[64] len 768] = ext_call.return_data[0 len 768]
                require ext_call.success
                _363 = mem[64]
                mem[64] = mem[64] + 256
                idx = 0
                while uint8(idx) < 8:
                    require idx < 8
                    mem[mem[_363 + (32 * idx)]] = ('signextend', 0, ('add', ('mem', ('range', ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32)), 32)), ('mem', ('range', 128, 32))))
                    mem[mem[_363 + (32 * idx)] + 32] = ('signextend', 0, ('add', ('mem', ('range', ('add', 32, ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32))), 32)), ('mem', ('range', 160, 32))))
                    require idx < 8
                    if not ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('var', '_363'), 32))), 32))), 2)):
                    else:
                        require idx < 8
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32))), 32))), 2)):
                        else:
                            mem[mem[(32 * idx) + _363]] = ('signextend', 0, ('add', 1, ('mem', ('range', ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32)), 32))))
                    mem[mem[_363 + (32 * idx)] + 64] = ('signextend', 0, ('add', ('mem', ('range', 192, 32)), ('mem', ('range', ('add', 64, ('mem', ('range', ('add', ('var', '_363'), ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))))
                    idx = idx + 1
                    continue 
                require arg1 < 33
                require arg2 < 33
                require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                mem[0] = (6 * arg2) + (198 * arg1) + 4
                if ('signextend', 0, ('signextend', 0, ('type', 232, ('field', 24, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))))) < 0:
                    idx = 0
                    while uint8(idx) < 8:
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)++
                        if not uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) > uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) + 1:
                            require idx < 8
                            _782 = mem[(32 * idx) + _363]
                            require arg1 < 33
                            require arg2 < 33
                            require arg1 < 33
                            require arg2 < 33
                            require uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                            mem[0] = (6 * arg2) + (198 * arg1) + 6
                            t = 0
                            s = _782
                            while _782 + 96 > s:
                                uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1].field_0) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1].field_0)
                                t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                                s = s + 32
                                continue 
                            s = 3
                            t = sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1
                            while s:
                                uint256(stor[t].field_0) = !(255 * 256^s) and uint256(stor[t].field_0)
                                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                                t = (s + 1 / 32) + t
                                continue 
                            s = sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) + -(None + 3 / 32) + (None * None + 3 / 32) - 1
                            while sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) > s:
                                uint8(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        mem[0] = (6 * arg2) + (198 * arg1) + 6
                        s = uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) + sha3((6 * arg2) + (198 * arg1) + 6) + 1
                        while sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        require idx < 8
                        _829 = mem[(32 * idx) + _363]
                        require arg1 < 33
                        require arg2 < 33
                        require arg1 < 33
                        require arg2 < 33
                        require uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1 < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                        mem[0] = (6 * arg2) + (198 * arg1) + 6
                        t = 0
                        s = _829
                        while _829 + 96 > s:
                            uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1].field_0) = mem[s + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1].field_0)
                            t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                            s = s + 32
                            continue 
                        s = 3
                        t = sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) - 1
                        while s:
                            uint256(stor[t].field_0) = !(255 * 256^s) and uint256(stor[t].field_0)
                            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                            t = (s + 1 / 32) + t
                            continue 
                        idx = sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) + -(None + 3 / 32) + (None * None + 3 / 32) - 1
                        while sha3((6 * arg2) + (198 * arg1) + 6) + uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0) > idx:
                            uint8(stor[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                        s = None + 3
                        continue 
                else:
                    idx = 0
                    while uint8(idx) < 8:
                        require arg1 < 33
                        require arg2 < 33
                        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                        mem[0] = (6 * arg2) + (198 * arg1) + 4
                        require idx < 8
                        mem[mem[(32 * idx) + _363]] = ('signextend', 0, ('add', ('mem', ('range', ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32)), 32)), ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))))))
                        require arg1 < 33
                        require arg2 < 33
                        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                        mem[0] = (6 * arg2) + (198 * arg1) + 4
                        require idx < 8
                        mem[mem[_363 + (32 * idx)] + 32] = ('signextend', 0, ('add', ('mem', ('range', ('add', 32, ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32))), 32)), ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))))))
                        if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('var', '_363'), 32))), 32))), 2)):
                            require idx < 8
                            if ('signextend', 0, ('smod', ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32))), 32))), 2)) != 0:
                                require idx < 8
                                mem[mem[(32 * idx) + _363]] = ('signextend', 0, ('add', 1, ('mem', ('range', ('mem', ('range', ('add', ('mask_shl', 251, 0, 5, ('var', 0)), ('var', '_363')), 32)), 32))))
                        require arg1 < 33
                        require arg2 < 33
                        require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                        mem[0] = (6 * arg2) + (198 * arg1) + 4
                        require idx < 8
                        mem[mem[_363 + (32 * idx)] + 64] = ('signextend', 0, ('add', ('signextend', 0, ('type', 232, ('field', 24, ('stor', ('add', ('param', 'arg3'), ('sha3', ('add', 4, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1'))))))))), ('mem', ('range', ('add', 64, ('mem', ('range', ('add', ('var', '_363'), ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))))
                        idx = idx + 1
                        continue 
                    idx = 0
                    while uint8(idx) < 8:
                        require arg1 < 33
                        require arg2 < 33
                        s = var81002
                        while s < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0):
                            require arg1 < 33
                            require arg2 < 33
                            require s < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                            mem[0] = (6 * arg2) + (198 * arg1) + 6
                            require idx < 8
                            require arg1 < 33
                            if ('signextend', 0, ('mem', ('range', ('mem', ('range', ('add', ('var', '_363'), ('mask_shl', 251, 0, 5, ('var', 0))), 32)), 32))) == ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('add', ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))), ('var', 1))))))):
                                require arg2 < 33
                                require s < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                                require idx < 8
                                if ('signextend', 0, ('mem', ('range', ('add', 32, ('mem', ('range', ('add', ('var', '_363'), ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) == ('signextend', 0, ('signextend', 0, ('type', 248, ('field', 8, ('stor', ('add', ('var', 1), ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))))))))):
                                    require arg1 < 33
                                    require arg2 < 33
                                    require s < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                                    mem[0] = (6 * arg2) + (198 * arg1) + 6
                                    require idx < 8
                                    if ('signextend', 0, ('mem', ('range', ('add', 64, ('mem', ('range', ('add', ('var', '_363'), ('mask_shl', 251, 0, 5, ('var', 0))), 32))), 32))) == ('signextend', 0, ('signextend', 0, ('type', 240, ('field', 16, ('stor', ('add', ('sha3', ('add', 6, ('mul', 6, ('param', 'arg2')), ('mul', 198, ('param', 'arg1')))), ('var', 1))))))):
                                        require idx < 8
                                        _869 = mem[(32 * idx) + _363]
                                        require arg1 < 33
                                        require arg2 < 33
                                        require s < uint256(stor[(6 * arg2) + (198 * arg1) + 6].field_0)
                                        mem[0] = (6 * arg2) + (198 * arg1) + 6
                                        t = 0
                                        idx = _869
                                        while _869 + 96 > idx:
                                            uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + s].field_0) = mem[idx + 31 len 1] * 256^t or !(255 * 256^t) and uint256(stor[sha3((6 * arg2) + (198 * arg1) + 6) + s].field_0)
                                            require arg2 < 33
                                            t = t + -(t + 1 / 32) + (-1 * t * t + 1 / 32) + 1
                                            idx = idx + 32
                                            continue 
                                        idx = 3
                                        t = sha3((6 * arg2) + (198 * arg1) + 6) + s
                                        while idx:
                                            uint256(stor[t].field_0) = !(255 * 256^idx) and uint256(stor[t].field_0)
                                            require arg2 < 33
                                            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                                            t = (idx + 1 / 32) + t
                                            continue 
                                        t = sha3((6 * arg2) + (198 * arg1) + 6) + s - (None + 3 / 32) + (None * None + 3 / 32)
                                        while sha3((6 * arg2) + (198 * arg1) + 6) + s + 1 > t:
                                            uint8(stor[t].field_0) = 0
                                            require arg2 < 33
                                            t = t + 1
                                            continue 
                            require arg2 < 33
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                require arg1 < 33
                require arg2 < 33
                require arg3 < uint256(stor[(6 * arg2) + (198 * arg1) + 4].field_0)
                s = 0
                idx = 96
                while 256 > idx:
                    uint256(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 4)].field_0) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor[arg3 + sha3((6 * arg2) + (198 * arg1) + 4)].field_0)
                    s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                    idx = idx + 32
                    continue 
                idx = 5
                s = arg3 + sha3((6 * arg2) + (198 * arg1) + 4)
                while idx:
                    uint256(stor[s].field_0) = !(255 * 256^idx) and uint256(stor[s].field_0)
                    idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                    s = (idx + 1 / 32) + s
                    continue 
                idx = arg3 - (3 * None + 3 / 32) + (None * None + 3 / 32)
                while arg3 + 1 > idx:
                    uint8(stor[idx + sha3((6 * arg2) + (198 * arg1) + 4)].field_0) = 0
                    idx = idx + 1
                    continue 
}



}
