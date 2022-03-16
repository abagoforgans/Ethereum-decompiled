contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[162 len 743]
}



// =====================  Runtime code  =====================


address stor0;
uint256 sub_9729d0ef;
uint128 stor2;
uint256 stor2; offset 72
uint256 sub_f8cdfbf8;
uint64 stor3;
uint128 stor3; offset 184
uint256 stor3;
uint256 digit;
uint64 stor4;
uint128 stor4; offset 64
address sub_a034cdacAddress;

function getDigit() payable {
    return digit
}

function sub_9729d0ef(?) payable {
    return sub_9729d0ef
}

function sub_a034cdac(?) payable {
    return sub_a034cdacAddress
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

function sub_5ab59312(?) payable {
    Mask(72, 0, stor2.field_0) = Mask(72, 0, arg1)
    Mask(184, 0, stor2.field_72) = 0
    Mask(184, 0, stor3.field_0) = Mask(184, 72, address(arg1) - sub_9729d0ef - sub_f8cdfbf8) >> 72
    Mask(72, 0, stor3.field_184) = 0
    uint64(stor4.field_0) = uint64(stor3.field_0)
    Mask(96, 0, stor4.field_64) = 0
    sub_9729d0ef = address(arg1) - sub_f8cdfbf8
}



}
