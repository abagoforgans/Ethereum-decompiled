contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 15
    stor3.length.field_8 = 'Johan Pretorius' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'zaphod.beeblebrox.42.sa@gmail.co'
    mem[224] = 'm'
    stor4.length = 67
    s = 0
    idx = 192
    while 225 > idx:
        stor4[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor4.length + 31 / 32 > idx:
        stor4[idx] = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 13
    stor5.length.field_8 = '8205215089084' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 1
    require not msg.value
    stor0 = msg.sender
    return code.data[560 len 2071]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_6e1dac79;
array of uint256 sub_811f06d8;
array of uint256 ownerName;
array of uint256 sub_28ef8705;
array of uint256 sub_d924100e;
uint8 stor6;

function active() {
    return bool(stor6)
}

function sub_28ef8705(?) {
    return sub_28ef8705[0 len sub_28ef8705.length]
}

function ownerName() {
    return ownerName[0 len ownerName.length]
}

function sub_6e1dac79(?) {
    return sub_6e1dac79
}

function sub_811f06d8(?) {
    return sub_811f06d8[0 len sub_811f06d8.length]
}

function owner() {
    return owner
}

function sub_d924100e(?) {
    return sub_d924100e[0 len sub_d924100e.length]
}

function _fallback() payable {
    revert
}

function sub_f3b37145(?) {
    require msg.sender == owner
    require stor6
    sub_6e1dac79 = block.timestamp
    sub_811f06d8[] = Array(len=arg1.length, data=arg1[all])
    stor6 = 0
}



}
