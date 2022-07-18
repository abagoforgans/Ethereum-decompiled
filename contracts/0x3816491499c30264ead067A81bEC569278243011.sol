contract main {




// =====================  Runtime code  =====================


address parentAddress;
address adminAddress;
address sub_3ea26384Address;

function parentAddress() {
    return parentAddress
}

function sub_3ea26384(?) {
    return sub_3ea26384Address
}

function admin() {
    return adminAddress
}

function changeTarget(address arg1) {
    require msg.sender == adminAddress
    parentAddress = arg1
    emit 0x876c51b2: msg.sender, arg1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    sub_3ea26384Address = arg1
    emit newAdminAdded(msg.sender, arg1);
}

function acceptAdmin() {
    require msg.sender == sub_3ea26384Address
    adminAddress = sub_3ea26384Address
    sub_3ea26384Address = 0
    emit adminChanged(msg.sender);
}

function flush() {
    call parentAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    call parentAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ForwarderDeposited(address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]));
}

function flushTokens(address arg1) {
    require ext_code.size(arg1)
    call arg1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args parentAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
