contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    require code.data[2846 len 32]
    require code.data[2878 len 32]
    require ext_code.size(code.data[2954 len 20])
    call code.data[2954 len 20].0x4551dd59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = code.data[2846 len 32]
    stor6 = code.data[2878 len 32]
    stor7 = code.data[2910 len 32]
    stor9 = code.data[2954 len 20]
    require code.data[2974 len 32]
    stor8 = code.data[2974 len 32]
    return code.data[350 len 2496]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 investorCount;
uint256 weiRaisedTotal;
array of address investors;
mapping of uint256 balances;
uint256 weiMinimumLimit;
uint256 weiMaximumLimit;
uint256 weiCap;
uint256 startsAt;
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

function weiCap() {
    return weiCap
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

function startsAt() {
    return startsAt
}

function weiRaisedTotal() {
    return weiRaisedTotal
}

function halted() {
    return bool(stor0)
}

function investorCount() {
    return investorCount
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

function setStartsAt(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp >= arg1
    startsAt = arg1
}

function getToken() {
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getState() {
    if weiRaisedTotal >= weiCap:
        return 2
    if not crowdsaleAddress:
        return 0
    if not startsAt:
        return 0
    if block.timestamp < startsAt:
        return 0
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x391623b4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x1c9afcc8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return 3
}

function buy() payable {
    require not stor0
    require weiRaisedTotal < weiCap
    require crowdsaleAddress
    require startsAt
    require block.timestamp >= startsAt
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x391623b4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0x1c9afcc8 with:
             gas gas_remaining - 710 wei
        require not ext_call.success
        revert
    require msg.value
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
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
    weiRaisedTotal += msg.value
    require msg.value + weiRaisedTotal <= weiCap
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xf8f8c095 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    emit Invested(msg.sender, msg.value);
}

function _fallback() payable {
    require not stor0
    require weiRaisedTotal < weiCap
    require crowdsaleAddress
    require startsAt
    require block.timestamp >= startsAt
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x391623b4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0x1c9afcc8 with:
             gas gas_remaining - 710 wei
        require not ext_call.success
        revert
    require msg.value
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
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
    weiRaisedTotal += msg.value
    require msg.value + weiRaisedTotal <= weiCap
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xf8f8c095 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    emit Invested(msg.sender, msg.value);
}



}
