contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
address stor1;
uint256 nonce;
uint256 sub_105189ce;
uint256 sub_dda9163b;
uint256 sub_2cb971f0;
uint256 sub_6c25303c;
uint256 sub_84e7b13f;
uint256 sub_e1f40ea5;
uint256 sub_dec29b52;

function sub_105189ce(?) {
    return sub_105189ce
}

function sub_2cb971f0(?) {
    return sub_2cb971f0
}

function sub_6c25303c(?) {
    return sub_6c25303c
}

function sub_84e7b13f(?) {
    return sub_84e7b13f
}

function nonce() {
    return nonce
}

function sub_dda9163b(?) {
    return sub_dda9163b
}

function sub_dec29b52(?) {
    return sub_dec29b52
}

function sub_e1f40ea5(?) {
    return sub_e1f40ea5
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
