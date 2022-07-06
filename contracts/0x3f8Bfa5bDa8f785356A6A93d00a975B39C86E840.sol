contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    if stor0 != msg.sender:
        revert with 0, 'Only FB can call this function'
    selfdestruct(stor0)
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only FB or MF can call this function'
    if arg1 > 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum amount for withdrawals are 0.1 ETH'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient balance for withdrawal request'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(arg1, msg.sender);
}



}
