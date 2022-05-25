contract main {




// =====================  Runtime code  =====================


address owner;
address vaultAddress;

function owner() {
    return owner
}

function vault() {
    return vaultAddress
}

function changeOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are NOT Authorized'
    owner = arg1
    return 1
}

function changeVaultAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'You are NOT Authorized'
    vaultAddress = arg1
    return 1
}

function _fallback() payable {
    call vaultAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferEther(msg.value, msg.sender, vaultAddress);
}

function drainTokens(uint256 arg1, address arg2, address arg3) {
    if owner != msg.sender:
        revert with 0, 'You are NOT Authorized'
    if arg1 <= 0:
        revert with 0, 'That's NOT a valid amount!'
    if not arg3:
        revert with 0, 'Invalid Address!'
    if not arg2:
        revert with 0, 'Invalid Token Contract Address!'
    require ext_code.size(arg2)
    if arg3:
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg1
    else:
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args vaultAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
