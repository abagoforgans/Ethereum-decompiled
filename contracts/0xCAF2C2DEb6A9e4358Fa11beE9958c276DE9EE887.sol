contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    return code.data[26 len 1314]
}



// =====================  Runtime code  =====================


uint256 sub_595d271b;
uint256 sub_8356b148;
array of struct stor2;
array of struct paymentBy;
mapping of address sub_f3730653;

function getPaymentByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_256
}

function sub_595d271b(?) payable {
    return sub_595d271b
}

function sub_8356b148(?) payable {
    return sub_8356b148
}

function getPaymentDataByAddress(address arg1) payable {
    return paymentBy[address(arg1)][2][0 len paymentBy[address(arg1)][2].length].field_0
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
    paymentBy[address(msg.sender)][2][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
    sub_595d271b++
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    mem[224] = uint256(stor2.field_0)
    idx = 224
    s = 0
    while stor2.length + 192 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    paymentBy[address(arg1)].field_0 = arg2
    paymentBy[address(arg1)].field_256 = 0
    paymentBy[address(arg1)][2][].field_0 = Array(len=stor2.length, data=mem[224 len stor2.length])
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
    sub_8356b148++
}



}
