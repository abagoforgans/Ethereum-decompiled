contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function sub_afb863d9(?) {
    return bool(uint8(stor4.field_160))
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_9cb739b0(?) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
    return bool(uint8(stor4.field_160))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c8b1ab39(?) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function endSale() {
    require msg.sender == owner
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
    require return_data.size >= 32
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
