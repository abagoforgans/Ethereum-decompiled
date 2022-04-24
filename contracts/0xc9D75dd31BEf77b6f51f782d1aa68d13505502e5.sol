contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 6227]
}



// =====================  Runtime code  =====================


#
#  - sub_cccb5545(?)
#
address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
