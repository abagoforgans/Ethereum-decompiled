contract main {




// =====================  Runtime code  =====================


#
#  - sub_4cad91a3(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address sub_3bd7857fAddress;
address configurationAddress;
address validatorAddress;
address sub_6b0570d0Address;
uint8 stor6; offset 160
address sub_e8ae41e3Address;
uint8 stor7; offset 160
address sub_19139092Address;

function sub_19139092(?) {
    return sub_19139092Address
}

function sub_240625d8(?) {
    return bool(stor6)
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function validator() {
    return validatorAddress
}

function sub_3bd7857f(?) {
    return sub_3bd7857fAddress
}

function sub_3e59b706(?) {
    return bool(stor7)
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function sub_6b0570d0(?) {
    return sub_6b0570d0Address
}

function configuration() {
    return configurationAddress
}

function deployer() {
    return deployerAddress
}

function sub_e8ae41e3(?) {
    return sub_e8ae41e3Address
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

function freezeWalletLocker() {
    require msg.sender == deployerAddress
    stor6 = 1
    emit FreezeWalletLockerEvent()
}

function freezeBalanceTracker() {
    require msg.sender == deployerAddress
    stor7 = 1
    emit FreezeBalanceTrackerEvent()
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_01370d06(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_3bd7857fAddress != arg1:
        sub_3bd7857fAddress = arg1
        emit 0x7998fa7b: sub_3bd7857fAddress, arg1
}

function sub_6792ce6e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_6b0570d0Address != arg1:
        sub_6b0570d0Address = arg1
        emit 0xc9f3f00c: sub_6b0570d0Address, arg1
}

function setValidator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if validatorAddress != arg1:
        validatorAddress = arg1
        emit 0x1882af94: validatorAddress, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
}

function sub_598b75ad(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_19139092Address != arg1:
        require not stor7
        sub_19139092Address = arg1
        emit 0xb2a91d3a: sub_19139092Address, arg1
}

function sub_892860b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e8ae41e3Address != arg1:
        require not stor6
        sub_e8ae41e3Address = arg1
        emit 0xa44d361e: sub_e8ae41e3Address, arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}



}
