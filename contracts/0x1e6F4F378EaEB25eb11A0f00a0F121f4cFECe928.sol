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
uint256 stor11;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2225 len 2546]
    require create.new_address
    stor2 = address(create.new_address)
    stor8 = 3 * 10^13
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x28c5f6f434d5a8f0c4cd86d47696782cd3c0baf8
    stor7 = 100
    stor6 = code.data[4771 len 32]
    stor3 = 417648 * 24 * 3600
    stor4 = 1504223999
    stor5 = 500
    return code.data[268 len 1957]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 start;
uint256 end;
uint256 hardcap;
uint256 rate;
uint256 bonusPercent;
uint256 sub_92b89eb0;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function owner() {
    return owner
}

function sub_92b89eb0(?) {
    return sub_92b89eb0
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function hardcap() {
    return hardcap
}

function start() {
    return start
}

function bonusPercent() {
    return bonusPercent
}

function investorCount() {
    return investorCount
}

function end() {
    return end
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
}

function sub_ac3cbae0(?) {
    require owner == msg.sender
    require arg1 >= 100
    bonusPercent = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    require arg1 >= start
    end = arg1
}

function _fallback() payable {
    require block.timestamp > start
    require block.timestamp <= end
    require tokensSold <= hardcap
    require 10^10 * msg.value / 10^10 == msg.value
    require rate
    require 10^10 * msg.value / 10^18 / rate > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10 * msg.value / 10^18 / rate
    require ext_call.success
    if not investedAmountOf[address(msg.sender)]:
        investorCount++
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require (10^10 * msg.value / 10^18 / rate) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
    tokenAmountOf[address(msg.sender)] += 10^10 * msg.value / 10^18 / rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^10 * msg.value / 10^18 / rate) + tokensSold >= tokensSold
    tokensSold += 10^10 * msg.value / 10^18 / rate
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > start
    require block.timestamp <= end
    require tokensSold <= hardcap
    require 10^10 * msg.value / 10^10 == msg.value
    require rate
    require 10^10 * msg.value / 10^18 / rate > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^10 * msg.value / 10^18 / rate
    require ext_call.success
    if not investedAmountOf[address(msg.sender)]:
        investorCount++
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require (10^10 * msg.value / 10^18 / rate) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
    tokenAmountOf[address(msg.sender)] += 10^10 * msg.value / 10^18 / rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^10 * msg.value / 10^18 / rate) + tokensSold >= tokensSold
    tokensSold += 10^10 * msg.value / 10^18 / rate
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
