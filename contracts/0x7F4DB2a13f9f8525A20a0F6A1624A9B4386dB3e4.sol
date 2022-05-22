contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address adminAddress; offset 8
address tokenAddress;
mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAddress() {
    return tokenAddress
}

function isTokenLocked() {
    return bool(stor0)
}

function tokenBalance(address arg1) {
    return balanceOf[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() {
  stop
}

function unlock() {
    require msg.sender == adminAddress
    require stor0
    stor0 = 0
    return 1
}

function lock() {
    require msg.sender == adminAddress
    require not stor0
    stor0 = 1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
}

function moveToken(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit 0x5efaee30: tokenAddress, msg.sender, address(arg1), arg2
}

function withdrawToken(uint256 arg1) {
    require not stor0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit WithdrawToken(tokenAddress, msg.sender, arg1, balanceOf[address(msg.sender)]);
}

function depositToken(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + arg1 >= arg1
    balanceOf[address(msg.sender)] += arg1
    emit DepositToken(tokenAddress, msg.sender, arg1, balanceOf[address(msg.sender)]);
}



}
