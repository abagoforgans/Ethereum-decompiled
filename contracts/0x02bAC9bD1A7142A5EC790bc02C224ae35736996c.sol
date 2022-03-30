contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 266]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address contracts;

function contracts(bytes32 arg1) {
    return contracts[arg1]
}

function _fallback() payable {
    revert 
}

function registerContract(bytes32 arg1, address arg2) {
    require stor0 == msg.sender
    contracts[arg1] = arg2
}



}
