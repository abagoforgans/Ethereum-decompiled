contract main {




// =====================  Runtime code  =====================


address batAddress;
address daiAddress;
address sub_ccc07959Address;
address wethAddress;
address sub_0cdd44a7Address;
address moneyMarketAddress;

function sub_0cdd44a7(?) {
    return sub_0cdd44a7Address
}

function weth() {
    return wethAddress
}

function sub_ccc07959(?) {
    return sub_ccc07959Address
}

function moneyMarket() {
    return moneyMarketAddress
}

function dai() {
    return daiAddress
}

function bat() {
    return batAddress
}

function _fallback() payable {
    revert
}

function sub_05fe800c(?) {
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), batAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), daiAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), sub_ccc07959Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), sub_0cdd44a7Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}



}
