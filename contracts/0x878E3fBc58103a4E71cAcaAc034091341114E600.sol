contract main {




// =====================  Runtime code  =====================


const HARD_CAP_TOKENS = 1000000 * 10^18


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint8 stor4;
uint256 rate;
uint256 weiRaised;
uint256 tokensMinted;
uint256 minimumSupply;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function tokensMinted() {
    return tokensMinted
}

function startTime() {
    return startTime
}

function isFinished() {
    return bool(stor4)
}

function minimumSupply() {
    return minimumSupply
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= 10000
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finishPresale() {
    require msg.sender == owner
    stor4 = 1
    endTime = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit PresaleFinished()
}

function adminMint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor4
    if not arg2 / 10000:
        require tokensMinted + arg2 >= tokensMinted
        require tokensMinted + arg2 <= 1000000 * 10^18
        require weiRaised >= weiRaised
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + arg2 >= tokensMinted
        tokensMinted += arg2
        emit TokenPurchase(0, 0, arg2, arg2 / 10^18, tokensMinted, tokensMinted / 10^18, arg1);
    else:
        require arg2 / 10000
        require arg2 / 10000 * rate / arg2 / 10000 == rate
        require tokensMinted + arg2 >= tokensMinted
        require tokensMinted + arg2 <= 1000000 * 10^18
        require weiRaised + (arg2 / 10000 * rate) >= weiRaised
        weiRaised += arg2 / 10000 * rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + arg2 >= tokensMinted
        tokensMinted += arg2
        emit TokenPurchase(arg2 / 10000 * rate, arg2 / 10000 * rate / 10^18, arg2, arg2 / 10^18, tokensMinted, tokensMinted / 10^18, arg1);
    return 1
}

function buyTokens() payable {
    if startTime <= 0:
        require startTime > 0
    else:
        require not stor4
    require msg.value >= 10^18 * minimumSupply * rate / 10000
    if not msg.value:
        require rate
        require tokensMinted + (0 / rate) >= tokensMinted
        require tokensMinted + (0 / rate) <= 1000000 * 10^18
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + (0 / rate) >= tokensMinted
        tokensMinted += 0 / rate
        emit TokenPurchase(msg.value, msg.value / 10^18, 0 / rate, 0 / rate / 10^18, tokensMinted, tokensMinted / 10^18, msg.sender);
    else:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
        require rate
        require tokensMinted + (10000 * msg.value / rate) >= tokensMinted
        require tokensMinted + (10000 * msg.value / rate) <= 1000000 * 10^18
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10000 * msg.value / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + (10000 * msg.value / rate) >= tokensMinted
        tokensMinted += 10000 * msg.value / rate
        emit TokenPurchase(msg.value, msg.value / 10^18, 10000 * msg.value / rate, 10000 * msg.value / rate / 10^18, tokensMinted, tokensMinted / 10^18, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if startTime <= 0:
        require startTime > 0
    else:
        require not stor4
    require msg.value >= 10^18 * minimumSupply * rate / 10000
    if not msg.value:
        require rate
        require tokensMinted + (0 / rate) >= tokensMinted
        require tokensMinted + (0 / rate) <= 1000000 * 10^18
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0 / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + (0 / rate) >= tokensMinted
        tokensMinted += 0 / rate
        emit TokenPurchase(msg.value, msg.value / 10^18, 0 / rate, 0 / rate / 10^18, tokensMinted, tokensMinted / 10^18, msg.sender);
    else:
        require msg.value
        require 10000 * msg.value / msg.value == 10000
        require rate
        require tokensMinted + (10000 * msg.value / rate) >= tokensMinted
        require tokensMinted + (10000 * msg.value / rate) <= 1000000 * 10^18
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10000 * msg.value / rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokensMinted + (10000 * msg.value / rate) >= tokensMinted
        tokensMinted += 10000 * msg.value / rate
        emit TokenPurchase(msg.value, msg.value / 10^18, 10000 * msg.value / rate, 10000 * msg.value / rate / 10^18, tokensMinted, tokensMinted / 10^18, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
