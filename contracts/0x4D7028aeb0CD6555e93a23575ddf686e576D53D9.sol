contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = 450904 * 3600
    stor1 = 0xfb5a551374b656c6e39787b1d3a03feab7f3a98e
    stor2 = 0x4e4da11565bbcdd3846f70ba7b99d004c320f808
    stor3 = 0
    require not msg.value
    return code.data[115 len 860]
}



// =====================  Runtime code  =====================


const RELEASE_PERIODS = (4320 * 24 * 3600)


uint256 RELEASE_TIME;
address tosTokenAddress;
address beneficiaryAddress;
uint256 numOfReleased;

function numOfReleased() {
    return numOfReleased
}

function beneficiary() {
    return beneficiaryAddress
}

function RELEASE_TIME() {
    return RELEASE_TIME
}

function tosToken() {
    return tosTokenAddress
}

function _fallback() payable {
    revert
}

function test(uint256 arg1) {
    RELEASE_TIME = arg1
}

function release() {
    require block.timestamp >= RELEASE_TIME
    require (block.timestamp - RELEASE_TIME / 4320 * 24 * 3600) + 1 > numOfReleased
    require ext_code.size(tosTokenAddress)
    call tosTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 30 * ext_call.return_data[0] / ext_call.return_data[0] == 30
    require 30 * ext_call.return_data[0] / 100 > 0
    require ext_code.size(tosTokenAddress)
    call tosTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, 30 * ext_call.return_data[0] / 100
    require ext_call.success
    require ext_call.return_data[0]
    require numOfReleased + 1 >= numOfReleased
    numOfReleased++
}



}
