contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4049 len 20]
    require code.data[4069 len 32]
    require code.data[4101 len 32]
    require code.data[4133 len 32]
    stor7 = code.data[4101 len 32]
    stor8 = code.data[4133 len 32]
    stor9 = code.data[4165 len 32]
    stor6 = code.data[4069 len 32]
    return code.data[188 len 3849]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
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
    return bool(stor0)
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
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getState() {
    if tokensBought != 0:
        return 2
    if block.timestamp < freezeEndsAt:
        return 1
    return 3
}

function setCrowdsale(address arg1) {
    require owner == msg.sender
    crowdsaleAddress = arg1
    require ext_code.size(arg1)
    call arg1.isCrowdsale() with:
         gas gas_remaining - 50 wei
    require ext_call.success
}

function getToken() {
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.token() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getClaimAmount(address arg1) {
    require tokensBought != 0
    if balances[address(arg1)]:
        require tokensBought * balances[address(arg1)] / balances[address(arg1)] == tokensBought
    require weiRaisedTotal
    return (tokensBought * balances[address(arg1)] / weiRaisedTotal)
}

function refund() {
    require not stor0
    require 0 == tokensBought
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
    require tokensBought != 0
    if not balances[address(arg1)]:
        if weiRaisedTotal:
            if claimed[address(arg1)] <= tokensBought * balances[address(arg1)] / weiRaisedTotal:
                return ((tokensBought * balances[address(arg1)] / weiRaisedTotal) - claimed[address(arg1)])
    else:
        if tokensBought * balances[address(arg1)] / balances[address(arg1)] == tokensBought:
            if weiRaisedTotal:
                if claimed[address(arg1)] <= tokensBought * balances[address(arg1)] / weiRaisedTotal:
                    return ((tokensBought * balances[address(arg1)] / weiRaisedTotal) - claimed[address(arg1)])
    revert 
}

function buyForEverybody() {
    require not stor0
    require 0 == tokensBought
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
    call crowdsaleAddress.token() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    tokensBought = ext_call.return_data[0]
    require ext_call.return_data[0]
    emit TokensBoughts(tokensBought);
}

function investWithoutId() payable {
    require not stor0
    require 0 == tokensBought
    require block.timestamp < freezeEndsAt
    require msg.value
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] >= msg.value
    balances[address(msg.sender)] += msg.value
    require msg.value + balances[address(msg.sender)] >= weiMinimumLimit
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
    require msg.value + weiRaisedTotal >= weiRaisedTotal
    require msg.value + weiRaisedTotal >= msg.value
    weiRaisedTotal += msg.value
    require msg.value + weiRaisedTotal <= weiCap
    emit Invested(msg.sender, msg.value, 0);
}

function investWithId(uint128 arg1) payable {
    require not stor0
    require 0 == tokensBought
    require block.timestamp < freezeEndsAt
    require msg.value
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require msg.value + balances[address(msg.sender)] >= msg.value
    balances[address(msg.sender)] += msg.value
    require msg.value + balances[address(msg.sender)] >= weiMinimumLimit
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
    require msg.value + weiRaisedTotal >= weiRaisedTotal
    require msg.value + weiRaisedTotal >= msg.value
    weiRaisedTotal += msg.value
    require msg.value + weiRaisedTotal <= weiCap
    emit Invested(msg.sender, msg.value, arg1);
}

function claim(uint256 arg1) {
    require not stor0
    require arg1
    require tokensBought != 0
    if balances[address(msg.sender)]:
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaisedTotal
    require (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)] >= arg1
    if not claimed[address(msg.sender)]:
        claimCount++
    require arg1 + claimed[address(msg.sender)] >= claimed[address(msg.sender)]
    require arg1 + claimed[address(msg.sender)] >= arg1
    claimed[address(msg.sender)] += arg1
    require arg1 + totalClaimed >= totalClaimed
    require arg1 + totalClaimed >= arg1
    totalClaimed += arg1
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.token() with:
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
    require tokensBought != 0
    if balances[address(msg.sender)]:
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaisedTotal
    require not stor0
    require (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)]
    require tokensBought != 0
    if balances[address(msg.sender)]:
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaisedTotal
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaisedTotal
    if not claimed[address(msg.sender)]:
        claimCount++
    require tokensBought * balances[address(msg.sender)] / weiRaisedTotal >= claimed[address(msg.sender)]
    require claimed[address(msg.sender)] >= 0
    claimed[address(msg.sender)] = tokensBought * balances[address(msg.sender)] / weiRaisedTotal
    require (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)] + totalClaimed >= totalClaimed
    require totalClaimed >= 0
    totalClaimed = (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)] + totalClaimed
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.token() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)]
    require ext_call.success
    emit Distributed(msg.sender, (tokensBought * balances[address(msg.sender)] / weiRaisedTotal) - claimed[address(msg.sender)]);
}



}
