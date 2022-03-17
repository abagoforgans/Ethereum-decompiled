contract main {


// =======================  Init code  ======================


uint64 stor0; offset 192
uint128 stor0; offset 160
address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 1000 * block.timestamp or Mask(192, 64, stor2)
    address(stor0.field_0) = msg.sender
    Mask(96, 0, stor0.field_160) = code.data[1606 len 12]
    uint64(stor0.field_192) = Mask(64, 192, msg.sender) >> 192
    return code.data[120 len 1466]
}



// =====================  Runtime code  =====================


uint32 stor0;
uint128 stor0; offset 160
address stor0;
array of struct stor1;
uint64 stor2;
uint256 stor2;
array of struct stor3;
array of uint8 stor39242276188594799690162040385371932227836366301296949569053664044882731168248;
array of uint64 stor39242276188594799690162040385371932227836366301296949569053664044882731168249;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function getLength() payable {
    return stor3.length
}

function kill() payable {
    selfdestruct(address(stor0.field_0))
}

function _fallback() payable {
  stop
}

function setNav(uint32 arg1) payable {
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
}

function getHistory(uint256 arg1) payable {
    require arg1 < stor3.length
    return address(stor56C2[arg1]), 
           uint8(stor56C2[arg1]),
           uint8(stor56C2[arg1]),
           uint32(stor56C2[arg1]),
           stor56C2[arg1],
           storC257[arg1]
}

function get() payable {
    mem[160] = uint256(stor1.field_0)
    idx = 160
    s = 0
    while stor1.length + 160 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return uint32(stor0.field_0), uint64(stor2), Array(len=stor1.length, data=mem[160 len stor1.length]), address(stor0.field_0)
}

function sub_fe2079c7(?) payable {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = arg1 or Mask(96, 160, stor3[stor3.length].field_0)
    stor3[stor3.length].field_160 = Mask(96, 0, arg2)
    stor3[stor3.length].field_168 = Mask(88, 0, arg3)
    stor3[stor3.length].field_176 = Mask(80, 0, arg4)
    stor3[stor3.length].field_256 = arg5 or Mask(192, 64, stor3[stor3.length].field_256)
    stor3[stor3.length].field_320 = Mask(192, 0, arg6)
}



}
