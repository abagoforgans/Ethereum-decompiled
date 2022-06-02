contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 deposit;

function deposit() {
    return deposit
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    deposit = deposit + msg.value - 5 * 10^15
    call adminAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
