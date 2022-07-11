contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
uint256 last_completed_migration;

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function last_completed_migration() {
    return last_completed_migration
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

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) {
    require msg.sender == deployerAddress
    last_completed_migration = arg1
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

function upgrade(address arg1) {
    require msg.sender == deployerAddress
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining wei
        args last_completed_migration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
