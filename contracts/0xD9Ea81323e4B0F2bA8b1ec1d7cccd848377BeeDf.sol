contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor2209;
address stor220A;
address stor220B;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, '!') or Mask(88, 168, uint256(stor0)) or Mask(96, 160, address(stor0))
    stor2209 = msg.sender or Mask(96, 160, stor2209)
    stor220A = 0xed9c3aead241f6fd8e6b6951e29c3dcb5b3662c1
    stor220B = 0xc35a4e966bf792734a25ea524448ea54de385e4e
    return code.data[153 len 10847]
}



// =====================  Runtime code  =====================


#
#  - editBlock(uint8 arg1, uint8 arg2, uint256 arg3, int8[5] arg4)
#
const getAttachesto(uint8 arg1) = mem[960 len 768]

const getOccupies(uint8 arg1) = mem[960 len 768]

const getElevation(uint8 arg1, uint8 arg2) = 0


uint8 stor0; offset 160
address stor0;
address stor2209;
address stor220A;
uint8 whatHappened; offset 160
uint128 stor220B; offset 168
address stor220B;
uint256 stor220B;

function getWhatHappened() payable {
    return whatHappened
}

function getName(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(8 * arg2) + (264 * arg1) + 7][0 len stor[(8 * arg2) + (264 * arg1) + 7].length].field_0)
}

function getStatus(uint8 arg1, uint8 arg2) payable {
    return uint256(stor[(8 * arg2) + (264 * arg1) + 8][0 len stor[(8 * arg2) + (264 * arg1) + 8].length].field_0)
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

function setName(uint8 arg1, uint8 arg2, string arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        uint256(stor[sha3((8 * arg2) + (264 * arg1) + 7)][].field_0) = Array(len=arg3.length, data=arg3[all])
}

function setStatus(uint8 arg1, uint8 arg2, string arg3) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        uint256(stor[sha3((8 * arg2) + (264 * arg1) + 8)][].field_0) = Array(len=arg3.length, data=arg3[all])
}

function sub_6a864559(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
        mem[160] = address(stor[sha3((8 * arg2) + (264 * arg1) + 2)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)) + 128 > idx:
            mem[idx + 32] = address(stor[s + sha3((8 * arg2) + (264 * arg1) + 2) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0), data=mem[160 len 32 * uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)]), 
}

function sub_c7dafc78(?) payable {
    require arg1 < 33
    require arg2 < 33
    if uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0):
        mem[160] = uint256(stor[sha3((8 * arg2) + (264 * arg1) + 3)].field_0)
        idx = 160
        s = 0
        while (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)) + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((8 * arg2) + (264 * arg1) + 3) + 1].field_0)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0), data=mem[160 len 32 * uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)]), 
}

function sub_2747ad0a(?) payable {
    mem[64] = 960
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 864
    if var6002 - 1:
        mem[64] = 1056
        var5001 = 960
        var5002 = 3
        continue 
    mem[64] = 1824
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 1728
    if var12002 - 1:
        mem[64] = 1920
        var11001 = 1824
        var11002 = 3
        continue 
    call stor220A.0x1bcf5758 with:
         gas gas_remaining - 25050 wei
        args arg1
    mem[1824 len 768] = ext_call.return_data[0 len 768]
    require ext_call.success
    mem[64] = 2080
    s = 2080
    idx = 0
    while idx < 8:
        mem[s len 96] = mem[mem[(32 * idx) + 1824] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from 2080
       len 768
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
            mem[(32 * idx) + mem[(32 * s) + (10 * 3600)]] = address(stor[(8 * idx) + (264 * s) + 1].field_0)
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

function sub_a5ffca0e(?) payable {
    require arg1 < 33
    require arg2 < 33
    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
    call stor2209 with:
       value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) / 10 wei
         gas 0 wei
    require arg1 < 33
    require arg2 < 33
    call address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) with:
       value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) - (uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) / 10) wei
         gas 0 wei
    require arg1 < 33
    require arg2 < 33
    require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
    require arg1 < 33
    require arg2 < 33
    address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 2)].field_0)
    require arg1 < 33
    require arg2 < 33
    uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) = 0
    idx = 0
    while uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) > idx:
        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    require arg1 < 33
    require arg2 < 33
    uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) = 0
    idx = 0
    while uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) > idx:
        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
        idx = idx + 1
        continue 
}

