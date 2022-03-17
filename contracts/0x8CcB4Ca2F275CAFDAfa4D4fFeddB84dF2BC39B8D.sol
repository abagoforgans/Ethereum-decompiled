contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1450]




// =====================  Runtime code  =====================


uint8 stor7;
uint8 stor7; offset 8
uint16 stor7;
array of uint256 stor8;
uint256 sub_4cc8adc6;

function sub_4cc8adc6(?) payable {
    return sub_4cc8adc6
}

function _fallback() payable {
  stop
}

function check(bytes arg1) payable {
    return arg1.length
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
    while idx < 5:
        require (uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 559 < arg1.length
        require idx < 512
        mem[(32 * idx) + ceil32(arg1.length) + 128] = Mask(8, 248, mem[(uint16((Mask(8, 248, _12) >> 240) + (Mask(4, 248, _10) >> 244) + (Mask(8, 248, _8) >> 248)) + 147 % 16777216) + uint16(stor7.field_0) + idx + 687])
        idx = idx + 1
        continue 
    sub_4cc8adc6 = sha3(mem[ceil32(arg1.length) + 128 len 16384])
    return sha3(mem[ceil32(arg1.length) + 128 len 16384])
}



}
