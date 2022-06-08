contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor2; offset 160
address tokenAddress;
address strategyAddress;
uint8 stor4; offset 160
address crowdsaleAddress;

function isInitialized() {
    return bool(stor2)
}

function burnStatus() {
    return bool(stor4)
}

function crowdsale() {
    return crowdsaleAddress
}

function strategy() {
    return strategyAddress
}

function _isInitialized() {
    return bool(stor2)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function onRefund(address arg1, uint256 arg2) {
    require msg.sender == stor0
    return 0
}

function onContribution(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == stor0
}

function setPricingStrategy(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    strategyAddress = arg1
}

function sub_e7221785(?) {
    require msg.sender == stor0
    require arg1 <= 6
    if arg1 > 3:
        if not stor4:
            require ext_code.size(crowdsaleAddress)
            call crowdsaleAddress.0xfcaf343e with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor4 = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xd0479abc with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
