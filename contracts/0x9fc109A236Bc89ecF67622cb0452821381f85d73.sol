contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[111 len 821]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_9729d0ef;
uint256 sub_f8cdfbf8;
uint256 digit;
uint256 sub_1086b1a3;
uint32 stor5;
uint256 stor5; offset 32
uint256 sub_59b85f94;
uint256 sub_d6ec025a;

function sub_1086b1a3(?) payable {
    return sub_1086b1a3
}

function sub_59b85f94(?) payable {
    return sub_59b85f94
}

function getDigit() payable {
    return digit
}

function sub_9729d0ef(?) payable {
    return sub_9729d0ef
}

function sub_d6ec025a(?) payable {
    return sub_d6ec025a
}

function sub_f8cdfbf8(?) payable {
    return sub_f8cdfbf8
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_28b6f861(?) payable {
    uint32(stor5.field_0) = arg1
    Mask(224, 0, stor5.field_32) = 0
    idx = 0
    while idx < 8:
        sub_1086b1a3 = 16^(-idx + 6)
        sub_f8cdfbf8 = sub_59b85f94 % sub_1086b1a3
        sub_d6ec025a = sub_59b85f94 - sub_9729d0ef - sub_f8cdfbf8
        digit = sub_d6ec025a / sub_1086b1a3
        sub_9729d0ef = sub_59b85f94 - sub_f8cdfbf8
        idx = idx + 2
        continue 
}



}