function getBlocks(uint8 arg1, uint8 arg2) payable {
    mem[96] = 0
    require arg1 < 33
    require arg2 < 33
    mem[64] = (32 * uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)) + 160
    mem[128] = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
    s = 160
    idx = 0
    while idx < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0):
        mem[0] = (8 * arg2) + (264 * arg1) + 4
        _11 = mem[64]
        mem[64] = mem[64] + 160
        mem[_11] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('sha3', ('add', 4, ('mul', 8, ('param', 'arg2')), ('mul', 264, ('param', 'arg1'))))))), ('exp', 256, 0)))
        t = _11
        s = 0
        while _11 + 160 > t + 32:
            mem[t + 32] = ('signextend', 0, ('div', ('type', 256, ('field', 0, ('stor', ('add', 1, ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1)))), ('var', 1), ('mul', -1, ('div', 0.03125, ('add', 1, ('var', 1))), ('var', 1)), ('sha3', ('add', 4, ('mul', 8, ('param', 'arg2')), ('mul', 264, ('param', 'arg1')))))))), ('exp', 256, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32)), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 1, ('var', 1))), 32), ('var', 1))))))
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
    if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
        call address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + arg3].field_0) with:
           value uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
        address(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        require arg3 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
        uint256(stor[arg3 + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        idx = var34001
        while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
            address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx - 1].field_0) = address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
            require arg1 < 33
            require arg2 < 33
            require idx - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
            mem[0] = (8 * arg2) + (264 * arg1) + 3
            uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3) - 1].field_0) = uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0)
            require arg1 < 33
            require arg2 < 33
            idx = idx + 1
            continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)--
        if not uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1:
            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1
            while uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) > idx:
                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
                idx = idx + 1
                continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)--
        if not uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) - 1:
            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) - 1
            while uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) > idx:
                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_959eac47(?) payable {
    require arg1 < 33
    require arg2 < 33
    if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
        require arg1 < 33
        require arg2 < 33
        if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) >= 4320:
            idx = 0
            while uint8(idx) < 20:
                require arg1 < 33
                require arg2 < 33
                uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)++
                if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1:
                    s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) + 1
                    while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                if uint8(idx) != 0:
                    stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                else:
                    stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_8) = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_16) = 0
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_24) = 255
                require arg1 < 33
                require arg2 < 33
                require arg1 < 33
                require arg2 < 33
                require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                mem[0] = (8 * arg2) + (264 * arg1) + 4
                uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_32) = 0
                idx = idx + 1
                continue 
            require arg1 < 33
            require arg2 < 33
            uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) = block.number
}

function sub_edffcd57(?) payable {
    require arg1 < 33
    require arg2 < 33
    idx = var41001
    while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
        require arg1 < 33
        require arg2 < 33
        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
        mem[0] = (8 * arg2) + (264 * arg1) + 2
        require arg1 < 33
        if address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx].field_0) != msg.sender:
            require arg2 < 33
            idx = idx + 1
            continue 
        require arg2 < 33
        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
        require arg1 < 33
        require arg2 < 33
        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
        call address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx].field_0) with:
           value uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) wei
             gas 0 wei
        require arg1 < 33
        require arg2 < 33
        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
        address(stor[idx + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
        mem[0] = (8 * arg2) + (264 * arg1) + 3
        uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
        require arg1 < 33
        require arg2 < 33
        s = var41001
        while uint8(s) < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
            require arg1 < 33
            require arg2 < 33
            require s < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
            require arg1 < 33
            require arg2 < 33
            require s - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
            address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + s - 1].field_0) = address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + s].field_0)
            require arg1 < 33
            require arg2 < 33
            require s < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
            require arg1 < 33
            require arg2 < 33
            require s - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
            mem[0] = (8 * arg2) + (264 * arg1) + 3
            uint256(stor[s + sha3((8 * arg2) + (264 * arg1) + 3) - 1].field_0) = uint256(stor[s + sha3((8 * arg2) + (264 * arg1) + 3)].field_0)
            require arg1 < 33
            require arg2 < 33
            require arg2 < 33
            s = s + 1
            continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)--
        if not uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1:
            mem[0] = (8 * arg2) + (264 * arg1) + 2
            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) + sha3((8 * arg2) + (264 * arg1) + 2) - 1
            while sha3((8 * arg2) + (264 * arg1) + 2) + uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                require arg2 < 33
                idx = idx + 1
                continue 
        require arg1 < 33
        require arg2 < 33
        uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)--
        if not uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) - 1:
            mem[0] = (8 * arg2) + (264 * arg1) + 3
            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + sha3((8 * arg2) + (264 * arg1) + 3) - 1
            while sha3((8 * arg2) + (264 * arg1) + 3) + uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) > idx:
                uint256(stor[idx].field_0) = 0
                require arg2 < 33
                idx = idx + 1
                continue 
        require arg1 < 33
        require arg2 < 33
        s = None + 1
        continue 
}

