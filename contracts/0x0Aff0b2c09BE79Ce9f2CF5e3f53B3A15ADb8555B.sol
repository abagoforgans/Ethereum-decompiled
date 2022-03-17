contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'Chandra Kumar' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = '@klmoney8' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 7
    stor2.length.field_8 = 'klmoney' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 1955
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'Malaysia' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[995 len 542]
}



// =====================  Runtime code  =====================


array of uint256 myName;
address stor5;

function myName() payable {
    return myName[0 len myName.length]
}

function kill() payable {
    if stor5 != msg.sender:
    selfdestruct(stor5)
}

function _fallback() payable {
  stop
}



}
