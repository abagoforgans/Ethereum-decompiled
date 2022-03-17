contract main {


// =======================  Init code  ======================


uint32 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[49 len 1511]
}



// =====================  Runtime code  =====================


const sub_599ebffb(?) = 205

const wave = Array(len=34, data='Yay yay yay, a kidney cert ledge', Mask(16, 240, 'r!') >> 240, mem[320])


uint32 stor0;
uint256 stor0;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of address stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint8 stor8;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778990;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778994;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944778997;
uint256 storB10E;

function getListLength() payable {
    return stor1.length
}

function remove() payable {
    if address(stor2.length) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_920dc905(?) payable {
    if 0 == stor1.length:
        return 100
    if stor1.length < arg1:
        return 100
    require arg1 - 1 < stor1.length
    return storB10E[arg1]
}

function sub_3bffe0a3(?) payable {
    require arg1 - 1 < stor1.length
    if 0 >= stor1.length:
        return 0
    if 0 == storB10E[arg1]:
        return 0
    if 0 == stor8[code.data[1479 len 32]]:
        return 0
    if uint256(stor[code.data[1479 len 32] + (9 * arg1) - 5]) - uint256(stor2[code.data[1479 len 32]]) > 5:
        return 0
    if stor4[code.data[1479 len 32]] - uint256(stor[code.data[1479 len 32] + (9 * arg1) - 7]) > 5:
        return 0
    require 0 < stor1.length
    return storB10E
}

function sub_8d1eca9f(?) payable {
    require arg1 - 1 < stor1.length
    if msg.sender == storB10E[arg1]:
        if arg2:
            uint256(stor[code.data[1479 len 32] + (9 * arg1) - 7]) = arg2
        if arg3:
            uint256(stor[code.data[1479 len 32] + (9 * arg1) - 5]) = arg3
        if arg4:
            uint256(stor[code.data[1479 len 32] + (9 * arg1) - 2]) = arg4
        uint256(stor[code.data[1479 len 32] + (9 * arg1) - 1]) = arg5 or Mask(248, 8, uint256(stor[code.data[1479 len 32] + (9 * arg1) - 1]))
}

function sub_9c3a4973(?) payable {
    uint32(stor0) = uint32(('signextend', 3, ('type', 256, ('stor', ('name', 'stor0', 0)))) + 1)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (9 * stor1.length) + code.data[1479 len 32] + 9
        while code.data[1479 len 32] + (9 * stor1.length) > idx:
            uint32(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            uint256(stor2[idx]) = 0
            stor3[idx] = 0
            stor4[idx] = 0
            stor5[idx] = 0
            stor6[idx] = 0
            stor7[idx] = 0
            stor8[idx] = 0
            idx = idx + 1
            continue 
    uint32(stor1[stor1.length].field_0) = uint32(('signextend', 3, ('type', 256, ('stor', ('name', 'stor0', 0)))))
    uint256(stor1[stor1.length].field_256) = arg1
    uint256(stor1[stor1.length].field_512) = arg2
    uint256(stor1[stor1.length].field_768) = arg3
    uint256(stor1[stor1.length].field_1024) = arg4
    uint256(stor1[stor1.length].field_1280) = msg.sender or Mask(96, 160, uint256(stor1[stor1.length].field_1280))
    uint256(stor1[stor1.length].field_1536) = arg5
    uint256(stor1[stor1.length].field_1792) = arg6
    uint8(stor1[stor1.length].field_2048) = 1
}



}
