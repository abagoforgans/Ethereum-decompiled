contract main {




// =====================  Runtime code  =====================


#
#  - sub_6926832c(?)
#
const sub_635af94e(?) = 'challeng', 0


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
address validatorAddress;
address sub_6b0570d0Address;
uint8 stor5; offset 160
address sub_e8ae41e3Address;
uint8 stor6; offset 160
address sub_19139092Address;
address sub_3bd7857fAddress;
mapping of struct stor8;
uint256 sub_3b7bea6c;
address sub_51d7cd61Address;
address sub_fa7424f2Address;

function sub_19139092(?) {
    return sub_19139092Address
}

function sub_240625d8(?) {
    return bool(stor5)
}

function isRegisteredService(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)].field_0)
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function validator() {
    return validatorAddress
}

function sub_3b7bea6c(?) {
    return sub_3b7bea6c
}

function sub_3bd7857f(?) {
    return sub_3bd7857fAddress
}

function sub_3e59b706(?) {
    return bool(stor6)
}

function destructor() {
    return deployerAddress
}

function sub_51d7cd61(?) {
    return sub_51d7cd61Address
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

function sub_fa7424f2(?) {
    return sub_fa7424f2Address
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
    stor5 = 1
    emit FreezeWalletLockerEvent()
}

function freezeBalanceTracker() {
    require msg.sender == deployerAddress
    stor6 = 1
    emit FreezeBalanceTrackerEvent()
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_2aa1c9d9(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_51d7cd61Address = arg1
    emit 0x4f712533: sub_51d7cd61Address, arg1
}

function sub_6ccb43c8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_fa7424f2Address = arg1
    emit 0xf21c1272: sub_fa7424f2Address, arg1
}

function setServiceActivationTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    sub_3b7bea6c = arg1
    emit ServiceActivationTimeoutEvent(arg1);
}

function isRegisteredActiveService(address arg1) {
    require calldata.size - 4 >= 32
    if not stor8[address(arg1)].field_0:
        return bool(stor8[address(arg1)].field_0)
    return block.timestamp >= stor8[address(arg1)].field_256
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
        require not stor6
        sub_19139092Address = arg1
        emit 0xb2a91d3a: sub_19139092Address, arg1
}

function sub_892860b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e8ae41e3Address != arg1:
        require not stor5
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

function deregisterService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require stor8[address(arg1)].field_0
    stor8[address(arg1)].field_0 = 0
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
    if not stor8[address(arg1)].field_0:
        stor8[address(arg1)].field_0 = 1
        stor8[address(arg1)].field_256 = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function registerServiceDeferred(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not stor8[address(arg1)].field_0:
        stor8[address(arg1)].field_0 = 1
        stor8[address(arg1)].field_256 = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
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
    require stor8[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0
    stor8[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0 = 0
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
    if not stor8[address(arg1)].field_0:
        return bool(stor8[address(arg1)].field_0)
    if block.timestamp < stor8[address(arg1)].field_256:
        return block.timestamp >= stor8[address(arg1)].field_256
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(stor8[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _29])].field_0)
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
    mem[32] = 8
    require stor8[address(arg1)].field_0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _30 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require not stor8[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0
    stor8[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0 = 1
    stor8[address(arg1)].field_768++
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor8', 8))) + stor8[address(arg1)].field_768].field_0 = sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}



}
