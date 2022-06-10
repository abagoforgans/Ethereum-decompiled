contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 currentBalance;
uint256 totalBalance;
uint256 sub_f440f65d;

function totalBalance() {
    return totalBalance
}

function currentBalance() {
    return currentBalance
}

function sub_f440f65d(?) {
    return sub_f440f65d
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getSummary() {
    return adminAddress, currentBalance, totalBalance, sub_f440f65d
}

function donate() payable {
    require msg.value > 0
    currentBalance += msg.value
    totalBalance += msg.value
    sub_f440f65d++
}

function withdraw() {
    require msg.sender == adminAddress
    currentBalance = 0
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
