contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 balance;

function balance() {
    return balance
}

function admin() {
    return adminAddress
}

function receive(uint256 arg1) {
    require msg.sender == adminAddress
    balance += arg1
}

function transfer(uint256 arg1) {
    require msg.sender == adminAddress
    require balance >= arg1
    balance -= arg1
}

function _fallback() payable {
    call adminAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance = balance + msg.value - 25 * 10^14
}



}
