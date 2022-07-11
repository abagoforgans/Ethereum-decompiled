contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
mapping of uint8 stor2;
uint256 maxDriipNonce;
uint256 maxNullNonce;
uint8 stor5;

function getMaxDriipNonce() {
    return maxDriipNonce
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

function isDoubleSpenderWallet(address arg1) {
    return bool(stor2[address(arg1)])
}

function isDataAvailable() {
    return bool(stor5)
}

function getMaxNullNonce() {
    return maxNullNonce
}

function deployer() {
    return deployerAddress
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



}
