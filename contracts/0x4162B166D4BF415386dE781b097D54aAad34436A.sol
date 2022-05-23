contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
address stor1;
uint256 nonce;

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function get() {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
