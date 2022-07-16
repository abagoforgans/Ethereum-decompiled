contract main {




// =====================  Runtime code  =====================


address owner;
address transferAgentAddress;

function transferAgent() {
    return transferAgentAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    emit DepositETH(msg.sender, msg.value);
}

function setAgent(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are NOT Authorized'
    require arg1
    transferAgentAddress = arg1
    return 0
}

function sub_2e50b45b(?) {
    if transferAgentAddress != msg.sender:
        revert with 0, 'You are Not Authorized'
    require arg1
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferETH(address(this.address), address(arg1), arg2);
    return 1
}

function sub_45318a1e(?) {
    if transferAgentAddress != msg.sender:
        revert with 0, 'You are Not Authorized'
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb60f7fb6: address(arg1), address(this.address), address(arg2), arg3
    return 0
}

function ERC20Transfer(address arg1, address arg2, uint256 arg3) {
    if transferAgentAddress != msg.sender:
        revert with 0, 'You are Not Authorized'
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xb60f7fb6: address(arg1), address(this.address), address(arg2), arg3
    return 0
}



}
