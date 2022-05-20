contract main {




// =====================  Runtime code  =====================


const minPublicContribAmount = 10^18

const toekensForBTCandBonus = 12500000000 * 10^18

const walletThree = 0x9e72590206d652bd1acdb3a8e358aeb3f21513a

const walletTwo = 0x938ee925d9eff6698472a19ebac780667999857b

const tokenDecimals = 18

const toekensForOthers = (6250000 * 10^18 * 3600)

const toekensForTeam = 5000000000 * 10^18

const STANDARD_RATE = 1500000


uint8 stor0; offset 160
address owner;
address tokenAddress;
uint64 stor4;
uint256 stor4; offset 64
uint256 startTime;
uint64 stor5;
uint256 stor5; offset 64
uint256 endTime;
uint8 stor6;
address stor6;
address walletOneAddress; offset 8
uint256 weiRaised;
uint256 totalSupply;
uint256 icoCap;
uint256 icoSoldTokens;
uint8 stor11;

function totalSupply() {
    return totalSupply
}

function walletOne() {
    return walletOneAddress
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function icoSoldTokens() {
    return icoSoldTokens
}

function icoEnded() {
    return bool(stor11)
}

function paused() {
    return bool(stor0)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function icoEnabled() {
    return bool(uint8(stor6.field_0))
}

function icoCap() {
    return icoCap
}

function token() {
    return tokenAddress
}

function getRate() {
    require block.timestamp >= startTime
    return 1500000
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function enableICO() {
    require msg.sender == owner
    uint8(stor6.field_0) = 1
    icoCap = totalSupply
}

function hasEnded() {
    if stor11:
        return bool(stor11)
    if icoSoldTokens >= icoCap:
        return icoSoldTokens >= icoCap
    return (block.timestamp > endTime)
}

function setwalletOne(address arg1) {
    require msg.sender == owner
    if uint8(stor6.field_0):
        require block.timestamp < startTime
    require arg1
    walletOneAddress = arg1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enableTokenTransferability() {
    require msg.sender == owner
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function disableTokenTransferability() {
    require msg.sender == owner
    require tokenAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setContributionDates(uint64 arg1, uint64 arg2) {
    require msg.sender == owner
    require not uint8(stor6.field_0)
    require arg1 >= block.timestamp
    require arg2 >= arg1
    uint64(stor4.field_0) = arg1
    Mask(192, 0, stor4.field_64) = 0
    uint64(stor5.field_0) = arg2
    Mask(192, 0, stor5.field_64) = 0
}

function endIco() {
    require msg.sender == owner
    stor11 = 1
    require icoSoldTokens <= icoCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor6.field_0), icoCap - icoSoldTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferUnsoldIcoTokens() {
    require msg.sender == owner
    require tokenAddress
    require icoSoldTokens <= icoCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor6.field_0), icoCap - icoSoldTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require not stor11
    require uint8(stor6.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^18
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    if msg.value:
        require msg.value
        require 1500000 * msg.value / msg.value == 1500000
    require (1500000 * msg.value) + icoSoldTokens >= icoSoldTokens
    if (1500000 * msg.value) + icoSoldTokens <= icoCap:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 1500000 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        icoSoldTokens += 1500000 * msg.value
        emit TokenPurchase(msg.value, 1500000 * msg.value, msg.sender, arg1);
        call walletOneAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require icoSoldTokens <= icoCap
        require icoCap - icoSoldTokens / 1500000 <= msg.value
        require (icoCap - icoSoldTokens / 1500000) + weiRaised >= weiRaised
        weiRaised += icoCap - icoSoldTokens / 1500000
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), icoCap - icoSoldTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        icoSoldTokens = icoCap
        if msg.value - (icoCap - icoSoldTokens / 1500000) <= 0:
            emit TokenPurchase(icoCap - icoSoldTokens / 1500000, icoCap - icoSoldTokens, msg.sender, arg1);
            call walletOneAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - (icoCap - icoSoldTokens / 1500000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(icoCap - icoSoldTokens / 1500000, icoCap - icoSoldTokens, msg.sender, arg1);
            call walletOneAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require not stor11
    require uint8(stor6.field_0)
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= 10^18
    require icoSoldTokens < icoCap
    require block.timestamp >= startTime
    if msg.value:
        require msg.value
        require 1500000 * msg.value / msg.value == 1500000
    require (1500000 * msg.value) + icoSoldTokens >= icoSoldTokens
    if (1500000 * msg.value) + icoSoldTokens <= icoCap:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1500000 * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        icoSoldTokens += 1500000 * msg.value
        emit TokenPurchase(msg.value, 1500000 * msg.value, msg.sender, msg.sender);
        call walletOneAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require icoSoldTokens <= icoCap
        require icoCap - icoSoldTokens / 1500000 <= msg.value
        require (icoCap - icoSoldTokens / 1500000) + weiRaised >= weiRaised
        weiRaised += icoCap - icoSoldTokens / 1500000
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, icoCap - icoSoldTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        icoSoldTokens = icoCap
        if msg.value - (icoCap - icoSoldTokens / 1500000) <= 0:
            emit TokenPurchase(icoCap - icoSoldTokens / 1500000, icoCap - icoSoldTokens, msg.sender, msg.sender);
            call walletOneAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call msg.sender with:
               value msg.value - (icoCap - icoSoldTokens / 1500000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(icoCap - icoSoldTokens / 1500000, icoCap - icoSoldTokens, msg.sender, msg.sender);
            call walletOneAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}



}
