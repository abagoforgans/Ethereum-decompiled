contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
address adminAddress;
uint256 nonce;

function nonce() {
    return nonce
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
