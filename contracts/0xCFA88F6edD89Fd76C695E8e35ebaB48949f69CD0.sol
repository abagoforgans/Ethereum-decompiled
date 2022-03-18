contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
uint64 stor0; offset 192
address stor0;
uint256 stor1;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint32(stor0.field_160) = code.data[1659 len 4]
    uint64(stor0.field_192) = uint64(code.data[1727 len 32])
    stor1 = 0
    return code.data[243 len 1388]
}



// =====================  Runtime code  =====================


uint32 stor0;
uint64 stor0;
uint128 stor0; offset 160
address stor0;
uint64 stor1;
uint256 stor1;
array of struct stor2;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint8 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of uint64 stor39012587308167444720038037897580552815671242007440487229414614828470849747803;

function getLength() payable {
    return stor2.length
}

function kill() payable {
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setNav(uint32 arg1) payable {
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    uint256(stor1) = 18446744073709551616000 * block.timestamp or Mask(128, 128, uint256(stor1)) or uint64(stor1)
}

function get() payable {
    return uint32(stor0.field_0), 
           uint64(stor1),
           256,
           address(stor0.field_0),
           uint64(stor1),
           0,
           uint64(stor1),
           uint64(stor0.field_0),
           5,
           1.0.0
}

function getHistory(uint256 arg1) payable {
    require arg1 < stor2.length
    return address(stor5640[arg1]), 
           uint8(stor5640[arg1]),
           uint8(stor5640[arg1]),
           uint32(stor5640[arg1]),
           stor5640[arg1],
           stor4057[arg1]
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
    stor2[stor2.length].field_0 = arg1 or Mask(96, 160, stor2[stor2.length].field_0)
    stor2[stor2.length].field_160 = Mask(96, 0, arg2)
    stor2[stor2.length].field_168 = Mask(88, 0, arg3)
    stor2[stor2.length].field_176 = Mask(80, 0, arg4)
    stor2[stor2.length].field_256 = arg5 or Mask(192, 64, stor2[stor2.length].field_256)
    stor2[stor2.length].field_320 = Mask(192, 0, arg6)
}



}
