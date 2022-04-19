contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address stor18;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    stor9 = 7500 * 10^18 * 24 * 3600
    stor10 = 50000 * 10^18
    require not msg.value
    require code.data[13934 len 32] >= block.timestamp
    require code.data[14158 len 32] >= code.data[13934 len 32]
    require code.data[14202 len 20]
    create contract with 0 wei
                    code: code.data[10017 len 3917]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[13934 len 32]
    stor2 = code.data[14158 len 32]
    stor4 = 900
    stor3 = code.data[14202 len 20]
    address(stor6.field_0) = msg.sender
    require code.data[14234 len 20]
    require code.data[14266 len 20]
    require code.data[13966 len 32] >= code.data[13934 len 32]
    require code.data[13998 len 32] >= code.data[13966 len 32]
    require code.data[14030 len 32] >= code.data[13998 len 32]
    require code.data[14062 len 32] >= code.data[14030 len 32]
    require code.data[14094 len 32] >= code.data[14062 len 32]
    require code.data[14126 len 32] >= code.data[14094 len 32]
    require code.data[14158 len 32] >= code.data[14126 len 32]
    create contract with 0 wei
                    code: code.data[8390 len 1627], stor3
    require create.new_address
    stor18 = address(create.new_address)
    stor12 = code.data[13966 len 32]
    stor13 = code.data[13998 len 32]
    stor14 = code.data[14030 len 32]
    stor15 = code.data[14062 len 32]
    stor16 = code.data[14094 len 32]
    stor17 = code.data[14126 len 32]
    stor7 = code.data[14234 len 20]
    stor8 = code.data[14266 len 20]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args code.data[14234 len 20], 1500000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor8, 1500000 * 10^18
    require ext_call.success
    return code.data[1074 len 7316]
}



// =====================  Runtime code  =====================


const MINIMAL_PURCHASE = 5 * 10^16


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;
address foundersWalletAddress;
address bountyWalletAddress;
uint256 tokenCap;
uint256 tokenGoal;
uint256 tokenSold;
uint256 endTimePreICO;
uint256 startTimeICO;
uint256 endFirstDayICO;
uint256 endFirstWeekICO;
uint256 endSecondWeekICO;
uint256 endThirdWeekICO;
address vaultAddress;

function foundersWallet() {
    return foundersWalletAddress
}

function endSecondWeekICO() {
    return endSecondWeekICO
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function endTimePreICO() {
    return endTimePreICO
}

function tokenSold() {
    return tokenSold
}

function wallet() {
    return walletAddress
}

function endThirdWeekICO() {
    return endThirdWeekICO
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function endFirstWeekICO() {
    return endFirstWeekICO
}

function tokenGoal() {
    return tokenGoal
}

function startTimeICO() {
    return startTimeICO
}

function tokenCap() {
    return tokenCap
}

function bountyWallet() {
    return bountyWalletAddress
}

function endFirstDayICO() {
    return endFirstDayICO
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return tokenSold >= tokenGoal
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return tokenSold >= tokenCap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require stor6
    require tokenSold < tokenGoal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor6
    if block.timestamp <= endTime:
        require tokenSold >= tokenCap
    require ext_code.size(vaultAddress)
    if tokenSold < tokenGoal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor6 = 1
}

function _fallback() payable {
    require msg.sender
    if block.timestamp <= endTimePreICO:
        rate = 900
    else:
        if block.timestamp <= endFirstDayICO:
            rate = 800
        else:
            if block.timestamp <= endFirstWeekICO:
                rate = 750
            else:
                if block.timestamp <= endSecondWeekICO:
                    rate = 700
                else:
                    if block.timestamp <= endThirdWeekICO:
                        rate = 650
                    else:
                        if block.timestamp <= endTime:
                            rate = 600
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + tokenSold >= tokenSold
    if startTime > block.timestamp:
        if startTimeICO > block.timestamp:
            if startTime > block.timestamp:
                require startTimeICO <= block.timestamp
        else:
            if startTime > block.timestamp:
                require block.timestamp <= endTime
    else:
        if startTimeICO > block.timestamp:
            if block.timestamp > endTimePreICO:
                require startTimeICO <= block.timestamp
        else:
            if block.timestamp > endTimePreICO:
                require block.timestamp <= endTime
    require msg.value >= 5 * 10^16
    require (rate * msg.value) + tokenSold <= tokenCap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (rate * msg.value) + tokenSold >= tokenSold
    tokenSold += rate * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    if block.timestamp <= endTimePreICO:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp <= endTimePreICO:
        rate = 900
    else:
        if block.timestamp <= endFirstDayICO:
            rate = 800
        else:
            if block.timestamp <= endFirstWeekICO:
                rate = 750
            else:
                if block.timestamp <= endSecondWeekICO:
                    rate = 700
                else:
                    if block.timestamp <= endThirdWeekICO:
                        rate = 650
                    else:
                        if block.timestamp <= endTime:
                            rate = 600
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require (rate * msg.value) + tokenSold >= tokenSold
    if startTime > block.timestamp:
        if startTimeICO > block.timestamp:
            if startTime > block.timestamp:
                require startTimeICO <= block.timestamp
        else:
            if startTime > block.timestamp:
                require block.timestamp <= endTime
    else:
        if startTimeICO > block.timestamp:
            if block.timestamp > endTimePreICO:
                require startTimeICO <= block.timestamp
        else:
            if block.timestamp > endTimePreICO:
                require block.timestamp <= endTime
    require msg.value >= 5 * 10^16
    require (rate * msg.value) + tokenSold <= tokenCap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (rate * msg.value) + tokenSold >= tokenSold
    tokenSold += rate * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    if block.timestamp <= endTimePreICO:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address rg1) with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    require ext_call.success
}



}
