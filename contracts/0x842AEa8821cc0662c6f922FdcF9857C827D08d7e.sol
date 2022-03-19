contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint32 stor1; offset 64
uint32 stor1; offset 96
uint256 stor1;
array of struct stor3;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = code.data[2209 len 32] or Mask(224, 32, stor3[stor3.length].field_0)
    stor3[stor3.length].field_32 = Mask(224, 0, 1000 * block.timestamp)
    uint32(stor1.field_64) = uint32(code.data[2241 len 32])
    uint32(stor1.field_96) = 0
    Mask(96, 0, stor0.field_160) = Mask(96, 0, code.data[2305 len 32])
    uint256(stor1.field_0) = code.data[2273 len 32] or Mask(192, 64, uint256(stor1.field_0))
    return code.data[364 len 1845]
}



// =====================  Runtime code  =====================


uint64 stor0; offset 160
address stor0;
uint64 stor1;
array of struct stor2;
array of struct stor3;
array of uint32 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint32 stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getNavLength() payable {
    return stor3.length
}

function getLength() payable {
    return stor2.length
}

function kill() payable {
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function getNavHistory(uint256 arg1) payable {
    require arg1 < stor3.length
    return stor3[arg1].field_0, stor3[arg1].field_0
}

function getHistory(uint256 arg1) payable {
    require arg1 < stor2.length
    return stor2[arg1].field_0, 
           stor2[arg1].field_0,
           stor2[arg1].field_0,
           stor2[arg1].field_0,
           stor2[arg1].field_256,
           stor4057[arg1]
}

function setNav(uint32 arg1) payable {
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

function get() payable {
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
           '1.0.1',
           mem[485 len 27]
}

function sub_fe2079c7(?) payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = 2 * stor2.length + 1
        while 2 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor2[stor2.length].field_0 = arg1
    stor2[stor2.length].field_160 = arg2
    stor2[stor2.length].field_168 = arg3
    stor2[stor2.length].field_176 = Mask(80, 0, arg4)
    stor2[stor2.length].field_208 = Mask(48, 208, arg1) >> 208
    stor2[stor2.length].field_208 = Mask(48, 48, arg2) >> 48
    stor2[stor2.length].field_208 = Mask(48, 40, arg3) >> 40
    stor2[stor2.length].field_256 = arg5
    stor2[stor2.length].field_320 = Mask(192, 0, arg6)
    stor2[stor2.length].field_352 = Mask(160, 96, arg5) >> 96
}



}
