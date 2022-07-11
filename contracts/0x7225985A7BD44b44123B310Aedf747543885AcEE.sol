contract main {




// =====================  Runtime code  =====================


const sub_7ae3ee1c(?) = 'add_fraudulent_trade', 0

const sub_9537aa1a(?) = 'ad', 0

const sub_e64e353f(?) = 'add_double_spender', 0

const sub_ec696d32(?) = 'add_frau', 0

const sub_f3aefa8a(?) = 'add_fraudule', 0


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
uint256 sub_3b7bea6c;
array of address sub_d9fa4b8d;
mapping of uint8 stor5;
array of uint256 sub_9f641ea7;
mapping of uint8 stor7;
array of uint256 sub_d9af20de;
mapping of uint8 stor9;
array of uint256 sub_e592f0f9;
mapping of uint8 stor11;

function fraudulentOrderHashesCount() {
    return sub_9f641ea7.length
}

function isRegisteredService(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)].field_0)
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function sub_3b7bea6c(?) {
    return sub_3b7bea6c
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function fraudulentPaymentHashesCount() {
    return sub_e592f0f9.length
}

function doubleSpenderWalletsCount() {
    return sub_d9fa4b8d.length
}

function sub_8080f008(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function isFraudulentPaymentHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function isDoubleSpenderWallet(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function sub_9630db61(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_9f641ea7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9f641ea7.length
    return sub_9f641ea7[arg1]
}

function isFraudulentTradeHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function fraudulentTradeHashesCount() {
    return sub_d9af20de.length
}

function deployer() {
    return deployerAddress
}

function sub_d9af20de(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d9af20de.length
    return sub_d9af20de[arg1]
}

function sub_d9fa4b8d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_d9fa4b8d.length
    return sub_d9fa4b8d[arg1]
}

function isFraudulentOrderHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function sub_e592f0f9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e592f0f9.length
    return sub_e592f0f9[arg1]
}

function sub_f12aaaf5(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function sub_f4bb924d(?) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
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

function setServiceActivationTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    sub_3b7bea6c = arg1
    emit ServiceActivationTimeoutEvent(arg1);
}

function isRegisteredActiveService(address arg1) {
    require calldata.size - 4 >= 32
    if not stor2[address(arg1)].field_0:
        return bool(stor2[address(arg1)].field_0)
    return block.timestamp >= stor2[address(arg1)].field_256
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

function deregisterService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require stor2[address(arg1)].field_0
    stor2[address(arg1)].field_0 = 0
    emit DeregisterServiceEvent(arg1);
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

function registerService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not stor2[address(arg1)].field_0:
        stor2[address(arg1)].field_0 = 1
        stor2[address(arg1)].field_256 = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function registerServiceDeferred(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not stor2[address(arg1)].field_0:
        stor2[address(arg1)].field_0 = 1
        stor2[address(arg1)].field_256 = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
}

function addFraudulentOrderHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require stor2[address(msg.sender)].field_0
    require block.timestamp >= stor2[address(msg.sender)].field_256
    require stor2[address(msg.sender)][2][sha3(address(mem[192 len 12], 0, 0))].field_0
    if not stor7[arg1]:
        stor7[arg1] = 1
        sub_9f641ea7.length++
        sub_9f641ea7[sub_9f641ea7.length] = arg1
        emit AddFraudulentOrderHashEvent(arg1);
}

function addFraudulentPaymentHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require stor2[address(msg.sender)].field_0
    require block.timestamp >= stor2[address(msg.sender)].field_256
    require stor2[address(msg.sender)][2][sha3(Mask(176, 0, mem[192 len 10], 0, 0))].field_0
    if not stor11[arg1]:
        stor11[arg1] = 1
        sub_e592f0f9.length++
        sub_e592f0f9[sub_e592f0f9.length] = arg1
        emit AddFraudulentPaymentHashEvent(arg1);
}

function addDoubleSpenderWallet(address arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require stor2[address(msg.sender)].field_0
    require block.timestamp >= stor2[address(msg.sender)].field_256
    require stor2[address(msg.sender)][2][sha3(Mask(200, 0, mem[192 len 7], 0, 0))].field_0
    if not stor5[address(arg1)]:
        sub_d9fa4b8d.length++
        sub_d9fa4b8d[sub_d9fa4b8d.length] = arg1
        stor5[address(arg1)] = 1
        emit AddDoubleSpenderWalletEvent(arg1);
}

function addFraudulentTradeHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require stor2[address(msg.sender)].field_0
    require block.timestamp >= stor2[address(msg.sender)].field_256
    require stor2[address(msg.sender)][2][sha3(address(mem[192 len 12], uint64('add_fraudulent_trade'), 0))].field_0
    if not stor9[arg1]:
        stor9[arg1] = 1
        sub_d9af20de.length++
        sub_d9af20de[sub_d9af20de.length] = arg1
        emit AddFraudulentTradeHashEvent(arg1);
}

function disableServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _28 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0
    stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0 = 0
    emit DisableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function isEnabledServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _29 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    if not stor2[address(arg1)].field_0:
        return bool(stor2[address(arg1)].field_0)
    if block.timestamp < stor2[address(arg1)].field_256:
        return block.timestamp >= stor2[address(arg1)].field_256
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _29])].field_0)
    return memory
      from arg2.length + ceil32(arg2.length) + 160
       len 32
}

function enableServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    mem[0] = arg1
    mem[32] = 2
    require stor2[address(arg1)].field_0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _30 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require not stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0
    stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0 = 1
    stor2[address(arg1)].field_768++
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + stor2[address(arg1)].field_768].field_0 = sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}



}
