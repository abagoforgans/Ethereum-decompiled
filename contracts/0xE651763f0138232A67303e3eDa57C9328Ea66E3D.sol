contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 stor2;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 cap;
uint8 stor10;
uint256 goal;
address stor12;
mapping of uint256 balanceOf;

function rate() {
    return rate
}

function cap() {
    return cap
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
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
    return balanceOf[address(arg1)]
}

function finalized() {
    return bool(stor10)
}

function openingTime() {
    return openingTime
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
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

function renounceWhitelisted() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit WhitelistedRemoved(msg.sender);
}

function renounceWhitelistAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit WhitelistedAdded(arg1);
}

function removeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit WhitelistedRemoved(arg1);
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require stor10
    require weiRaised < goal
    require ext_code.size(stor12)
    call stor12.withdraw(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require stor10
    require weiRaised >= goal
    require block.timestamp > closingTime
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require weiRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)] * cap / weiRaised
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function finalize() {
    require not stor10
    require block.timestamp > closingTime
    stor10 = 1
    require ext_code.size(stor12)
    if weiRaised < goal:
        call stor12.enableRefunds() with:
             gas gas_remaining wei
    else:
        call stor12.0x43d726d6 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        call stor12.beneficiaryWithdraw() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CrowdsaleFinalized()
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor2++
    require msg.value >= 4 * 10^16
    require arg1
    require stor1[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (rate * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += rate * msg.value
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}

function _fallback() payable {
    stor2++
    require msg.value >= 4 * 10^16
    require msg.sender
    require stor1[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += rate * msg.value
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    require ext_code.size(stor12)
    call stor12.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2 + 1 == stor2
}



}
