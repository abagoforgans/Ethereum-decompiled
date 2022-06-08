contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address ownerContract;

function ownerContract() {
    return ownerContract
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function createTokens(uint256 arg1, address arg2) {
    require msg.sender == ownerContract
    require arg1 > 0
    require arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
