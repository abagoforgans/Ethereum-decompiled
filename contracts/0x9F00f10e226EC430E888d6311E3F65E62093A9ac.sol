contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint256 stor71A1;
uint256 storC2C0;

function _fallback() {
    stor2 = code.data[674 len 20]
    stor1 = block.timestamp + (4320 * 24 * 3600)
    storC2C0 = 2 * 10^6
    stor71A1 = 2 * 10^6
    return code.data[189 len 473]
}



// =====================  Runtime code  =====================


const exponent = 10^18


mapping of uint256 stor0;
uint256 unlockDate;
address BATAddress;

function BAT() {
    return BATAddress
}

function unlockDate() {
    return unlockDate
}

function _fallback() payable {
    revert
}

function unlock() {
    require block.timestamp >= unlockDate
    stor0[address(msg.sender)] = 0
    require ext_code.size(BATAddress)
    call BATAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, 10^18 * stor0[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
