contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
array of uint128 stor3;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            Mask(96, 0, stor3[idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor3[stor3.length]) = 4294967296000 * block.timestamp or Mask(160, 96, code.data[2039 len 32]) or Mask(160, 96, uint256(stor3[stor3.length])) or uint32(code.data[2039 len 32])
    Mask(96, 0, stor0.field_160) = Mask(96, 0, code.data[2135 len 32])
    stor1 = 0
    return code.data[327 len 1712]
}



// =====================  Runtime code  =====================


uint64 stor0; offset 160
address stor0;
uint64 stor1;
array of struct stor2;
array of struct stor3;
array of uint32 stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getNavLength() {
    return stor3.length
}

function getLength() {
    return stor2.length
}

function kill() {
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
    revert 
}

function getNavHistory(uint256 arg1) {
    require arg1 < stor3.length
    return stor3[arg1].field_0, stor3[arg1].field_0
}

function getHistory(uint256 arg1) {
    require arg1 < stor2.length
    return bool(stor2[arg1].field_0), stor2[arg1].field_0, stor2[arg1].field_0, stor2[arg1].field_0, stor2[arg1].field_112
}

function setNav(uint32 arg1) {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = arg1
    stor3[stor3.length].field_32 = 0
}

function get() {
    require stor3.length - 1 < stor3.length
    mem[480] = mem[507 len 5]
    return storC257[stor3.length], 
           stor3[stor3.length].field_0,
           256,
           address(stor0.field_0),
           stor1,
           0,
           stor1,
           uint64(stor0.field_160),
           5,
           '1.0.2',
           mem[485 len 27]
}

function sub_06a23f4e(?) {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[stor2.length].field_0 = Mask(112, 0, 281474976710656000 * block.timestamp)
    stor2[stor2.length].field_0 = arg1
    stor2[stor2.length].field_8 = arg2
    stor2[stor2.length].field_16 = arg3
    stor2[stor2.length].field_48 = 0
    stor2[stor2.length].field_112 = Mask(144, 0, arg4)
    stor2[stor2.length].field_144 = Mask(112, 144, 281474976710656000 * block.timestamp) >> 144
    stor2[stor2.length].field_144 = Mask(112, 128, arg3) >> 128
    stor2[stor2.length].field_144 = Mask(112, 136, arg2) >> 136
    stor2[stor2.length].field_144 = Mask(112, 144, arg1) >> 144
}



}
