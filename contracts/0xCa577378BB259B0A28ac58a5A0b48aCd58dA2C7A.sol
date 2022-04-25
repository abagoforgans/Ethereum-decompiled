contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor2 = 0xe8c09672cfb9cfce6e2edbb01057d9fa569f97c1
    stor1 = 420912 * 24 * 3600
    stor0[0x91c594706246bed9a99cb49718b95d0f067042c8] = 300 * 10^6
    return code.data[217 len 797]
}



// =====================  Runtime code  =====================


const exponent = 10^18


mapping of uint256 stor0;
uint256 unlockDate;
address INDIAddress;

function INDI() {
    return INDIAddress
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
    require ext_code.size(INDIAddress)
    call INDIAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * stor0[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
