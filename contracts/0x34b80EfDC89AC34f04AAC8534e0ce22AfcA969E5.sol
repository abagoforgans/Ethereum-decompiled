contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2480]
}



// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of struct paymentBy;
mapping of address sub_21a3e507;

function getPaymentByAddress(address arg1) payable {
    return paymentBy[address(arg1)].field_256
}

function sub_21a3e507(?) payable {
    return address(sub_21a3e507[arg1[all]])
}

function sub_69609b97(?) payable {
    return paymentBy[address(arg1)][0 len paymentBy[address(arg1)].length].field_0
}

function getPaymentDataByAddress(address arg1) payable {
    return paymentBy[address(arg1)][2][0 len paymentBy[address(arg1)][2].length].field_0
}

function kill() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
}

function sendEtherToOwner() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function _fallback() payable {
    paymentBy[address(msg.sender)].field_0 = 0
    paymentBy[address(msg.sender)].field_1 = 0
    paymentBy[address(msg.sender)].field_8 = calldata.size / 256
    idx = 0
    while paymentBy[address(msg.sender)].length + 31 / 32 > idx:
        paymentBy[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
    paymentBy[address(msg.sender)].field_256 = msg.value / 10^17
    paymentBy[address(msg.sender)][2][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
}

function sub_cf6083ab(?) payable {
    if msg.sender == stor0:
        mem[ceil32(arg2.length) + 256] = uint256(stor1.field_0)
        idx = ceil32(arg2.length) + 256
        s = 0
        while ceil32(arg2.length) + stor1.length + 224 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        paymentBy[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
        paymentBy[address(arg1)].field_256 = 0
        paymentBy[address(arg1)][2][].field_0 = Array(len=stor1.length, data=mem[ceil32(arg2.length) + 256 len stor1.length])
        uint256(sub_21a3e507[arg2[all]]) = arg1 or Mask(96, 160, uint256(sub_21a3e507[arg2[all]]))
}

function sub_e30a323d(?) payable {
    mem[128] = paymentBy[address(arg1)].field_0
    idx = 128
    s = 0
    while paymentBy[address(arg1)].length + 96 > idx:
        mem[idx + 32] = paymentBy[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(paymentBy[address(arg1)].length) + 128] = 0
    mem[ceil32(paymentBy[address(arg1)].length) + 160] = 0
    mem[ceil32(paymentBy[address(arg1)].length) + 192] = 0
    if paymentBy[address(arg1)].length:
        return 1
    idx = 0
    while idx < paymentBy[address(arg1)].length:
        require idx < 0
        require idx < paymentBy[address(arg1)].length
        if Mask(8, 248, mem[idx + 128]) == Mask(8, 248, mem[ceil32(paymentBy[address(arg1)].length) + idx + 160]):
            idx = idx + 1
            continue 
        return 1
    return 0
}



}
