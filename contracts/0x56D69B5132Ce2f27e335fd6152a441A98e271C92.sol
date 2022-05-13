contract main {




// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;
uint256 allocatedTokens;
uint256 stor3;
address stor4;

function allocatedTokens() {
    return allocatedTokens
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42c1867b with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        return (bool(ext_call.return_data[0]) == 1)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalizeCrowdsale() {
    require msg.sender == crowdsaleAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= stor3
    allocatedTokens = stor3 - ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    if allocatedTokens > 0:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args stor4, allocatedTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
