contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#  - _fallback()
#
address tokenAddress;
uint256 price;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 raised;
uint8 stor6;
address owner; offset 8

function endTime() {
    return endTime
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

function price() {
    return price
}

function finalized() {
    return bool(stor6)
}

function raised() {
    return raised
}

function token() {
    return tokenAddress
}

function finalize() {
    require msg.sender == owner
    require not stor6
    require block.timestamp > endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6 = 1
    emit Finalized()
}



}