function sub_6266b514(?) payable {
    if msg.value < 10^16:
        if msg.value != 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
    else:
        if msg.value > test266151307():
            if msg.value != 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
        else:
            call address(stor220B.field_0).0x4166c1fd with:
                 gas gas_remaining - 25050 wei
                args arg1 << 248, arg2
            require ext_call.success
            require arg1 < 33
            require arg2 < 33
            if ext_call.return_data[31 len 1] < 125:
                if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > 100000:
                    if 10^18 != msg.value:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        call stor2209 with:
                           value msg.value wei
                             gas 0 wei
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
                            require arg1 < 33
                            require arg2 < 33
                            if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) >= 4320:
                                idx = 0
                                while uint8(idx) < 20:
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)++
                                    if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1:
                                        s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) + 1
                                        while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    if uint8(idx) != 0:
                                        stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    else:
                                        stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_8) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_16) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_24) = 255
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    mem[0] = (8 * arg2) + (264 * arg1) + 4
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_32) = 0
                                    idx = idx + 1
                                    continue 
                                require arg1 < 33
                                require arg2 < 33
                                uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) = block.number
                    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) >= 10:
                        whatHappened = 15
                    else:
                        require arg1 < 33
                        require arg2 < 33
                        idx = var23001
                        while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
                            require arg1 < 33
                            require arg2 < 33
                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
                            mem[0] = (8 * arg2) + (264 * arg1) + 2
                            require arg1 < 33
                            if address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx].field_0) != msg.sender:
                                require arg2 < 33
                                idx = idx + 1
                                continue 
                            require arg2 < 33
                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                            call msg.sender with:
                               value uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) wei
                                 gas 0 wei
                            require arg1 < 33
                            require arg2 < 33
                            require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                            uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = msg.value
                            uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)++
                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) + 1:
                            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) + 1
                            while uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) > idx:
                                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)++
                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + 1:
                            idx = uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + 1
                            while uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) > idx:
                                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
                                idx = idx + 1
                                continue 
                        require arg1 < 33
                        require arg2 < 33
                        require arg1 < 33
                        require arg2 < 33
                        require uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
                        uint256(stor[sha3((8 * arg2) + (264 * arg1) + 2) + uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg2) + (264 * arg1) + 2) + uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        require arg1 < 33
                        require arg2 < 33
                        require uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                        uint256(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + sha3((8 * arg2) + (264 * arg1) + 3) - 1].field_0) = msg.value
                        whatHappened = 14
            else:
                if not address(stor[(8 * arg2) + (264 * arg1) + 1].field_0):
                    if 10^18 != msg.value:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        call stor2209 with:
                           value msg.value wei
                             gas 0 wei
                        require arg1 < 33
                        require arg2 < 33
                        uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0))
                        require arg1 < 33
                        require arg2 < 33
                        if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
                            require arg1 < 33
                            require arg2 < 33
                            if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) >= 4320:
                                idx = 0
                                while uint8(idx) < 20:
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)++
                                    if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1:
                                        s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) + 1
                                        while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    if uint8(idx) != 0:
                                        stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    else:
                                        stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                    stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_8) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_16) = 0
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_24) = 255
                                    require arg1 < 33
                                    require arg2 < 33
                                    require arg1 < 33
                                    require arg2 < 33
                                    require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                    mem[0] = (8 * arg2) + (264 * arg1) + 4
                                    uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_32) = 0
                                    idx = idx + 1
                                    continue 
                                require arg1 < 33
                                require arg2 < 33
                                uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) = block.number
                    uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
                else:
                    require arg1 < 33
                    require arg2 < 33
                    if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) > 100000:
                        if 10^18 != msg.value:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                        else:
                            call stor2209 with:
                               value msg.value wei
                                 gas 0 wei
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[(8 * arg2) + (264 * arg1) + 1].field_0))
                            require arg1 < 33
                            require arg2 < 33
                            if address(stor[(8 * arg2) + (264 * arg1) + 1].field_0) == msg.sender:
                                require arg1 < 33
                                require arg2 < 33
                                if block.number - uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) >= 4320:
                                    idx = 0
                                    while uint8(idx) < 20:
                                        require arg1 < 33
                                        require arg2 < 33
                                        uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)++
                                        if not uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + 1:
                                            s = uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) + 1
                                            while sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        if uint8(idx) != 0:
                                            stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64)) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 64) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                        else:
                                            stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_0 % 32 = block.hash(block.number - 1) - (block.hash(block.number - 1) % 16^(-(2 * idx % 128) + 62)) / 16^(-(2 * idx % 128) + 62) % 32
                                        stor[sha3((8 * arg2) + (264 * arg1) + 4) + uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1].field_5 % 8 = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_8) = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_16) = 0
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_24) = 255
                                        require arg1 < 33
                                        require arg2 < 33
                                        require arg1 < 33
                                        require arg2 < 33
                                        require uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0)
                                        mem[0] = (8 * arg2) + (264 * arg1) + 4
                                        uint8(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 4].field_0) + sha3((8 * arg2) + (264 * arg1) + 4) - 1].field_32) = 0
                                        idx = idx + 1
                                        continue 
                                    require arg1 < 33
                                    require arg2 < 33
                                    uint256(stor[(8 * arg2) + (264 * arg1) + 5].field_0) = block.number
                        uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
                    else:
                        require arg1 < 33
                        require arg2 < 33
                        if uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) >= 10:
                            whatHappened = 15
                        else:
                            require arg1 < 33
                            require arg2 < 33
                            idx = var26001
                            while uint8(idx) < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0):
                                require arg1 < 33
                                require arg2 < 33
                                require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
                                mem[0] = (8 * arg2) + (264 * arg1) + 2
                                require arg1 < 33
                                if address(stor[sha3((8 * arg2) + (264 * arg1) + 2) + idx].field_0) != msg.sender:
                                    require arg2 < 33
                                    idx = idx + 1
                                    continue 
                                require arg2 < 33
                                require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                                call msg.sender with:
                                   value uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) wei
                                     gas 0 wei
                                require arg1 < 33
                                require arg2 < 33
                                require idx < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                                uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = msg.value
                                uint256(stor220B.field_0) = Mask(88, 0, stor220B.field_168)
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)++
                            if not uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) + 1:
                                idx = uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) + 1
                                while uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) > idx:
                                    uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            require arg1 < 33
                            require arg2 < 33
                            uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)++
                            if not uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) <= uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + 1:
                                idx = uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + 1
                                while uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) > idx:
                                    uint256(stor[idx + sha3((8 * arg2) + (264 * arg1) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            require arg1 < 33
                            require arg2 < 33
                            require arg1 < 33
                            require arg2 < 33
                            require uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0)
                            uint256(stor[sha3((8 * arg2) + (264 * arg1) + 2) + uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor[sha3((8 * arg2) + (264 * arg1) + 2) + uint256(stor[(8 * arg2) + (264 * arg1) + 2].field_0) - 1].field_0))
                            require arg1 < 33
                            require arg2 < 33
                            require arg1 < 33
                            require arg2 < 33
                            require uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) - 1 < uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0)
                            uint256(stor[uint256(stor[(8 * arg2) + (264 * arg1) + 3].field_0) + sha3((8 * arg2) + (264 * arg1) + 3) - 1].field_0) = msg.value
                            whatHappened = 14
}



}
