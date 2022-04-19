contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    require code.data[756 len 20]
    require code.data[788 len 20]
    stor2 = 419654 * 3600
    stor0 = code.data[756 len 20]
    stor1 = code.data[788 len 20]
    return code.data[162 len 582]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 releaseTime;

function beneficiary() {
    return beneficiaryAddress
}

function releaseTime() {
    return releaseTime
}

function _fallback() payable {
    revert
}

function fundsAreAvailable() {
    return block.timestamp >= releaseTime
}

function release() {
    require block.timestamp >= releaseTime
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
