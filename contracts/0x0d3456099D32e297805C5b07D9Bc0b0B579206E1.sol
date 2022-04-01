contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[3887 len 20]
    require code.data[3907 len 32]
    require code.data[3939 len 32]
    stor7 = code.data[3939 len 32]
    stor6 = code.data[3907 len 32]
    return code.data[150 len 3725]
}



// =====================  Runtime code  =====================


address owner;
uint256 investorCount;
uint256 weiRaisedTotal;
array of address investors;
mapping of uint256 balances;
mapping of uint256 claimed;
uint256 freezeEndsAt;
uint256 weiMinimumLimit;
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

function claimCount() {
    return claimCount
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function weiRaisedTotal() {
    return weiRaisedTotal
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

function refund() {
    require 0 == tokensBought
    require block.timestamp >= freezeEndsAt
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function getClaimAmount(address arg1) {
    require tokensBought != 0
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x1d3b9edf with:
         gas gas_remaining - 50 wei
        args balances[address(arg1)], tokensBought
    require delegate.return_code
    require weiRaisedTotal
    return (delegate.return_data[0] / weiRaisedTotal)
}

function getClaimLeft(address arg1) {
    require tokensBought != 0
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x1d3b9edf with:
         gas gas_remaining - 50 wei
        args balances[address(arg1)], tokensBought
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(arg1)]
    require delegate.return_code
    return delegate.return_data[0]
}

function buyForEverybody() {
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

function invest() payable {
    require 0 == tokensBought
    require block.timestamp < freezeEndsAt
    require msg.value
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args balances[address(msg.sender)], msg.value
    require delegate.return_code
    balances[address(msg.sender)] = delegate.return_data[0]
    require delegate.return_data[0] >= weiMinimumLimit
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
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args weiRaisedTotal, msg.value
    require delegate.return_code
    weiRaisedTotal = delegate.return_data[0]
    emit Invested(msg.sender, msg.value);
}

function claim(uint256 arg1) {
    require arg1
    require tokensBought != 0
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x1d3b9edf with:
         gas gas_remaining - 50 wei
        args balances[address(msg.sender)], tokensBought
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require delegate.return_data[0] >= arg1
    if not claimed[address(msg.sender)]:
        claimCount++
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args claimed[address(msg.sender)], arg1
    require delegate.return_code
    claimed[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args totalClaimed, arg1
    require delegate.return_code
    totalClaimed = delegate.return_data[0]
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
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x1d3b9edf with:
         gas gas_remaining - 50 wei
        args balances[address(msg.sender)], tokensBought
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require delegate.return_data[0]
    require tokensBought != 0
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x1d3b9edf with:
         gas gas_remaining - 50 wei
        args balances[address(msg.sender)], tokensBought
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require delegate.return_data[0] >= delegate.return_data[0]
    if not claimed[address(msg.sender)]:
        claimCount++
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args claimed[address(msg.sender)], delegate.return_data[0]
    require delegate.return_code
    claimed[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63)
    delegate 0x4955a5bdef4c2015513f6c2d537fd3bf18fa4d63.0x66098d4f with:
         gas gas_remaining - 50 wei
        args totalClaimed, delegate.return_data[0]
    require delegate.return_code
    totalClaimed = delegate.return_data[0]
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.token() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, delegate.return_data[0]
    require ext_call.success
    emit Distributed(msg.sender, delegate.return_data[0]);
}



}
