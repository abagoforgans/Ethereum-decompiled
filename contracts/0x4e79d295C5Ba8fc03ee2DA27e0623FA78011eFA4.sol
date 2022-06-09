contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address stor5;
mapping of uint8 stor7;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function token() {
    return tokenAddress
}

function changeRate(uint256 arg1) {
    require 1 == bool(stor7[msg.sender])
    rate = arg1
}

function addTrustedAddress(address arg1) {
    require msg.sender == stor5
    stor7[address(arg1)] = 1
}

function removeTrustedAddress(address arg1) {
    require msg.sender == stor5
    stor7[address(arg1)] = 0
}

function transferTo(address arg1, uint256 arg2) {
    require msg.sender == stor5
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    stor0++
    require msg.sender
    require msg.value
    require msg.value >= rate
    require rate > 0
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensPurchased(msg.value, msg.value / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function buyTokens(address arg1) payable {
    stor0++
    require arg1
    require msg.value
    require msg.value >= rate
    require rate > 0
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensPurchased(msg.value, msg.value / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}



}
