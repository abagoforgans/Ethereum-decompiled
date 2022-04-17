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
    stor1 = 0x7c27f68b0d5afffb668da3e046adfba6ea1f6bc3
    stor7 = 100
    stor6 = 3000
    stor3 = block.timestamp
    stor4 = block.timestamp + 40 * 10^6
    stor5 = 10^11
    stor2 = 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a
    return code.data[171 len 1757]
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
mapping of struct stor13;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
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

function multisig() {
    return multisigAddress
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

function setHardcap(uint256 arg1) {
    require owner == msg.sender
    hardcap = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    require arg1 >= startTime
    endTime = arg1
}

function setPromo(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    stor13[address(arg1)].field_0 = arg2
    stor13[address(arg1)].field_256 = arg3
}

function calcToken() {
    if stor13[address(msg.sender)].field_256 < block.timestamp:
        if 10^6 * msg.value / 10^6 == msg.value:
            if not 10^6 * msg.value / 10^18:
                if not rate * 10^6 * msg.value / 10^18:
                    return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                if rate * 10^6 * msg.value / 10^18:
                    if bonusPercent * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == bonusPercent:
                        return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
            else:
                if 10^6 * msg.value / 10^18:
                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                        if not rate * 10^6 * msg.value / 10^18:
                            return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                        if rate * 10^6 * msg.value / 10^18:
                            if bonusPercent * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == bonusPercent:
                                return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
    else:
        if 10^6 * msg.value / 10^6 == msg.value:
            if not 10^6 * msg.value / 10^18:
                if not rate * 10^6 * msg.value / 10^18:
                    return (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100)
                if rate * 10^6 * msg.value / 10^18:
                    if stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == stor13[address(msg.sender)].field_0:
                        return (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100)
            else:
                if 10^6 * msg.value / 10^18:
                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                        if not rate * 10^6 * msg.value / 10^18:
                            return (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100)
                        if rate * 10^6 * msg.value / 10^18:
                            if stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == stor13[address(msg.sender)].field_0:
                                return (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100)
    revert
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    require tokensSold <= hardcap
    require 10^6 * msg.value / 10^6 == msg.value
    if 10^6 * msg.value / 10^18:
        require 10^6 * msg.value / 10^18
        require rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate
    if stor13[address(msg.sender)].field_256 < block.timestamp:
        if rate * 10^6 * msg.value / 10^18:
            require rate * 10^6 * msg.value / 10^18
            require bonusPercent * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == bonusPercent
        require bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
    else:
        if rate * 10^6 * msg.value / 10^18:
            require rate * 10^6 * msg.value / 10^18
            require stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == stor13[address(msg.sender)].field_0
        require stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    require tokensSold <= hardcap
    require 10^6 * msg.value / 10^6 == msg.value
    if 10^6 * msg.value / 10^18:
        require 10^6 * msg.value / 10^18
        require rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate
    if stor13[address(msg.sender)].field_256 < block.timestamp:
        if rate * 10^6 * msg.value / 10^18:
            require rate * 10^6 * msg.value / 10^18
            require bonusPercent * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == bonusPercent
        require bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
    else:
        if rate * 10^6 * msg.value / 10^18:
            require rate * 10^6 * msg.value / 10^18
            require stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / rate * 10^6 * msg.value / 10^18 == stor13[address(msg.sender)].field_0
        require stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100 >= 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
        require ext_call.success
        if not investedAmountOf[address(msg.sender)]:
            investorCount++
        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
        investedAmountOf[address(msg.sender)] += msg.value
        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
        tokenAmountOf[address(msg.sender)] += stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
        tokensSold += stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
