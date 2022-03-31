contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 32
    require not msg.value
    stor0 = msg.sender
    stor0 = code.data[2119 len 20]
    require code.data[2139 len 32]
    require code.data[2171 len 32]
    stor6 = code.data[2171 len 32]
    stor5 = code.data[2139 len 32]
    return code.data[155 len 1952]
}



// =====================  Runtime code  =====================


address owner;
uint256 MAX_INVESTORS;
uint256 investorCount;
array of address investors;
mapping of uint256 balances;
uint256 freezeEndsAt;
uint256 weiMinimumLimit;
uint8 stor7;
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

function freezeEndsAt() {
    return freezeEndsAt
}

function MAX_INVESTORS() {
    return MAX_INVESTORS
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function moving() {
    return bool(stor7)
}

function investorCount() {
    return investorCount
}

function _fallback() payable {
    revert 
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

function refund() {
    require block.timestamp >= freezeEndsAt
    stor7 = 1
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function parcipateCrowdsaleInvestor(address arg1) {
    require crowdsaleAddress
    stor7 = 1
    if balances[address(arg1)] > 0:
        balances[address(arg1)] = 0
        require ext_code.size(crowdsaleAddress)
        call crowdsaleAddress.invest(address rg1) with:
           value balances[address(arg1)] wei
             gas gas_remaining - 9050 wei
            args arg1
        require ext_call.success
}

function parcipateCrowdsaleAll() {
    idx = 0
    while idx < investors.length:
        require crowdsaleAddress
        stor7 = 1
        mem[0] = address(investors[idx])
        mem[32] = 4
        if balances[address(stor3[idx])] > 0:
            mem[0] = address(investors[idx])
            mem[32] = 4
            balances[address(stor3[idx])] = 0
            mem[96] = 0x3f9c79300000000000000000000000000000000000000000000000000000000
            mem[100] = address(investors[idx])
            require ext_code.size(crowdsaleAddress)
            call crowdsaleAddress.invest(address rg1) with:
               value balances[address(stor3[idx])] wei
                 gas gas_remaining - 9050 wei
                args address(investors[idx])
            require ext_call.success
        idx = idx + 1
        continue 
}

function invest() payable {
    require not stor7
    require ext_code.size(0x6ae73e72787bf0eda92da4eaa13335c23b332103)
    delegate 0x6ae73e72787bf0eda92da4eaa13335c23b332103.0x66098d4f with:
         gas gas_remaining - 50 wei
        args balances[address(msg.sender)], msg.value
    require delegate.return_code
    balances[address(msg.sender)] = delegate.return_data[0]
    require delegate.return_data[0] >= weiMinimumLimit
    if balances[address(msg.sender)] <= 0:
        require investorCount < MAX_INVESTORS
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        investorCount++
    emit Invested(msg.sender, msg.value);
}



}
