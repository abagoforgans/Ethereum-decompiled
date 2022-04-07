contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[3366 len 20]
    require code.data[3386 len 32]
    stor6 = code.data[3386 len 32]
    return code.data[126 len 3228]
}



// =====================  Runtime code  =====================


address owner;
uint256 investorCount;
uint256 weiRaisedTotal;
array of address investors;
mapping of uint256 balances;
mapping of uint256 claimed;
uint256 freezeEndsAt;
address crowdsaleAddress;
address tokenAddress;
uint256 initialTokenBalance;
uint8 initialTokenBalanceFetched;

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

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function weiRaisedTotal() {
    return weiRaisedTotal
}

function initialTokenBalanceFetched() {
    return bool(initialTokenBalanceFetched)
}

function claimed(address arg1) {
    return claimed[arg1]
}

function investorCount() {
    return investorCount
}

function initialTokenBalance() {
    return initialTokenBalance
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert 
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function setCrowdsale(address arg1) {
    require owner == msg.sender
    crowdsaleAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getState() {
    if block.timestamp <= freezeEndsAt:
        return 1
    if not initialTokenBalanceFetched:
        return 1
    return 2
}

function getToken() {
    if tokenAddress > 0:
        return tokenAddress
    require crowdsaleAddress
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xfc0c546a with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getClaimAmount(address arg1) {
    require initialTokenBalanceFetched
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args initialTokenBalance, balances[address(arg1)]
    require delegate.return_code
    require weiRaisedTotal
    return (delegate.return_data[0] / weiRaisedTotal)
}

function getClaimLeft(address arg1) {
    require initialTokenBalanceFetched
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args initialTokenBalance, balances[address(arg1)]
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(arg1)]
    require delegate.return_code
    return delegate.return_data[0]
}

function fetchTokenBalance() {
    require owner == msg.sender
    require not initialTokenBalanceFetched
    if tokenAddress > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
    else:
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
    initialTokenBalance = ext_call.return_data[0]
    require ext_call.return_data[0]
    initialTokenBalanceFetched = 1
}

function addInvestor(address arg1, uint256 arg2) {
    require owner == msg.sender
    if block.timestamp > freezeEndsAt:
        require not initialTokenBalanceFetched
    require arg2
    require balances[address(arg1)] <= 0
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args balances[address(arg1)], arg2
    require delegate.return_code
    balances[address(arg1)] = delegate.return_data[0]
    if balances[address(arg1)] <= 0:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = arg1
        investorCount++
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args weiRaisedTotal, arg2
    require delegate.return_code
    weiRaisedTotal = delegate.return_data[0]
    emit Invested(address(arg1), arg2);
}

function claim(uint256 arg1) {
    require initialTokenBalanceFetched
    require block.timestamp > freezeEndsAt
    require initialTokenBalanceFetched
    require initialTokenBalanceFetched
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args initialTokenBalance, balances[address(msg.sender)]
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require delegate.return_data[0] >= arg1
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args claimed[address(msg.sender)], arg1
    require delegate.return_code
    claimed[address(msg.sender)] = delegate.return_data[0]
    if tokenAddress > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, arg1
    else:
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
    require initialTokenBalanceFetched
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args initialTokenBalance, balances[address(msg.sender)]
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require initialTokenBalanceFetched
    require block.timestamp > freezeEndsAt
    require initialTokenBalanceFetched
    require initialTokenBalanceFetched
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.times(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args initialTokenBalance, balances[address(msg.sender)]
    require delegate.return_code
    require weiRaisedTotal
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.minus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args delegate.return_data[0] / weiRaisedTotal, claimed[address(msg.sender)]
    require delegate.return_code
    require delegate.return_data[0] >= delegate.return_data[0]
    require ext_code.size(0x790d13e76b2c727086018842af947408e371868f)
    delegate 0x790d13e76b2c727086018842af947408e371868f.plus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args claimed[address(msg.sender)], delegate.return_data[0]
    require delegate.return_code
    claimed[address(msg.sender)] = delegate.return_data[0]
    if tokenAddress > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, delegate.return_data[0]
    else:
        require crowdsaleAddress
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.0xfc0c546a with:
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
