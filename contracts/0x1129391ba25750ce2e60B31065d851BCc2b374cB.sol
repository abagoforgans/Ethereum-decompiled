contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2445 len 20]
    stor7 = code.data[2465 len 32]
    stor6 = code.data[2497 len 32]
    stor3 = code.data[2529 len 32]
    stor4 = code.data[2561 len 32]
    stor5 = code.data[2593 len 32]
    stor2 = code.data[2637 len 20]
    return code.data[195 len 2238]
}



// =====================  Runtime code  =====================


address owner;
address multisigAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 hardcap;
uint256 rate;
uint256 bonusPercent;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of uint256 sub_4e4b46c1;
mapping of uint256 sub_3e5eb379;
mapping of struct sub_127e6609;

function sub_127e6609(?) {
    require owner == msg.sender
    return sub_127e6609[address(arg1)].field_0, sub_127e6609[address(arg1)].field_256
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function sub_3e5eb379(?) {
    require owner == msg.sender
    return sub_3e5eb379[address(arg1)]
}

function weiRaised() {
    return weiRaised
}

function multisig() {
    return multisigAddress
}

function sub_4e4b46c1(?) {
    require owner == msg.sender
    return sub_4e4b46c1[address(arg1)]
}

function tokensSold() {
    return tokensSold
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function hardcap() {
    return hardcap
}

function bonusPercent() {
    return bonusPercent
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
}

function setHardcap(uint256 arg1) {
    require owner == msg.sender
    hardcap = arg1
}

function sub_ac3cbae0(?) {
    require owner == msg.sender
    require arg1 >= 100
    bonusPercent = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    require arg1 >= startTime
    endTime = arg1
}

function setPromo(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    sub_4e4b46c1[address(arg1)] = arg2
    sub_3e5eb379[address(arg1)] = arg3
}

function calcToken() {
    if sub_3e5eb379[address(msg.sender)] >= block.timestamp:
        return sub_4e4b46c1[address(msg.sender)]
    require 10^15 * msg.value / 10^15 == msg.value
    if not 10^15 * msg.value / 10^18:
        if not rate * 10^15 * msg.value / 10^18:
            return (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100)
        if rate * 10^15 * msg.value / 10^18:
            if bonusPercent * rate * 10^15 * msg.value / 10^18 / rate * 10^15 * msg.value / 10^18 == bonusPercent:
                return (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100)
    else:
        if 10^15 * msg.value / 10^18:
            if rate * 10^15 * msg.value / 10^18 / 10^15 * msg.value / 10^18 == rate:
                if not rate * 10^15 * msg.value / 10^18:
                    return (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100)
                if rate * 10^15 * msg.value / 10^18:
                    if bonusPercent * rate * 10^15 * msg.value / 10^18 / rate * 10^15 * msg.value / 10^18 == bonusPercent:
                        return (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100)
    revert
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    require tokensSold <= hardcap
    if sub_3e5eb379[address(msg.sender)] >= block.timestamp:
        require sub_4e4b46c1[address(msg.sender)] >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, sub_4e4b46c1[address(msg.sender)]
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require sub_4e4b46c1[address(msg.sender)] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += sub_4e4b46c1[address(msg.sender)]
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require sub_4e4b46c1[address(msg.sender)] + tokensSold >= tokensSold
        tokensSold += sub_4e4b46c1[address(msg.sender)]
    else:
        require 10^15 * msg.value / 10^15 == msg.value
        if 10^15 * msg.value / 10^18:
            require 10^15 * msg.value / 10^18
            require rate * 10^15 * msg.value / 10^18 / 10^15 * msg.value / 10^18 == rate
        if rate * 10^15 * msg.value / 10^18:
            require rate * 10^15 * msg.value / 10^18
            require bonusPercent * rate * 10^15 * msg.value / 10^18 / rate * 10^15 * msg.value / 10^18 == bonusPercent
        require bonusPercent * rate * 10^15 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    require tokensSold <= hardcap
    if sub_3e5eb379[address(msg.sender)] >= block.timestamp:
        require sub_4e4b46c1[address(msg.sender)] >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, sub_4e4b46c1[address(msg.sender)]
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require sub_4e4b46c1[address(msg.sender)] + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += sub_4e4b46c1[address(msg.sender)]
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require sub_4e4b46c1[address(msg.sender)] + tokensSold >= tokensSold
        tokensSold += sub_4e4b46c1[address(msg.sender)]
    else:
        require 10^15 * msg.value / 10^15 == msg.value
        if 10^15 * msg.value / 10^18:
            require 10^15 * msg.value / 10^18
            require rate * 10^15 * msg.value / 10^18 / 10^15 * msg.value / 10^18 == rate
        if rate * 10^15 * msg.value / 10^18:
            require rate * 10^15 * msg.value / 10^18
            require bonusPercent * rate * 10^15 * msg.value / 10^18 / rate * 10^15 * msg.value / 10^18 == bonusPercent
        require bonusPercent * rate * 10^15 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (bonusPercent * rate * 10^15 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += bonusPercent * rate * 10^15 * msg.value / 10^18 / 100
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
