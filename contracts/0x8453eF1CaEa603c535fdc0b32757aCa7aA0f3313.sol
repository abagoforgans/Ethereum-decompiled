contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1871]




// =====================  Runtime code  =====================


array of struct stor0;
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
    return address(sub_f3730653[arg1])
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

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    mem[224] = uint256(stor0.field_0)
    idx = 224
    s = 0
    while stor0.length + 192 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    paymentBy[address(arg1)].field_0 = arg2
    paymentBy[address(arg1)].field_256 = 0
    paymentBy[address(arg1)][2][].field_0 = Array(len=stor0.length, data=mem[224 len stor0.length])
    uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
}



}
