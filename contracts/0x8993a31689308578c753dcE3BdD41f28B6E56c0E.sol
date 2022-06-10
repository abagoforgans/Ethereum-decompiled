contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
mapping of uint8 stor5;
uint8 stor6;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor5[arg1])
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManyToWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function finalize() {
    require msg.sender == owner
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args walletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6 = 1
}

function mintTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function buyTokens(address arg1) payable {
    require not stor6
    require stor5[address(arg1)]
    require arg1
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not stor6
    require stor5[address(msg.sender)]
    require msg.sender
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
