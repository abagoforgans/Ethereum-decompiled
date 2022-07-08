contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor7;
uint256 goal;
address stor9;
mapping of struct balanceOf;

function rate() {
    return rate
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function finalized() {
    return bool(stor7)
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require stor7
    require weiRaised < goal
    require ext_code.size(stor9)
    call stor9.withdraw(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalize() {
    require not stor7
    require block.timestamp > closingTime
    stor7 = 1
    require ext_code.size(stor9)
    if weiRaised < goal:
        call stor9.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor9.close() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor9)
        call stor9.beneficiaryWithdraw() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function _fallback() payable {
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require balanceOf[address(msg.sender)].field_0 + (msg.value * rate) >= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 += msg.value * rate
    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, msg.sender);
    require ext_code.size(stor9)
    call stor9.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require balanceOf[address(arg1)].field_0 + (msg.value * rate) >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += msg.value * rate
    emit TokensPurchased(msg.value, msg.value * rate, msg.sender, arg1);
    require ext_code.size(stor9)
    call stor9.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require stor7
    require weiRaised >= goal
    require block.timestamp > closingTime
    require balanceOf[address(arg1)].field_0 > 0
    balanceOf[address(arg1)].field_0 = 0
    require ext_code.size(tokenAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, balanceOf[address(arg1)].field_32
    call tokenAddress with:
         gas gas_remaining wei
        args balanceOf[address(arg1)].field_0, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
}



}
