contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = code.data[476 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[69 len 407]
}



// =====================  Runtime code  =====================


address owner;
address nexiumAddress;
mapping of uint256 paid;

function nexium() {
    return nexiumAddress
}

function owner() {
    return owner
}

function paid(address arg1) {
    return paid[arg1]
}

function _fallback() payable {
    revert 
}

function payDiff(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(nexiumAddress)
    call nexiumAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2 - paid[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    paid[address(arg1)] = arg2
}



}
