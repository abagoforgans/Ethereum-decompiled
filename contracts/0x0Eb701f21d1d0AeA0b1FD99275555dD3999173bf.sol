contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[5169 len 2306]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 0x99892ac6da1b3851167cb959fe945926bca89f09
    stor6 = 20
    stor5 = 10
    stor4 = 295257 * 10^18
    return code.data[238 len 4931]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 cap;
uint256 minInvestment;
uint256 rate;
uint8 stor7;
array of uint256 contactInformation;

function rate() {
    return rate
}

function cap() {
    return cap
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function minInvestment() {
    return minInvestment
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function setContactInformation(string arg1) {
    require owner == msg.sender
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function hasEnded() {
    if not weiRaised:
        return rate * weiRaised >= cap
    require weiRaised
    require rate * weiRaised / weiRaised == rate
    return rate * weiRaised >= cap
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if weiRaised:
        require weiRaised
        require rate * weiRaised / weiRaised == rate
    require rate * weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    if msg.value + weiRaised:
        require msg.value + weiRaised
        require (msg.value * rate) + (weiRaised * rate) / msg.value + weiRaised == rate
    require msg.value >= minInvestment
    require (msg.value * rate) + (weiRaised * rate) <= cap
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value + weiRaised >= weiRaised
    if msg.value + weiRaised:
        require msg.value + weiRaised
        require (msg.value * rate) + (weiRaised * rate) / msg.value + weiRaised == rate
    require msg.value >= minInvestment
    require (msg.value * rate) + (weiRaised * rate) <= cap
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
