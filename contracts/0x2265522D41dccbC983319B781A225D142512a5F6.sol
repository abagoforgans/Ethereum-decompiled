contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1283 len 20]
    return code.data[188 len 1083]
}



// =====================  Runtime code  =====================


#
#  - sub_f18d1ca0(?)
#
address stor0;

function _fallback() payable {
  stop
}

function WithdrawBalance() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
