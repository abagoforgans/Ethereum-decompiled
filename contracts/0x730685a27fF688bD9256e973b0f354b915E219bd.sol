contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_d597c081Address;

function sub_d597c081(?) {
    return sub_d597c081Address
}

function isMaster(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function renounceMaster() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit MasterRemoved(msg.sender);
}

function addMaster(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit MasterAdded(arg1);
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender
    require stor0[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    if arg2 > 0:
        emit Withdraw(arg2, arg1);
}

function _fallback() payable {
    require ext_code.size(sub_d597c081Address)
    call sub_d597c081Address.isAddressSet(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}



}
