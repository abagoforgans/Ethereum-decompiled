contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor2 = code.data[1031 len 20]
    stor1 = block.timestamp + (4320 * 24 * 3600)
    stor0[0x47e33e4cca71006abd77e50bf6ae087b93b19549] = 16 * 10^6
    return code.data[229 len 790]
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
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * stor0[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
