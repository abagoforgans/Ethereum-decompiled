contract main {


// =======================  Init code  ======================


address stor0;
uint64 stor1; offset 160
address stor1;

function _fallback() {
    require code.data[1474 len 8] > block.timestamp
    stor0 = code.data[1398 len 20]
    address(stor1.field_0) = code.data[1430 len 20]
    uint64(stor1.field_160) = code.data[1474 len 8]
    return code.data[273 len 1113]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint64 releaseTime; offset 160
address beneficiaryAddress;

function beneficiary() {
    return beneficiaryAddress
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
