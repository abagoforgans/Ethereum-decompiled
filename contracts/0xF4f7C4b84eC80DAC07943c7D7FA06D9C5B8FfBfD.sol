contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 345]




// =====================  Runtime code  =====================


mapping of struct paymentBy;
mapping of address sub_f3730653;

function getPaymentByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_256
}

function getPhoneByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_0
}

function sub_f3730653(?) payable {
    return address(sub_f3730653[arg1])
}

function _fallback() payable {
    paymentBy[address(msg.sender)].field_0 = 0
    paymentBy[address(msg.sender)].field_256 = msg.value / 10^17
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    paymentBy[address(arg1)].field_0 = arg2
    paymentBy[address(arg1)].field_256 = 0
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
}



}
