contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x2101ba900918345003585b0a17de91570609d706
    return code.data[182 len 926]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function self() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function run() {
    call stor1 with:
       funct Mask(32, 224, sha3('checkIfFundingCompleteOrExpired(', ')')) >> 224
         gas gas_remaining - 25710 wei
    call stor1 with:
       funct Mask(32, 224, sha3('removeContract()')) >> 224
         gas gas_remaining - 25710 wei
}



}
