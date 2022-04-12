contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor3;

function _fallback() payable {
    stor3 = 0xf8e386eda857484f5a12e4b5daa9984e06e73705
    require not msg.value
    stor1 = block.timestamp + (6480 * 24 * 3600)
    stor0[0xd31206e625f1f30039d1fa472303e71317870a] = 14624747
    return code.data[218 len 944]
}



// =====================  Runtime code  =====================


const exponent = 10^18


mapping of uint256 allocations;
uint256 unlockDate;
uint256 entitled;
address INDAddress;

function IND() {
    return INDAddress
}

function entitled() {
    return entitled
}

function allocations(address arg1) {
    return allocations[arg1]
}

function unlockDate() {
    return unlockDate
}

function _fallback() payable {
    revert
}

function unlock() {
    require block.timestamp > unlockDate
    allocations[address(msg.sender)] = 0
    require ext_code.size(INDAddress)
    call INDAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * allocations[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
}



}
