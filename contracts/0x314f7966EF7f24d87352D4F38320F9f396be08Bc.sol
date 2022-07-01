contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address stor2;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function changeToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
    emit 0xe29e114b 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    emit LogForwarded(msg.value, msg.sender);
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    emit LogFlushed(eth.balance(this.address), msg.sender);
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd4f7a2b0: arg2, arg1
}



}
