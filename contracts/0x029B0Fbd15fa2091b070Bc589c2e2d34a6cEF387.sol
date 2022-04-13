contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[6311 len 20]
    require code.data[6331 len 32]
    require code.data[6363 len 32]
    require code.data[6395 len 32]
    stor7 = code.data[6363 len 32]
    stor8 = code.data[6395 len 32]
    stor9 = code.data[6427 len 32]
    stor6 = code.data[6331 len 32]
    return code.data[298 len 6001]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 investorCount;
uint256 weiRaisedTotal;
array of address investors;
mapping of uint256 balances;
mapping of uint256 claimed;
uint256 freezeEndsAt;
uint256 weiMinimumLimit;
uint256 weiMaximumLimit;
uint256 weiCap;
uint256 tokensBought;
uint256 claimCount;
uint256 totalClaimed;
address crowdsaleAddress;

function weiMinimumLimit() {
    return weiMinimumLimit
}

function balances(address arg1) {
    return balances[arg1]
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function freezeEndsAt() {
    return freezeEndsAt
}

function tokensBought() {
    return tokensBought
}

function weiCap() {
    return weiCap
}

function claimCount() {
    return claimCount
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function weiMaximumLimit() {
    return weiMaximumLimit
}

function weiRaisedTotal() {
    return weiRaisedTotal
}

function halted() {
    return bool(uint8(stor0.field_160))
}

function claimed(address arg1) {
    return claimed[arg1]
}

function totalClaimed() {
    return totalClaimed
}

function investorCount() {
    return investorCount
}

function _fallback() payable {
    revert 
}

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function getState() {
    if tokensBought:
        return 2
    if block.timestamp < freezeEndsAt:
        return 1
    return 3
}

function getToken() {
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    crowdsaleAddress = arg1
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.isCrowdsale() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function getClaimAmount(address arg1) {
    require tokensBought
    if balances[address(arg1)]:
        require balances[address(arg1)]
        require balances[address(arg1)] * tokensBought / balances[address(arg1)] == tokensBought
    require weiRaisedTotal
    return (balances[address(arg1)] * tokensBought / weiRaisedTotal)
}

function refund() {
    require not uint8(stor0.field_160)
    require not tokensBought
    require block.timestamp >= freezeEndsAt
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function getClaimLeft(address arg1) {
    require tokensBought
    if not balances[address(arg1)]:
        if weiRaisedTotal:
            if claimed[address(arg1)] <= balances[address(arg1)] * tokensBought / weiRaisedTotal:
                return ((balances[address(arg1)] * tokensBought / weiRaisedTotal) - claimed[address(arg1)])
    else:
        if balances[address(arg1)]:
            if balances[address(arg1)] * tokensBought / balances[address(arg1)] == tokensBought:
                if weiRaisedTotal:
                    if claimed[address(arg1)] <= balances[address(arg1)] * tokensBought / weiRaisedTotal:
                        return ((balances[address(arg1)] * tokensBought / weiRaisedTotal) - claimed[address(arg1)])
    revert 
}

function buyForEverybody() {
    require not uint8(stor0.field_160)
    require not tokensBought
    require block.timestamp < freezeEndsAt
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.invest(address rg1) with:
       value weiRaisedTotal wei
         gas gas_remaining - 9050 wei
        args this.address
    require ext_call.success
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    tokensBought = ext_call.return_data[0]
    require tokensBought
    emit TokensBoughts(tokensBought);
}

function investWithoutId() payable {
    require not uint8(stor0.field_160)
    require not tokensBought
    require block.timestamp < freezeEndsAt
    require msg.value
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    require balances[address(msg.sender)] + msg.value >= msg.value
    balances[address(msg.sender)] += msg.value
    require balances[address(msg.sender)] >= weiMinimumLimit
    require balances[address(msg.sender)] <= weiMaximumLimit
    if balances[address(msg.sender)] <= 0:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        investorCount++
    require weiRaisedTotal + msg.value >= weiRaisedTotal
    require weiRaisedTotal + msg.value >= msg.value
    weiRaisedTotal += msg.value
    require weiRaisedTotal <= weiCap
    emit Invested(msg.sender, msg.value, 0);
}

function investWithId(uint128 arg1) payable {
    require not uint8(stor0.field_160)
    require not tokensBought
    require block.timestamp < freezeEndsAt
    require msg.value
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    require balances[address(msg.sender)] + msg.value >= msg.value
    balances[address(msg.sender)] += msg.value
    require balances[address(msg.sender)] >= weiMinimumLimit
    require balances[address(msg.sender)] <= weiMaximumLimit
    if balances[address(msg.sender)] <= 0:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        investorCount++
    require weiRaisedTotal + msg.value >= weiRaisedTotal
    require weiRaisedTotal + msg.value >= msg.value
    weiRaisedTotal += msg.value
    require weiRaisedTotal <= weiCap
    emit Invested(msg.sender, msg.value, arg1);
}

function claim(uint256 arg1) {
    require not uint8(stor0.field_160)
    require arg1
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * tokensBought / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= balances[address(msg.sender)] * tokensBought / weiRaisedTotal
    require (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)] >= arg1
    if not claimed[address(msg.sender)]:
        claimCount++
    require claimed[address(msg.sender)] + arg1 >= claimed[address(msg.sender)]
    require claimed[address(msg.sender)] + arg1 >= arg1
    claimed[address(msg.sender)] += arg1
    require totalClaimed + arg1 >= totalClaimed
    require totalClaimed + arg1 >= arg1
    totalClaimed += arg1
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    emit Distributed(msg.sender, arg1);
}

function claimAll() {
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * tokensBought / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= balances[address(msg.sender)] * tokensBought / weiRaisedTotal
    require not uint8(stor0.field_160)
    require (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)]
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require balances[address(msg.sender)] * tokensBought / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= balances[address(msg.sender)] * tokensBought / weiRaisedTotal
    if not claimed[address(msg.sender)]:
        claimCount++
    require balances[address(msg.sender)] * tokensBought / weiRaisedTotal >= claimed[address(msg.sender)]
    require claimed[address(msg.sender)] >= 0
    claimed[address(msg.sender)] = balances[address(msg.sender)] * tokensBought / weiRaisedTotal
    require totalClaimed + (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)] >= totalClaimed
    require totalClaimed >= 0
    totalClaimed = totalClaimed + (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)]
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)]
    require ext_call.success
    emit Distributed(msg.sender, (balances[address(msg.sender)] * tokensBought / weiRaisedTotal) - claimed[address(msg.sender)]);
}



}
