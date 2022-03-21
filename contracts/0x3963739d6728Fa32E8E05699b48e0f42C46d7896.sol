contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 1704]
}



// =====================  Runtime code  =====================


address stor0;
array of struct paymentBy;
mapping of address sub_f3730653;

function getPaymentByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_256
}

function getPaymentDataByAddress(address arg1) payable {
    return paymentBy[address(arg1)][2][0 len paymentBy[address(arg1)][2].length].field_0
}

function getPhoneByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_0
}

function sub_f3730653(?) payable {
    return sub_f3730653[arg1]
}

function kill() payable {
    require msg.sender == stor0
}

function sendEtherToOwner() payable {
    require msg.sender == stor0
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
}

function hasPhone(address arg1) payable {
    if not paymentBy[address(arg1)].field_0:
        return 0
    return 1
}

function _fallback() payable {
    paymentBy[address(msg.sender)].field_0 = 0
    paymentBy[address(msg.sender)].field_256 = msg.value / 10^17
    paymentBy[address(msg.sender)][2][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
}



}
