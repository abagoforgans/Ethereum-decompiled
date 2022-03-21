contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    return code.data[42 len 1274]
}



// =====================  Runtime code  =====================


uint256 sub_fc0d92bd;
uint256 sub_52295723;
mapping of struct paymentBy;
mapping of address sub_f3730653;

function sub_03679666(?) payable {
    return address(sub_f3730653[arg1])
}

function getPaymentByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_256
}

function sub_422f963c(?) payable {
    return sub_52295723
}

function sub_52295723(?) payable {
    return sub_52295723
}

function addresses(address arg1) payable {
    return paymentBy[arg1].field_0, paymentBy[arg1].field_256
}

function getPhoneByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_0
}

function sub_f3730653(?) payable {
    return address(sub_f3730653[arg1])
}

function sub_fa6af355(?) payable {
    return sub_fc0d92bd
}

function sub_fc0d92bd(?) payable {
    return sub_fc0d92bd
}

function _fallback() payable {
    paymentBy[address(msg.sender)].field_0 = 0
    paymentBy[address(msg.sender)].field_256 = msg.value / 10^17
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    paymentBy[address(arg1)].field_0 = arg2
    paymentBy[address(arg1)].field_256 = 0
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
    sub_fc0d92bd++
}



}
