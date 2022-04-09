contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1776 len 20]
    stor2 = code.data[1808 len 20]
    return code.data[143 len 1621]
}



// =====================  Runtime code  =====================


const TOKENS_PER_ETHER = 10000

const PRE_CROWDSALE_DURATION = (120 * 24 * 3600)

const MINIMUM_CONTRIBUTION = 10^16

const TOKEN_CAP = 500000


address owner;
address tokenAddress;
address preCrowdsaleOwner;
uint256 tokensSent;
uint256 preCrowdsaleStartTime;
uint256 preCrowdsaleEndTime;
uint8 stor6;

function tokensSent() {
    return tokensSent
}

function preCrowdsaleStartTime() {
    return preCrowdsaleStartTime
}

function owner() {
    return owner
}

function preCrowdsaleEndTime() {
    return preCrowdsaleEndTime
}

function preCrowdsaleOwner() {
    return preCrowdsaleOwner
}

function crowdSaleIsRunning() {
    return bool(stor6)
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function drain() {
    require owner == msg.sender
    call preCrowdsaleOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function start() {
    require owner == msg.sender
    require not preCrowdsaleStartTime
    stor6 = 1
    preCrowdsaleStartTime = block.timestamp
    preCrowdsaleEndTime = block.timestamp + (120 * 24 * 3600)
}

function finalize() {
    require owner == msg.sender
    if not preCrowdsaleStartTime:
        require tokensSent == 500000
    else:
        if block.timestamp < preCrowdsaleEndTime:
            require tokensSent == 500000
    call preCrowdsaleOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor6 = 0
}

function _fallback() payable {
    require stor6
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
    require tokensSent + (10000 * msg.value / 10^18) >= 10000 * msg.value / 10^18
    require tokensSent + (10000 * msg.value / 10^18) <= 500000
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10000 * msg.value / 10^18
    require ext_call.success
    require (10000 * msg.value / 10^18) + tokensSent >= tokensSent
    tokensSent += 10000 * msg.value / 10^18
}



}
