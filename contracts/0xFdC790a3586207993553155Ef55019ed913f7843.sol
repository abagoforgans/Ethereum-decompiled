contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address wallet1Address;
address wallet2Address;
uint256 rate;
uint256 weiRaised;
address stor6;
uint256 minTokenSum;
mapping of uint8 stor8;

function wallet2() {
    return wallet2Address
}

function wallet1() {
    return wallet1Address
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function minTokenSum() {
    return minTokenSum
}

function token() {
    return tokenAddress
}

function addTrustedAddress(address arg1) {
    require msg.sender == stor6
    stor8[address(arg1)] = 1
}

function removeTrustedAddress(address arg1) {
    require msg.sender == stor6
    stor8[address(arg1)] = 0
}

function changeRate(uint256 arg1) {
    require 1 == bool(stor8[msg.sender])
    require arg1 >= 5 * 10^10
    rate = arg1
}

function changeMinTokenSum(uint256 arg1) {
    if bool(stor8[msg.sender]) != 1:
        require msg.sender == stor6
    minTokenSum = arg1
}

function updateWallet(address arg1, address arg2) {
    require msg.sender == stor6
    if arg1:
        wallet1Address = arg1
    if arg2:
        wallet2Address = arg2
}

function transferTo(address arg1, uint256 arg2) {
    require msg.sender == stor6
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
    require msg.value / rate >= minTokenSum
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
    call wallet1Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call wallet2Address with:
       value msg.value - (msg.value / 2) wei
         gas 2300 * is_zero(value) wei
    require stor0 + 1 == stor0
}

function buyTokens(address arg1) payable {
    stor0++
    require arg1
    require msg.value
    require msg.value >= rate
    require rate > 0
    require rate
    require msg.value / rate >= minTokenSum
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
    call wallet1Address with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call wallet2Address with:
       value msg.value - (msg.value / 2) wei
         gas 2300 * is_zero(value) wei
    require stor0 + 1 == stor0
}



}
