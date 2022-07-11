contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
mapping of uint256 sub_0d790199;
array of address signers;

function sub_0d790199(?) {
    return sub_0d790199[arg1]
}

function signers(uint256 arg1) {
    require arg1 < signers.length
    return signers[arg1]
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function deployer() {
    return deployerAddress
}

function signersCount() {
    return signers.length
}

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function isSigner(address arg1) {
    return (sub_0d790199[address(arg1)] > 0)
}

function signerIndex(address arg1) {
    require sub_0d790199[address(arg1)] > 0
    return (sub_0d790199[address(arg1)] - 1)
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function setOperator(address arg1) {
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function registerSigner(address arg1) {
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if not sub_0d790199[address(arg1)]:
        signers.length++
        signers[signers.length] = arg1
        sub_0d790199[address(arg1)] = signers.length
        emit RegisterSignerEvent(arg1);
}

function signersByIndices(uint256 arg1, uint256 arg2) {
    require 0 < signers.length
    require arg1 <= arg2
    mem[100] = arg2
    mem[132] = signers.length - 1
    require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
    delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMax(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, signers.length - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = delegate.return_data[0] + -arg1 + 1
    if delegate.return_data[0] + -arg1 + 1:
        mem[128 len 32 * delegate.return_data[0] + -arg1 + 1] = code.data[2228 len 32 * delegate.return_data[0] + -arg1 + 1]
    idx = arg1
    while idx <= delegate.return_data[0]:
        require idx < signers.length
        mem[0] = 3
        require idx - arg1 < mem[96]
        mem[(32 * idx - arg1) + 128] = signers[idx]
        idx = idx + 1
        continue 
    mem[(32 * delegate.return_data[0] + -arg1 + 1) + 128] = 32
    mem[(32 * delegate.return_data[0] + -arg1 + 1) + 160] = mem[96]
    mem[(32 * delegate.return_data[0] + -arg1 + 1) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * delegate.return_data[0] + -arg1 + 1) + 160 len (32 * mem[96]) + 32]
}



}
