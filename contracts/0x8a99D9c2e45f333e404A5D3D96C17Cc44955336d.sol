contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[143 len 1470]
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
uint256 B0;
uint256 B1;
uint256 B2;
uint256 B3;

function getB3() payable {
    return B3
}

function sub_1086b1a3(?) payable {
    return sub_1086b1a3
}

function getB2() payable {
    return B2
}

function getB1() payable {
    return B1
}

function sub_59b85f94(?) payable {
    return sub_59b85f94
}

function getDigit() payable {
    return digit
}

function getB0() payable {
    return B0
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
    sub_1086b1a3 = 16777216
    sub_f8cdfbf8 = sub_59b85f94 % sub_1086b1a3
    sub_d6ec025a = sub_59b85f94 - sub_9729d0ef - sub_f8cdfbf8
    digit = sub_d6ec025a / sub_1086b1a3
    sub_9729d0ef = sub_59b85f94 - sub_f8cdfbf8
    B0 = digit
    sub_1086b1a3 = 65536
    sub_f8cdfbf8 = sub_59b85f94 % sub_1086b1a3
    sub_d6ec025a = sub_59b85f94 - sub_9729d0ef - sub_f8cdfbf8
    digit = sub_d6ec025a / sub_1086b1a3
    sub_9729d0ef = sub_59b85f94 - sub_f8cdfbf8
    B1 = digit
    sub_1086b1a3 = 256
    sub_f8cdfbf8 = sub_59b85f94 % sub_1086b1a3
    sub_d6ec025a = sub_59b85f94 - sub_9729d0ef - sub_f8cdfbf8
    digit = sub_d6ec025a / sub_1086b1a3
    sub_9729d0ef = sub_59b85f94 - sub_f8cdfbf8
    B2 = digit
    sub_1086b1a3 = 1
    sub_f8cdfbf8 = sub_59b85f94 % sub_1086b1a3
    sub_d6ec025a = sub_59b85f94 - sub_9729d0ef - sub_f8cdfbf8
    digit = sub_d6ec025a / sub_1086b1a3
    sub_9729d0ef = sub_59b85f94 - sub_f8cdfbf8
    B3 = digit
}



}
