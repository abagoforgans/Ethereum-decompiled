contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 2371]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
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

function kill() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
}

function hasPhone(address arg1) payable {
    if not paymentBy[address(arg1)].field_0:
        return 0
    return 1
}

function sendEtherToOwner() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function _fallback() payable {
    paymentBy[address(msg.sender)].field_0 = 0
    paymentBy[address(msg.sender)].field_256 = msg.value / 10^17
    paymentBy[address(msg.sender)][2][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
}

function newPhoneToAddr(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        mem[224] = uint256(stor1.field_0)
        idx = 224
        s = 0
        while stor1.length + 192 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        paymentBy[address(arg1)].field_0 = arg2
        paymentBy[address(arg1)].field_256 = 0
        paymentBy[address(arg1)][2][].field_0 = Array(len=stor1.length, data=mem[224 len stor1.length])
        uint256(sub_f3730653[arg2]) = arg1 or Mask(96, 160, uint256(sub_f3730653[arg2]))
}



}
