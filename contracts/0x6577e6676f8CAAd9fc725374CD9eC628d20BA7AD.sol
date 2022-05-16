contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0xfb5a551374b656c6e39787b1d3a03feab7f3a98e
    stor1 = 0xa24cb9920d882e084cc29304d1f9c80d288f8054
    stor2 = 0
    require not msg.value
    return code.data[104 len 1030]
}



// =====================  Runtime code  =====================


const name = 'TosTeamLockContract'

const RELEASE_PERIODS = (4320 * 24 * 3600)

const RELEASE_TIME = (450904 * 3600)


address tosTokenAddress;
address beneficiaryAddress;
uint256 numOfReleased;

function numOfReleased() {
    return numOfReleased
}

function beneficiary() {
    return beneficiaryAddress
}

function tosToken() {
    return tosTokenAddress
}

function _fallback() payable {
    revert
}

function release() {
    require block.timestamp >= 450904 * 3600
    require (block.timestamp - (450904 * 3600) / 4320 * 24 * 3600) + 1 > numOfReleased
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
