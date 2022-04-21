contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() {
    stor0 = code.data[584 len 32]
    stor1 = code.data[628 len 20]
    return code.data[95 len 489]
}



// =====================  Runtime code  =====================


uint256 eTH_USD_rate;
address rbInformationStoreAddress;

function ETH_USD_rate() {
    return eTH_USD_rate
}

function rbInformationStore() {
    return rbInformationStoreAddress
}

function _fallback() payable {
    revert
}

function setRate(uint256 arg1) {
    require ext_code.size(rbInformationStoreAddress)
    call rbInformationStoreAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    eTH_USD_rate = arg1
}



}
