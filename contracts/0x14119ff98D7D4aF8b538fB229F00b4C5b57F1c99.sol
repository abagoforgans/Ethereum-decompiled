contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalDividends;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 claimedDividendsOf;
address tokenAddress;

function owner() {
    return owner
}

function totalDividends() {
    return totalDividends
}

function claimedDividendsOf(address arg1) {
    return claimedDividendsOf[address(arg1)]
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function hasDividends() {
    if totalDividends <= 0:
        return (totalDividends > 0)
    return (eth.balance(this.address) > 0)
}

function putProfit() payable {
    require totalDividends + msg.value >= totalDividends
    totalDividends += msg.value
    emit Dividends(msg.value);
}

function _fallback() payable {
    require totalDividends + msg.value >= totalDividends
    totalDividends += msg.value
    emit Dividends(msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    require stor2[address(arg1)] <= totalDividends
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            return ((0 / ext_call.return_data[0]) + stor3[address(arg1)])
    else:
        if ext_call.return_data[0]:
            if (totalDividends * ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - stor2[address(arg1)]:
                if ext_call.return_data[0]:
                    return (((totalDividends * ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(arg1)])
    revert
}

function saveUnclaimedDividends(address arg1) {
    require msg.sender == tokenAddress
    if totalDividends > stor2[address(arg1)]:
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
        require stor2[address(arg1)] <= totalDividends
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            stor3[address(arg1)] += 0 / ext_call.return_data[0]
        else:
            require (totalDividends * ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - stor2[address(arg1)]
            require ext_call.return_data[0]
            stor3[address(arg1)] += (totalDividends * ext_call.return_data[0]) - (stor2[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
        stor2[address(arg1)] = totalDividends
}

function claimDividends() {
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
    require stor2[address(msg.sender)] <= totalDividends
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require (0 / ext_call.return_data[0]) + stor3[address(msg.sender)] > 0
        stor2[address(msg.sender)] = totalDividends
        stor3[address(msg.sender)] = 0
        require claimedDividendsOf[address(msg.sender)] + (0 / ext_call.return_data[0]) + stor3[address(msg.sender)] >= claimedDividendsOf[address(msg.sender)]
        claimedDividendsOf[address(msg.sender)] = claimedDividendsOf[address(msg.sender)] + (0 / ext_call.return_data[0]) + stor3[address(msg.sender)]
        call msg.sender with:
           value (0 / ext_call.return_data[0]) + stor3[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DividendsClaimed(msg.sender, (0 / ext_call.return_data[0]) + stor3[address(msg.sender)]);
        return ((0 / ext_call.return_data[0]) + stor3[address(msg.sender)])
    require (totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] == totalDividends - stor2[address(msg.sender)]
    require ext_call.return_data[0]
    require ((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)] > 0
    stor2[address(msg.sender)] = totalDividends
    stor3[address(msg.sender)] = 0
    require claimedDividendsOf[address(msg.sender)] + ((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)] >= claimedDividendsOf[address(msg.sender)]
    claimedDividendsOf[address(msg.sender)] = claimedDividendsOf[address(msg.sender)] + ((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)]
    call msg.sender with:
       value ((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DividendsClaimed(msg.sender, ((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)]);
    return (((totalDividends * ext_call.return_data[0]) - (stor2[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0]) + stor3[address(msg.sender)])
}



}
