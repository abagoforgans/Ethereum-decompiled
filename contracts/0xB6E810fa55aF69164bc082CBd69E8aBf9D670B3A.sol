contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address adminAddress;
address admin_walletAddress;

function admin_wallet() {
    return admin_walletAddress
}

function admin() {
    return adminAddress
}

function sub_4117d34e(?) {
    require msg.sender == adminAddress
    selfdestruct(arg1)
}

function _fallback() payable {
    call admin_walletAddress with:
       value 25 * 10^14 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c73c2691(?) {
    require msg.sender == adminAddress
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fd65371f(?) {
    require msg.sender == adminAddress
    call admin_walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require msg.sender == adminAddress
    call admin_walletAddress with:
       value 25 * 10^14 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
