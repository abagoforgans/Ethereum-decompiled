contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[654 len 20]
    return code.data[123 len 519]
}



// =====================  Runtime code  =====================


address tradingDataAddress;

function tradingData() {
    return tradingDataAddress
}

function _fallback() payable {
    revert
}

function isOnTrading(uint64 arg1) {
    require ext_code.size(tradingDataAddress)
    call tradingDataAddress.isOnTrade(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
