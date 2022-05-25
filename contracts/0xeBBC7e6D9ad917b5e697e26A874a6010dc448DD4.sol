contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
uint256 totalDividends;
mapping of uint256 lastDividends;
mapping of uint256 unclaimedDividends;
mapping of uint256 claimedDividends;
address tokenAddress;

function unclaimedDividends(address arg1) {
    return unclaimedDividends[arg1]
}

function lastDividends(address arg1) {
    return lastDividends[arg1]
}

function claimedDividends(address arg1) {
    return claimedDividends[arg1]
}

function owner() {
    return owner
}

function totalDividends() {
    return totalDividends
}

function claimedDividendsOf(address arg1) {
    return claimedDividends[address(arg1)]
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function hasDividends() {
    if totalDividends <= 0:
        return (totalDividends > 0)
    return (eth.balance(this.address) > 0)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function putProfit() payable {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    require msg.value + totalDividends >= totalDividends
    totalDividends += msg.value
    emit Dividends(msg.value);
    stor0 = 0
}

function _fallback() payable {
    require not stor0
    stor0 = 1
    require 0 or owner == msg.sender
    require msg.value + totalDividends >= totalDividends
    totalDividends += msg.value
    emit Dividends(msg.value);
    stor0 = 0
}

function dividendBalanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require lastDividends[address(arg1)] <= totalDividends
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            return ((0 / ext_call.return_data[0]) + unclaimedDividends[address(arg1)])
    else:
        if (totalDividends * ext_call.return_data[0]) - (lastDividends[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - lastDividends[address(arg1)]:
            if ext_call.return_data[0]:
                return (((totalDividends * ext_call.return_data[0]) - (lastDividends[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(arg1)])
    revert
}

function saveUnclaimedDividends(address arg1) {
    require tokenAddress == msg.sender
    if totalDividends > lastDividends[address(arg1)]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require lastDividends[address(arg1)] <= totalDividends
        if not ext_call.return_data[0]:
            require ext_call.return_data[0]
            unclaimedDividends[address(arg1)] += 0 / ext_call.return_data[0]
        else:
            require (totalDividends * ext_call.return_data[0]) - (lastDividends[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - lastDividends[address(arg1)]
            require ext_call.return_data[0]
            unclaimedDividends[address(arg1)] += (totalDividends * ext_call.return_data[0]) - (lastDividends[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
        lastDividends[address(arg1)] = totalDividends
}

function claimDividends() {
    require not stor0
    stor0 = 1
    require eth.balance(this.address) > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require lastDividends[address(msg.sender)] <= totalDividends
    if not ext_call.return_data[0]:
        require ext_call.return_data[0]
        require (0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] > 0
        lastDividends[address(msg.sender)] = totalDividends
        unclaimedDividends[address(msg.sender)] = 0
        require (0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] + claimedDividends[address(msg.sender)] >= claimedDividends[address(msg.sender)]
        claimedDividends[address(msg.sender)] = (0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] + claimedDividends[address(msg.sender)]
        call msg.sender with:
           value (0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsClaimed(msg.sender, (0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)]);
        stor0 = 0
        return ((0 / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)])
    require (totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - lastDividends[address(msg.sender)]
    require ext_call.return_data[0]
    require ((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] > 0
    lastDividends[address(msg.sender)] = totalDividends
    unclaimedDividends[address(msg.sender)] = 0
    require ((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] + claimedDividends[address(msg.sender)] >= claimedDividends[address(msg.sender)]
    claimedDividends[address(msg.sender)] = ((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] + claimedDividends[address(msg.sender)]
    call msg.sender with:
       value ((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DividendsClaimed(msg.sender, ((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)]);
    stor0 = 0
    return (((totalDividends * ext_call.return_data[0]) - (lastDividends[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + unclaimedDividends[address(msg.sender)])
}



}
