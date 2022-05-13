contract main {




// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^17

const TOTAL_TOKEN_SUPPLY = 10000000000 * 10^18


address owner;
uint256 sub_ec68c54e;
mapping of uint8 stor2;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 initialTime;
uint256 endTime;
uint8 stor8;
uint256 weiCap;
uint256 weiRaised;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function weiCap() {
    return weiCap
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function initialTime() {
    return initialTime
}

function saleClosed() {
    return bool(stor8)
}

function sub_ec68c54e(?) {
    return sub_ec68c54e
}

function token() {
    return tokenAddress
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
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
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function closeSale() {
    require msg.sender == owner
    stor8 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= sub_ec68c54e
    sub_ec68c54e -= ext_call.return_data[0]
}

function sub_af2089c9(?) {
    require msg.sender == owner
    require stor8
    require arg2 > 0
    require arg1
    if not arg5:
        require 0 <= sub_ec68c54e
    else:
        require arg5
        require arg5 * arg2 / arg5 == arg2
        require arg5 * arg2 <= sub_ec68c54e
    walletAddress = arg1
    rate = arg2
    initialTime = arg3
    endTime = arg4
    stor8 = 0
    weiCap = arg5
    weiRaised = 0
    tokenAddress = arg6
}

function stopMinting() {
    require msg.sender == owner
    require stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args owner, sub_ec68c54e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require not stor8
    require block.timestamp >= initialTime
    require block.timestamp < endTime
    require stor2[address(arg1)]
    if not weiCap:
        require weiRaised <= 0
        require msg.value <= -weiRaised
    else:
        require weiCap
        require 10^18 * weiCap / weiCap == 10^18
        require weiRaised <= 10^18 * weiCap
        require msg.value <= (10^18 * weiCap) - weiRaised
    require msg.value >= 10^17
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyTokens(msg.value, rate, 0, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyTokens(msg.value, rate, msg.value * rate, arg1);
}

function _fallback() payable {
    require not stor8
    require block.timestamp >= initialTime
    require block.timestamp < endTime
    require stor2[address(msg.sender)]
    if not weiCap:
        require weiRaised <= 0
        require msg.value <= -weiRaised
    else:
        require weiCap
        require 10^18 * weiCap / weiCap == 10^18
        require weiRaised <= 10^18 * weiCap
        require msg.value <= (10^18 * weiCap) - weiRaised
    require msg.value >= 10^17
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyTokens(msg.value, rate, 0, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit BuyTokens(msg.value, rate, msg.value * rate, msg.sender);
}



}
