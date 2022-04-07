contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 947]




// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;

function pendingContractOwner() {
    return pendingContractOwner
}

function contractOwner() {
    return contractOwner
}

function constructor(address arg1) {
    require not contractOwner
    contractOwner = arg1
}

function _fallback() payable {
    if msg.value:
        emit Received(msg.value, msg.sender);
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function forward(address arg1, uint256 arg2, bytes arg3, bool arg4) {
    if contractOwner != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas 63 * gas_remaining / 64 wei
        args arg3[all]
    if ext_call.success:
        return ext_call.return_data[0]
    require not arg4
    return ext_call.return_data[0]
}



}
