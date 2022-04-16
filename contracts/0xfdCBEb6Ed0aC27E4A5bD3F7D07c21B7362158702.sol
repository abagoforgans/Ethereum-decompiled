contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4827 len 20]
    require code.data[4847 len 32]
    require code.data[4879 len 32]
    require code.data[4911 len 32]
    stor7 = code.data[4879 len 32]
    stor8 = code.data[4911 len 32]
    stor9 = code.data[4943 len 32]
    stor6 = code.data[4847 len 32]
    return code.data[200 len 4615]
}



// =====================  Runtime code  =====================


const isPresale = 1


uint8 stor0; offset 160
address owner;
uint256 investorCount;
uint256 weiRaised;
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
uint8 stor13;
address crowdsaleAddress; offset 8

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

function weiRaised() {
    return weiRaised
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

function forcedRefund() {
    return bool(stor13)
}

function _fallback() payable {
    revert
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function forceRefund() {
    require owner == msg.sender
    stor13 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function loadRefund() payable {
    if not stor13:
        require not tokensBought
        require block.timestamp >= freezeEndsAt
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getState() {
    if not stor13:
        if tokensBought:
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
         gas gas_remaining - 710 wei
    require ext_call.success
}

function getToken() {
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function refund() {
    require not stor0
    if not stor13:
        require not tokensBought
        require block.timestamp >= freezeEndsAt
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function getClaimAmount(address arg1) {
    require not stor13
    require tokensBought
    if not balances[address(arg1)]:
        if weiRaised:
            return (tokensBought * balances[address(arg1)] / weiRaised)
    else:
        if balances[address(arg1)]:
            if tokensBought * balances[address(arg1)] / balances[address(arg1)] == tokensBought:
                if weiRaised:
                    return (tokensBought * balances[address(arg1)] / weiRaised)
    revert
}

function getClaimLeft(address arg1) {
    require not stor13
    require tokensBought
    if not balances[address(arg1)]:
        if weiRaised:
            if claimed[address(arg1)] <= tokensBought * balances[address(arg1)] / weiRaised:
                return ((tokensBought * balances[address(arg1)] / weiRaised) - claimed[address(arg1)])
    else:
        if balances[address(arg1)]:
            if tokensBought * balances[address(arg1)] / balances[address(arg1)] == tokensBought:
                if weiRaised:
                    if claimed[address(arg1)] <= tokensBought * balances[address(arg1)] / weiRaised:
                        return ((tokensBought * balances[address(arg1)] / weiRaised) - claimed[address(arg1)])
    revert
}

function buyForEverybody() {
    if stor0:
        require owner == msg.sender
    require not stor13
    require not tokensBought
    require block.timestamp < freezeEndsAt
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.invest(address rg1) with:
       value weiRaised wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokensBought = ext_call.return_data[0]
    require ext_call.return_data[0]
    emit TokensBoughts(tokensBought);
}

function buy() payable {
    require not stor0
    require not stor13
    require not tokensBought
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
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised >= msg.value
    weiRaised += msg.value
    require msg.value + weiRaised <= weiCap
}

function buyWithCustomerId(uint128 arg1) payable {
    require not stor0
    require not stor13
    require not tokensBought
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
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised >= msg.value
    weiRaised += msg.value
    require msg.value + weiRaised <= weiCap
}

function claim(uint256 arg1) {
    require not stor0
    require arg1
    require not stor13
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaised
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaised
    require (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)] >= arg1
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
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Distributed(msg.sender, arg1);
}

function claimAll() {
    require not stor13
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaised
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaised
    require not stor0
    require (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)]
    require not stor13
    require tokensBought
    if balances[address(msg.sender)]:
        require balances[address(msg.sender)]
        require tokensBought * balances[address(msg.sender)] / balances[address(msg.sender)] == tokensBought
    require weiRaised
    require claimed[address(msg.sender)] <= tokensBought * balances[address(msg.sender)] / weiRaised
    if not claimed[address(msg.sender)]:
        claimCount++
    require tokensBought * balances[address(msg.sender)] / weiRaised >= claimed[address(msg.sender)]
    require claimed[address(msg.sender)] >= 0
    claimed[address(msg.sender)] = tokensBought * balances[address(msg.sender)] / weiRaised
    require (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)] + totalClaimed >= totalClaimed
    require totalClaimed >= 0
    totalClaimed = (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)] + totalClaimed
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)]
    require ext_call.success
    emit Distributed(msg.sender, (tokensBought * balances[address(msg.sender)] / weiRaised) - claimed[address(msg.sender)]);
}



}
