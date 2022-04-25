contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
array of uint256 stor5;
uint8 stor6;
uint16 stor6; offset 16
uint16 stor6; offset 32
uint256 stor6; offset 8
uint256 stor7;

function _fallback() payable {
    mem[128] = 'ProductosConstruidos'
    bool(stor5.length) = 0
    stor5.length.field_1 = 20
    stor5.length.field_8 = 'ProductosConstruidos' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor6.field_0) = 0
    Mask(248, 0, stor6.field_8) = 0
    uint16(stor6.field_16) = 0
    uint16(stor6.field_32) = 0
    stor7 = 0
    require not msg.value
    mem[160 len -1748] = code.data[2624 len -1748]
    stor0[] = Array(len=mem[mem[352] + 160], data=mem[mem[352] + 192 len mem[mem[352] + 160]])
    stor1 = mem[172 len 20]
    stor2 = mem[204 len 20]
    stor3 = mem[236 len 20]
    stor4 = mem[268 len 20]
    uint16(stor6.field_16) = mem[318 len 2]
    uint16(stor6.field_32) = mem[350 len 2]
    if uint16(uint16(stor6.field_16) + uint16(stor6.field_32)) == 10000:
        return code.data[876 len 1748]
    revert
}



// =====================  Runtime code  =====================


array of uint256 sub_ddf158d1;
address stor1;
address stor3;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
uint256 sub_fe79e4a0;

function sub_2029f9eb(?) {
    return bool(uint8(stor6.field_0))
}

function sub_ddf158d1(?) {
    return sub_ddf158d1[0 len sub_ddf158d1.length]
}

function sub_fb83e34e(?) {
    return bool(uint8(stor6.field_8))
}

function sub_fe79e4a0(?) {
    return sub_fe79e4a0
}

function _fallback() payable {
    revert
}

function sub_2460d6f4(?) {
    emit 0xad39d735 
}

function sub_a69dca8e(?) {
    require msg.sender == stor3
    sub_fe79e4a0 = arg1
    emit 0x287eb6bc: arg1
}

function sub_7394cd92(?) {
    require msg.sender == stor3
    uint8(stor6.field_0) = 1
    emit 0x41fb0ff4: Array(len=arg1.length, data=arg1[all])
}

function sub_524683d7(?) {
    require msg.sender == stor1
    require bool(uint8(stor6.field_0)) == 1
    Mask(248, 0, stor6.field_8) = 1
    emit 0xcffb9768: Array(len=arg1.length, data=arg1[all])
}



}
