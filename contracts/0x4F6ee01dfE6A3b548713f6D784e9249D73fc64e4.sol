contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startsAt;
uint256 endsAt;
uint256 tokenPerETH;
uint8 stor5;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
mapping of uint256 investedAmountOf;

function endsAt() {
    return endsAt
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function TokenPerETH() {
    return tokenPerETH
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

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(stor5)
}

function investorCount() {
    return investorCount
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setEndsAt(uint256 arg1) {
    require msg.sender == owner
    require not stor5
    endsAt = arg1
    emit EndsAtChanged(endsAt);
}

function setStartsAt(uint256 arg1) {
    require msg.sender == owner
    require not stor5
    startsAt = arg1
    emit StartsAtChanged(startsAt);
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require not stor5
    require arg1 > 0
    emit RateChanged(tokenPerETH, arg1);
    tokenPerETH = arg1
}

function finalize() {
    require msg.sender == owner
    stor5 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not stor5
    require startsAt <= block.timestamp
    require endsAt > block.timestamp
    if not investedAmountOf[address(msg.sender)]:
        investorCount++
    investedAmountOf[address(msg.sender)] += msg.value
    tokensSold += msg.value * tokenPerETH
    weiRaised += msg.value
    emit Invested(msg.sender, msg.value, msg.value * tokenPerETH);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * tokenPerETH
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
