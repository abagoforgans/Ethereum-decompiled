contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[2068 len 20]
    stor3 = code.data[2100 len 20]
    return code.data[133 len 1923]
}



// =====================  Runtime code  =====================


const TOKENS_PER_ETHER = 10000

const PRE_CROWDSALE_DURATION = (120 * 24 * 3600)

const MINIMUM_CONTRIBUTION = 10^16

const TOKEN_CAP = 500000


address owner;
mapping of struct contributors;
address tokenAddress;
address preCrowdsaleOwner;
uint256 etherReceived;
uint256 tokensSent;
uint256 preCrowdsaleStartTime;
uint256 preCrowdsaleEndTime;

function tokensSent() {
    return tokensSent
}

function contributors(address arg1) {
    return contributors[arg1].field_0, contributors[arg1].field_256
}

function etherReceived() {
    return etherReceived
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
}

function _fallback() payable {
    require block.timestamp <= preCrowdsaleEndTime
    require block.timestamp >= preCrowdsaleStartTime
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
    require (10000 * msg.value / 10^18) + contributors[address(msg.sender)].field_256 >= contributors[address(msg.sender)].field_256
    contributors[address(msg.sender)].field_256 += 10000 * msg.value / 10^18
    require msg.value + contributors[address(msg.sender)].field_0 >= contributors[address(msg.sender)].field_0
    contributors[address(msg.sender)].field_0 += msg.value
    require msg.value + etherReceived >= etherReceived
    etherReceived += msg.value
    require (10000 * msg.value / 10^18) + tokensSent >= tokensSent
    tokensSent += 10000 * msg.value / 10^18
    emit TokensSent((10000 * msg.value / 10^18), msg.sender);
    emit ContributionReceived(msg.value, msg.sender);
}



}
