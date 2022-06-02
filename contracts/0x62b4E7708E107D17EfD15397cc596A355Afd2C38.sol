contract main {




// =====================  Runtime code  =====================


address owner;
address adminOwner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 minRate;
uint256 minWeiAmount;
uint256 tokensTotal;
uint256 weiRaised;
uint256 hardCap;
uint256 startTime;
uint256 endTime;
mapping of uint8 stor12;

function minRate() {
    return minRate
}

function adminOwner() {
    return adminOwner
}

function minWeiAmount() {
    return minWeiAmount
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function tokensTotal() {
    return tokensTotal
}

function isWhitelisted(address arg1) {
    return bool(stor12[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor12[arg1])
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function removeFromWhitelist(address arg1) {
    if adminOwner != msg.sender:
        require msg.sender == owner
    stor12[address(arg1)] = 0
}

function setRate(uint256 arg1) {
    if adminOwner != msg.sender:
        require msg.sender == owner
    require arg1 > minRate
    rate = arg1
}

function isCrowdsaleActive() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToWhitelist(address arg1) {
    if adminOwner != msg.sender:
        require msg.sender == owner
    require arg1
    stor12[address(arg1)] = 1
}

function transferAdminOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(adminOwner, arg1);
    adminOwner = arg1
}

function addManyToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if adminOwner != msg.sender:
        require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            stor12[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function refundTokens(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_436d6e8a(?) {
    if adminOwner != msg.sender:
        require msg.sender == owner
    require arg2 > 0
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require stor12[address(arg1)]
    require arg3 > minWeiAmount
    require tokensTotal + arg2 >= tokensTotal
    require tokensTotal + arg2 <= hardCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require tokensTotal + arg2 >= tokensTotal
    tokensTotal += arg2
    require weiRaised + arg3 >= weiRaised
    weiRaised += arg3
    emit TokenPurchase(arg2, arg3, arg1);
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require stor12[address(msg.sender)]
    require msg.value > minWeiAmount
    if not msg.value:
        require rate
        require tokensTotal + (0 / rate) >= tokensTotal
        require tokensTotal + (0 / rate) <= hardCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require tokensTotal + (0 / rate) >= tokensTotal
        tokensTotal += 0 / rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(0 / rate, msg.value, msg.sender);
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require rate
        require tokensTotal + (10^18 * msg.value / rate) >= tokensTotal
        require tokensTotal + (10^18 * msg.value / rate) <= hardCap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require tokensTotal + (10^18 * msg.value / rate) >= tokensTotal
        tokensTotal += 10^18 * msg.value / rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        emit TokenPurchase(10^18 * msg.value / rate, msg.value, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
