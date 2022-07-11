contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function _fallback() payable {
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require rate > 0
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, msg.value / rate) >> 32
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, msg.value / rate) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit TokensPurchased(msg.value, msg.value / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require rate > 0
    require rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, msg.value / rate) >> 32
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, msg.value / rate) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit TokensPurchased(msg.value, msg.value / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}



}
