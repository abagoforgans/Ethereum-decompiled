contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1433]




// =====================  Runtime code  =====================


uint8 stor7;
uint8 stor7; offset 8
uint16 stor7;
array of uint256 stor8;
uint256 sub_4cc8adc6;

function sub_4cc8adc6(?) payable {
    return sub_4cc8adc6
}

function sub_8eca8e8a(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require 2 < arg2.length
    require 1 < arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = mem[129 len 1] + mem[ceil32(arg1.length) + 162 len 1]
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}

function sub_f69eebfe(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len 16352] = 0
    require 30 < arg1.length
    require 29 < arg1.length
    require 1 == uint16((Mask(8, 248, mem[157]) >> 244) + mem[158 len 1])
    require 147 < arg1.length
    _8 = mem[275]
    require 146 < arg1.length
    _10 = mem[274]
    require 145 < arg1.length
    _12 = mem[273]
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 4 < arg1.length
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 132 len 1]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 13 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 12 < arg1.length
    uint8(stor7.field_0) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244))
    uint8(stor7.field_8) = 0
    if uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244)) != 258:
        require 16 == uint16(stor7.field_0)
    idx = 0
    while idx < uint16(stor7.field_0):
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 13 < arg1.length
        require idx < stor8.length
        mem[0] = 8
        stor8[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 141 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor8[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 14 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 13 < arg1.length
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 559 < arg1.length
        require idx < 512
        mem[(32 * idx) + ceil32(arg1.length) + 128] = Mask(8, 248, mem[(uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 687])
        idx = idx + 1
        continue 
    sub_4cc8adc6 = sha3(mem[ceil32(arg1.length) + 128 len 16384])
}

function check(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len 16352] = 0
    require 30 < arg1.length
    require 29 < arg1.length
    require 1 == uint16((Mask(8, 248, mem[157]) >> 244) + mem[158 len 1])
    require 147 < arg1.length
    _8 = mem[275]
    require 146 < arg1.length
    _10 = mem[274]
    require 145 < arg1.length
    _12 = mem[273]
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 4 < arg1.length
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 132 len 1]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 13 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 12 < arg1.length
    uint8(stor7.field_0) = uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244))
    uint8(stor7.field_8) = 0
    if uint8(mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 141 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + 140]) >> 244)) != 258:
        require 16 == uint16(stor7.field_0)
    idx = 0
    while idx < uint16(stor7.field_0):
        require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 13 < arg1.length
        require idx < stor8.length
        mem[0] = 8
        stor8[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + idx + 141 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor8[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 14 < arg1.length
    require (uint16((Mask(8, 248, mem[273]) >> 240) + (Mask(4, 248, mem[274]) >> 244) + mem[275 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 13 < arg1.length
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 559 < arg1.length
        require idx < 512
        mem[(32 * idx) + ceil32(arg1.length) + 128] = Mask(8, 248, mem[(uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 687])
        idx = idx + 1
        continue 
    sub_4cc8adc6 = sha3(mem[ceil32(arg1.length) + 128 len 16384])
    return arg1.length
}

function _fallback() payable {
    mem[160 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 160] = 0
    mem[ceil32(calldata.size) + 192 len 16352] = 0
    require 30 < calldata.size
    require 29 < calldata.size
    require 1 == uint16((Mask(8, 248, mem[189]) >> 244) + mem[190 len 1])
    require 147 < calldata.size
    _9 = mem[307]
    require 146 < calldata.size
    _11 = mem[306]
    require 145 < calldata.size
    _13 = mem[305]
    s = 0
    idx = 0
    while idx < 8:
        require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 4 < calldata.size
        s = (16 * s) + mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 164 len 1]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 13 < calldata.size
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 12 < calldata.size
    uint8(stor7.field_0) = uint8(mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 173 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 172]) >> 244))
    uint8(stor7.field_8) = 0
    if uint8(mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 173 len 1] + (Mask(8, 248, mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + 172]) >> 244)) != 258:
        require 16 == uint16(stor7.field_0)
    idx = 0
    while idx < uint16(stor7.field_0):
        require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 13 < calldata.size
        require idx < stor8.length
        mem[0] = 8
        stor8[0.03125 / idx] = mem[(uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + idx + 173 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor8[0.03125 / idx]
        idx = idx + 1
        continue 
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 14 < calldata.size
    require (uint16((Mask(8, 248, mem[305]) >> 240) + (Mask(4, 248, mem[306]) >> 244) + mem[307 len 1]) + 147 % 16777216) + uint16(stor7.field_0) + 13 < calldata.size
    idx = 0
    while idx < 512:
        require (uint16((Mask(8, 248, _13) >> 240) + (Mask(4, 248, _11) >> 244) + (Mask(8, 248, _9) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 559 < calldata.size
        require idx < 512
        mem[(32 * idx) + ceil32(calldata.size) + 160] = Mask(8, 248, mem[(uint16((Mask(8, 248, _13) >> 240) + (Mask(4, 248, _11) >> 244) + (Mask(8, 248, _9) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 719])
        idx = idx + 1
        continue 
    sub_4cc8adc6 = sha3(mem[ceil32(calldata.size) + 160 len 16384])
}



}
