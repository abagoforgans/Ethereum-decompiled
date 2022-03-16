contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor6 = 2
    stor10 = 2
    stor14 = 2
    stor8 = 0
    stor12 = 1
    stor13 = 0
    stor11 = 1
    stor9 = 0
    stor7 = 1
    stor4 = 0
    return code.data[464 len 1296]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5; offset 1
uint256 stor5;

function _fallback() payable {
  stop
}

function sub_08ab2167(?) payable {
    return eth.balance(stor0), eth.balance(stor2)
}

function sub_f7c0b66e(?) payable {
    if stor4 >= 2:
        return -1
    if 1000 != msg.value:
        return -1
    uint256(stor5.field_0) += msg.value
    require stor4 < 2
    stor[2 * stor4] = msg.sender or Mask(96, 160, stor[2 * stor4])
    stor1[stor4] = arg1
    stor4++
    return 0
}

function check() payable {
    require stor1.length < 3
    require stor3 < 3
    if not stor[stor3 + (3 * stor1.length) + 6]:
        call stor0 with:
           value uint256(stor5.field_0) wei
             gas 0 wei
        return 0
    require stor1.length < 3
    require stor3 < 3
    if stor[stor3 + (3 * stor1.length) + 6] == 1:
        call stor2 with:
           value uint256(stor5.field_0) wei
             gas 0 wei
        return 1
    call stor0 with:
       value uint255(stor5.field_1) wei
         gas 0 wei
    call stor2 with:
       value uint255(stor5.field_1) wei
         gas 0 wei
    return 2
}



}
