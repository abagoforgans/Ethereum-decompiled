contract main {




// =====================  Runtime code  =====================


#
#  - sub_0f200f9b(?)
#  - claimAndStage(address arg1, uint256 arg2)
#  - sub_949e2ae3(?)
#
const sub_26789c75(?) = 'deprive', 0

const sub_94c7cfa9(?) = '', 0


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
uint256 sub_3b7bea6c;
address sub_af30b312Address;
mapping of uint256 depositedBalance;
array of struct stor7;
array of struct stor8;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
array of struct deposit;
array of struct stor13;
array of struct stor16;
mapping of uint256 stor17;
mapping of struct sub_59ed7c66;
mapping of struct sub_d0427b3c;
mapping of uint256 sub_834cd3d6;
mapping of uint256 stagedBalance;
mapping of uint256 sub_0bf0b710;

function sub_0bf0b710(?) {
    require calldata.size - 4 >= 32
    return sub_0bf0b710[arg1]
}

function stagedBalance(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    return stagedBalance[address(arg1)][address(arg2)][arg3]
}

function isRegisteredService(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)].field_0)
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

function depositsCount() {
    return deposit.length
}

function operator() {
    return operatorAddress
}

function sub_59ed7c66(?) {
    require calldata.size - 4 >= 32
    return sub_59ed7c66[arg1].field_0, sub_59ed7c66[arg1].field_256, sub_59ed7c66[arg1].field_512
}

function configuration() {
    return configurationAddress
}

function depositedBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return depositedBalance[address(arg1)][arg2]
}

function sub_834cd3d6(?) {
    require calldata.size - 4 >= 96
    return sub_834cd3d6[arg1][arg2][arg3]
}

function inUseCurrenciesCount() {
    return stor16.length
}

function sub_af30b312(?) {
    return sub_af30b312Address
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < deposit.length
    return deposit[arg1].field_0, deposit[arg1].field_256, deposit[arg1].field_512, deposit[arg1].field_768
}

function sub_d0427b3c(?) {
    require calldata.size - 4 >= 96
    return sub_d0427b3c[arg1][arg2][arg3].field_0, 
           sub_d0427b3c[arg1][arg2][arg3].field_256,
           sub_d0427b3c[arg1][arg2][arg3].field_512
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
    if not stor3[address(arg1)].field_0:
        return bool(stor3[address(arg1)].field_0)
    return block.timestamp >= stor3[address(arg1)].field_256
}

function sub_d3b41bd2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_af30b312Address != arg1:
        sub_af30b312Address = arg1
        emit 0xee9ef6d5: sub_af30b312Address, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
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
    require stor3[address(arg1)].field_0
    stor3[address(arg1)].field_0 = 0
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
    if not stor3[address(arg1)].field_0:
        stor3[address(arg1)].field_0 = 1
        stor3[address(arg1)].field_256 = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function registerServiceDeferred(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not stor3[address(arg1)].field_0:
        stor3[address(arg1)].field_0 = 1
        stor3[address(arg1)].field_256 = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
}

function depriveFractional(address arg1) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require stor3[address(msg.sender)].field_0
    require block.timestamp >= stor3[address(msg.sender)].field_256
    require stor3[address(msg.sender)][2][sha3(mem[192 len 7], 0 % 72057594037927936)].field_0
    sub_59ed7c66[address(arg1)].field_0 = 0
    sub_0bf0b710[address(arg1)]++
    sub_59ed7c66[address(arg1)].field_256 = sub_0bf0b710[address(arg1)] + 1
    sub_59ed7c66[address(arg1)].field_512 = 0
    emit DepriveFractionalEvent(arg1);
}

function depriveAbsolute(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[192 len 0] = None
    require stor3[address(msg.sender)].field_0
    require block.timestamp >= stor3[address(msg.sender)].field_256
    require stor3[address(msg.sender)][2][sha3(mem[192 len 7], 0 % 72057594037927936)].field_0
    sub_d0427b3c[address(arg1)][address(arg2)][arg3].field_0 = 0
    sub_0bf0b710[address(arg1)]++
    sub_d0427b3c[address(arg1)][address(arg2)][arg3].field_256 = sub_0bf0b710[address(arg1)] + 1
    sub_d0427b3c[address(arg1)][address(arg2)][arg3].field_512 = 0
    emit DepriveAbsoluteEvent(address(arg1), address(arg2), arg3);
}

function rewardAbsolute(address arg1, int256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1
    mem[192 len 0] = None
    require stor3[address(msg.sender)].field_0
    require block.timestamp >= stor3[address(msg.sender)].field_256
    require stor3[address(msg.sender)][2][sha3(mem[192 len 6], 0 % 281474976710656)].field_0
    sub_d0427b3c[address(arg1)][address(arg3)][arg4].field_0 = arg2
    sub_0bf0b710[address(arg1)]++
    sub_d0427b3c[address(arg1)][address(arg3)][arg4].field_256 = sub_0bf0b710[address(arg1)] + 1
    require arg5 + block.timestamp >= block.timestamp
    sub_d0427b3c[address(arg1)][address(arg3)][arg4].field_512 = arg5 + block.timestamp
    emit RewardAbsoluteEvent(address(arg1), arg2, address(arg3), arg4, arg5);
}

function sub_477fbc39(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _5 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_5] = address(cd[s])
        mem[_5 + 32] = cd[(s + 32)]
        mem[t] = _5
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    emit CloseAccrualPeriodEvent()
}

function rewardFractional(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1
    mem[192 len 0] = None
    require stor3[address(msg.sender)].field_0
    require block.timestamp >= stor3[address(msg.sender)].field_256
    require stor3[address(msg.sender)][2][sha3(mem[192 len 6], 0 % 281474976710656)].field_0
    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
    delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMax(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_59ed7c66[address(arg1)].field_0 = delegate.return_data[0]
    sub_0bf0b710[address(arg1)]++
    sub_59ed7c66[address(arg1)].field_256 = sub_0bf0b710[address(arg1)] + 1
    require arg3 + block.timestamp >= block.timestamp
    sub_59ed7c66[address(arg1)].field_512 = arg3 + block.timestamp
    emit RewardFractionalEvent(address(arg1), arg2, arg3);
}

function depositedFractionalBalance(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.toInt256(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -1 == depositedBalance[address(arg1)][arg2]:
        require delegate.return_data[0] != 0x8000000000000000000000000000000000000000000000000000000000000000
    if -1 == delegate.return_data[0]:
        require depositedBalance[address(arg1)][arg2] != 0x8000000000000000000000000000000000000000000000000000000000000000
    if not delegate.return_data[0]:
        if delegate.return_data[0] * depositedBalance[address(arg1)][arg2] == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require delegate.return_data[0] != -1
        if delegate.return_data[0]:
            return (delegate.return_data[0] * depositedBalance[address(arg1)][arg2] / delegate.return_data[0])
    else:
        if delegate.return_data[0]:
            require delegate.return_data[0] * depositedBalance[address(arg1)][arg2] / delegate.return_data[0] == depositedBalance[address(arg1)][arg2]
            if delegate.return_data[0] * depositedBalance[address(arg1)][arg2] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require delegate.return_data[0] != -1
            if delegate.return_data[0]:
                return (delegate.return_data[0] * depositedBalance[address(arg1)][arg2] / delegate.return_data[0])
    revert
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
    require stor3[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0
    stor3[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0 = 0
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
    if not stor3[address(arg1)].field_0:
        return bool(stor3[address(arg1)].field_0)
    if block.timestamp < stor3[address(arg1)].field_256:
        return block.timestamp >= stor3[address(arg1)].field_256
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(stor3[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _29])].field_0)
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
    mem[32] = 3
    require stor3[address(arg1)].field_0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _30 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require not stor3[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0
    stor3[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0 = 1
    stor3[address(arg1)].field_768++
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + stor3[address(arg1)].field_768].field_0 = sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function inUseCurrenciesByIndices(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require 0 < stor16.length
    require arg1 <= arg2
    mem[100] = arg2
    mem[132] = stor16.length - 1
    require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
    delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMax(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, stor16.length - 1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = delegate.return_data[0] + -arg1 + 1
    mem[64] = ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 128
    if not delegate.return_data[0] + -arg1 + 1:
        idx = arg1
        while idx <= delegate.return_data[0]:
            require idx < stor16.length
            mem[0] = 16
            _27 = mem[64]
            mem[64] = mem[64] + 64
            mem[_27] = stor16[idx].field_0
            mem[_27 + 32] = stor16[idx].field_256
            require idx - arg1 < mem[ceil32(return_data.size) + 96]
            mem[ceil32(return_data.size) + (32 * idx - arg1) + 128] = _27
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _30:
            _45 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_45 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _29 + (64 * _30) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 192
    mem[ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 128] = 0
    mem[ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 160] = 0
    mem[var41001] = ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 128
    s = var41001
    idx = var41002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 128] = 0
        mem[ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * delegate.return_data[0] + -arg1 + 1) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg1
    while idx <= delegate.return_data[0]:
        require idx < stor16.length
        mem[0] = 16
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = stor16[idx].field_0
        mem[_59 + 32] = stor16[idx].field_256
        require idx - arg1 < mem[ceil32(return_data.size) + 96]
        mem[ceil32(return_data.size) + (32 * idx - arg1) + 128] = _59
        idx = idx + 1
        continue 
    _61 = mem[64]
    mem[mem[64]] = 32
    _62 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _62:
        _67 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_67 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _61 + (64 * _62) + -mem[64] + 64
}

function _fallback() payable {
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.toNonZeroInt256(uint256 arg1) with:
         gas gas_remaining wei
        args msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        require delegate.return_data[0] + depositedBalance[0][0] < depositedBalance[0][0]
    else:
        if delegate.return_data[0] + depositedBalance[0][0] < depositedBalance[0][0]:
            require delegate.return_data[0] < 0
            require delegate.return_data[0] + depositedBalance[0][0] < depositedBalance[0][0]
    depositedBalance[0][0] += delegate.return_data[0]
    stor7[0][0].field_0++
    stor7[0][0][stor7[0][0].field_0].field_0 = delegate.return_data[0] + depositedBalance[0][0]
    stor7[0][0][stor7[0][0].field_0].field_256 = block.number
    if depositedBalance[0][0]:
        if stor9[0][0]:
            deposit.length++
            deposit[deposit.length].field_0 = delegate.return_data[0]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = delegate.return_data[0]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
        else:
            if not stor9[0][0]:
                stor8.length++
                stor8[stor8.length].field_0 = 0
                stor8[stor8.length].field_256 = 0
                stor8[stor8.length].field_256 = 0
                stor9[0][0] = stor8.length
            if not stor11[0][0]:
                stor10.length++
                stor10[stor10.length].field_0 = 0
                stor10[stor10.length].field_256 = 0
                stor10[stor10.length].field_256 = 0
                stor11[0][0] = stor10.length
            deposit.length++
            deposit[deposit.length].field_0 = delegate.return_data[0]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = delegate.return_data[0]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
    else:
        if stor9[0][0]:
            if stor9[0][0] > 0:
                require stor9[0][0] - 1 < stor8.length
                if stor9[0][0] < stor8.length:
                    require stor8.length - 1 < stor8.length
                    require stor9[0][0] - 1 < stor8.length
                    stor8[stor9[0][0] - 1].field_0 = stor8[stor8.length - 1].field_0
                    stor8[stor9[0][0] - 1].field_256 = stor8[stor8.length - 1].field_256
                    stor9[stor8[stor9[0][0] - 1].field_0][stor8[stor9[0][0] - 1].field_256] = stor9[0][0]
                stor8.length--
                if stor8.length > stor8.length - 1:
                    idx = 2 * stor8.length - 1
                    while 2 * stor8.length > idx:
                        stor8[idx].field_0 = 0
                        stor8[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor9[stor8[stor9[0][0] - 1].field_0][stor8[stor9[0][0] - 1].field_256] = 0
            deposit.length++
            deposit[deposit.length].field_0 = delegate.return_data[0]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = delegate.return_data[0]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
        else:
            if stor9[0][0]:
                deposit.length++
                deposit[deposit.length].field_0 = delegate.return_data[0]
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = 0
                deposit[deposit.length].field_768 = 0
                stor13[0][0].field_0++
                stor13[0][0][stor13[0][0].field_0].field_0 = delegate.return_data[0]
                stor13[0][0][stor13[0][0].field_0].field_256 = block.number
                stor13[0][0][stor13[0][0].field_0].field_512 = 0
                stor13[0][0][stor13[0][0].field_0].field_768 = 0
                if not stor17[0][0]:
                    stor16.length++
                    stor16[stor16.length].field_0 = 0
                    stor16[stor16.length].field_256 = 0
                    stor16[stor16.length].field_256 = 0
                    stor17[0][0] = stor16.length
            else:
                if not stor9[0][0]:
                    stor8.length++
                    stor8[stor8.length].field_0 = 0
                    stor8[stor8.length].field_256 = 0
                    stor8[stor8.length].field_256 = 0
                    stor9[0][0] = stor8.length
                if not stor11[0][0]:
                    stor10.length++
                    stor10[stor10.length].field_0 = 0
                    stor10[stor10.length].field_256 = 0
                    stor10[stor10.length].field_256 = 0
                    stor11[0][0] = stor10.length
                deposit.length++
                deposit[deposit.length].field_0 = delegate.return_data[0]
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = 0
                deposit[deposit.length].field_768 = 0
                stor13[0][0].field_0++
                stor13[0][0][stor13[0][0].field_0].field_0 = delegate.return_data[0]
                stor13[0][0][stor13[0][0].field_0].field_256 = block.number
                stor13[0][0][stor13[0][0].field_0].field_512 = 0
                stor13[0][0][stor13[0][0].field_0].field_768 = 0
                if not stor17[0][0]:
                    stor16.length++
                    stor16[stor16.length].field_0 = 0
                    stor16[stor16.length].field_256 = 0
                    stor16[stor16.length].field_256 = 0
                    stor17[0][0] = stor16.length
    emit ReceiveEvent(msg.sender, delegate.return_data[0], 0, 0);
}

function receiveEthersTo(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.toNonZeroInt256(uint256 arg1) with:
         gas gas_remaining wei
        args msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, delegate.return_data[4 len 28] < 0:
        require 0, delegate.return_data[4 len 28] + depositedBalance[0][0] < depositedBalance[0][0]
    else:
        if 0, delegate.return_data[4 len 28] + depositedBalance[0][0] < depositedBalance[0][0]:
            require 0, delegate.return_data[4 len 28] < 0
            require 0, delegate.return_data[4 len 28] + depositedBalance[0][0] < depositedBalance[0][0]
    depositedBalance[0][0] += 0, delegate.return_data[4 len 28]
    stor7[0][0].field_0++
    stor7[0][0][stor7[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28] + depositedBalance[0][0]
    stor7[0][0][stor7[0][0].field_0].field_256 = block.number
    if depositedBalance[0][0]:
        if stor9[0][0]:
            deposit.length++
            deposit[deposit.length].field_0 = 0, delegate.return_data[4 len 28]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
        else:
            if not stor9[0][0]:
                stor8.length++
                stor8[stor8.length].field_0 = 0
                stor8[stor8.length].field_256 = 0
                stor8[stor8.length].field_256 = 0
                stor9[0][0] = stor8.length
            if not stor11[0][0]:
                stor10.length++
                stor10[stor10.length].field_0 = 0
                stor10[stor10.length].field_256 = 0
                stor10[stor10.length].field_256 = 0
                stor11[0][0] = stor10.length
            deposit.length++
            deposit[deposit.length].field_0 = 0, delegate.return_data[4 len 28]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
    else:
        if stor9[0][0]:
            if stor9[0][0] > 0:
                require stor9[0][0] - 1 < stor8.length
                if stor9[0][0] < stor8.length:
                    require stor8.length - 1 < stor8.length
                    require stor9[0][0] - 1 < stor8.length
                    stor8[stor9[0][0] - 1].field_0 = stor8[stor8.length - 1].field_0
                    stor8[stor9[0][0] - 1].field_256 = stor8[stor8.length - 1].field_256
                    stor9[stor8[stor9[0][0] - 1].field_0][stor8[stor9[0][0] - 1].field_256] = stor9[0][0]
                stor8.length--
                if stor8.length > stor8.length - 1:
                    idx = 2 * stor8.length - 1
                    while 2 * stor8.length > idx:
                        stor8[idx].field_0 = 0
                        stor8[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor9[stor8[stor9[0][0] - 1].field_0][stor8[stor9[0][0] - 1].field_256] = 0
            deposit.length++
            deposit[deposit.length].field_0 = 0, delegate.return_data[4 len 28]
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = 0
            deposit[deposit.length].field_768 = 0
            stor13[0][0].field_0++
            stor13[0][0][stor13[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28]
            stor13[0][0][stor13[0][0].field_0].field_256 = block.number
            stor13[0][0][stor13[0][0].field_0].field_512 = 0
            stor13[0][0][stor13[0][0].field_0].field_768 = 0
            if not stor17[0][0]:
                stor16.length++
                stor16[stor16.length].field_0 = 0
                stor16[stor16.length].field_256 = 0
                stor16[stor16.length].field_256 = 0
                stor17[0][0] = stor16.length
        else:
            if stor9[0][0]:
                deposit.length++
                deposit[deposit.length].field_0 = 0, delegate.return_data[4 len 28]
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = 0
                deposit[deposit.length].field_768 = 0
                stor13[0][0].field_0++
                stor13[0][0][stor13[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28]
                stor13[0][0][stor13[0][0].field_0].field_256 = block.number
                stor13[0][0][stor13[0][0].field_0].field_512 = 0
                stor13[0][0][stor13[0][0].field_0].field_768 = 0
                if not stor17[0][0]:
                    stor16.length++
                    stor16[stor16.length].field_0 = 0
                    stor16[stor16.length].field_256 = 0
                    stor16[stor16.length].field_256 = 0
                    stor17[0][0] = stor16.length
            else:
                if not stor9[0][0]:
                    stor8.length++
                    stor8[stor8.length].field_0 = 0
                    stor8[stor8.length].field_256 = 0
                    stor8[stor8.length].field_256 = 0
                    stor9[0][0] = stor8.length
                if not stor11[0][0]:
                    stor10.length++
                    stor10[stor10.length].field_0 = 0
                    stor10[stor10.length].field_256 = 0
                    stor10[stor10.length].field_256 = 0
                    stor11[0][0] = stor10.length
                deposit.length++
                deposit[deposit.length].field_0 = 0, delegate.return_data[4 len 28]
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = 0
                deposit[deposit.length].field_768 = 0
                stor13[0][0].field_0++
                stor13[0][0][stor13[0][0].field_0].field_0 = 0, delegate.return_data[4 len 28]
                stor13[0][0][stor13[0][0].field_0].field_256 = block.number
                stor13[0][0][stor13[0][0].field_0].field_512 = 0
                stor13[0][0][stor13[0][0].field_0].field_768 = 0
                if not stor17[0][0]:
                    stor16.length++
                    stor16[stor16.length].field_0 = 0
                    stor16[stor16.length].field_256 = 0
                    stor16[stor16.length].field_256 = 0
                    stor17[0][0] = stor16.length
    emit ReceiveEvent(address arg1, int256 arg2, address arg3, uint256 arg4):
                      address(arg1),
                      0,
                      delegate.return_data[4 len 28],
                      0,
                      0,
}

function receiveTokens(string arg1, int256 arg2, address arg3, uint256 arg4, string arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require calldata.size > arg5 + 35
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg5.length) + 160 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.isNonZeroPositiveInt256(int256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0]
    require ext_code.size(sub_af30b312Address)
    call sub_af30b312Address.transferController(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg3), Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReceiveSignature() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
         gas gas_remaining wei
        args msg.sender, this.address, arg2, address(arg3), arg4
    require delegate.return_code
    if arg2 < 0:
        require arg2 + depositedBalance[address(arg3)][arg4] < depositedBalance[address(arg3)][arg4]
    else:
        if arg2 + depositedBalance[address(arg3)][arg4] < depositedBalance[address(arg3)][arg4]:
            require arg2 < 0
            require arg2 + depositedBalance[address(arg3)][arg4] < depositedBalance[address(arg3)][arg4]
    depositedBalance[address(arg3)][arg4] += arg2
    stor7[address(arg3)][arg4].field_0++
    stor7[address(arg3)][arg4][stor7[address(arg3)][arg4].field_0].field_0 = arg2 + depositedBalance[address(arg3)][arg4]
    stor7[address(arg3)][arg4][stor7[address(arg3)][arg4].field_0].field_256 = block.number
    if depositedBalance[address(arg3)][arg4]:
        if stor9[address(arg3)][arg4]:
            deposit.length++
            deposit[deposit.length].field_0 = arg2
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg3
            deposit[deposit.length].field_768 = arg4
            stor13[address(arg3)][arg4].field_0++
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_0 = arg2
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_256 = block.number
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_512 = arg3
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_768 = arg4
            if not stor17[address(arg3)][arg4]:
                stor16.length++
                stor16[stor16.length].field_0 = arg3
                stor16[stor16.length].field_256 = arg4
                stor17[address(arg3)][arg4] = stor16.length
        else:
            if not stor9[address(arg3)][arg4]:
                stor8.length++
                stor8[stor8.length].field_0 = arg3
                stor8[stor8.length].field_256 = arg4
                stor9[address(arg3)][arg4] = stor8.length
            if not stor11[address(arg3)][arg4]:
                stor10.length++
                stor10[stor10.length].field_0 = arg3
                stor10[stor10.length].field_256 = arg4
                stor11[address(arg3)][arg4] = stor10.length
            deposit.length++
            deposit[deposit.length].field_0 = arg2
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg3
            deposit[deposit.length].field_768 = arg4
            stor13[address(arg3)][arg4].field_0++
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_0 = arg2
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_256 = block.number
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_512 = arg3
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_768 = arg4
            if not stor17[address(arg3)][arg4]:
                stor16.length++
                stor16[stor16.length].field_0 = arg3
                stor16[stor16.length].field_256 = arg4
                stor17[address(arg3)][arg4] = stor16.length
    else:
        if not stor9[address(arg3)][arg4]:
            if stor9[address(arg3)][arg4]:
                deposit.length++
                deposit[deposit.length].field_0 = arg2
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = arg3
                deposit[deposit.length].field_768 = arg4
                stor13[address(arg3)][arg4].field_0++
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_0 = arg2
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_256 = block.number
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_512 = arg3
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_768 = arg4
                if not stor17[address(arg3)][arg4]:
                    stor16.length++
                    stor16[stor16.length].field_0 = arg3
                    stor16[stor16.length].field_256 = arg4
                    stor17[address(arg3)][arg4] = stor16.length
            else:
                if not stor9[address(arg3)][arg4]:
                    stor8.length++
                    stor8[stor8.length].field_0 = arg3
                    stor8[stor8.length].field_256 = arg4
                    stor9[address(arg3)][arg4] = stor8.length
                if not stor11[address(arg3)][arg4]:
                    stor10.length++
                    stor10[stor10.length].field_0 = arg3
                    stor10[stor10.length].field_256 = arg4
                    stor11[address(arg3)][arg4] = stor10.length
                deposit.length++
                deposit[deposit.length].field_0 = arg2
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = arg3
                deposit[deposit.length].field_768 = arg4
                stor13[address(arg3)][arg4].field_0++
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_0 = arg2
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_256 = block.number
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_512 = arg3
                stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_768 = arg4
                if not stor17[address(arg3)][arg4]:
                    stor16.length++
                    stor16[stor16.length].field_0 = arg3
                    stor16[stor16.length].field_256 = arg4
                    stor17[address(arg3)][arg4] = stor16.length
        else:
            if stor9[address(arg3)][arg4] > 0:
                require stor9[address(arg3)][arg4] - 1 < stor8.length
                if stor9[address(arg3)][arg4] < stor8.length:
                    require stor8.length - 1 < stor8.length
                    require stor9[address(arg3)][arg4] - 1 < stor8.length
                    stor8[stor9[address(arg3)][arg4] - 1].field_0 = stor8[stor8.length - 1].field_0
                    stor8[stor9[address(arg3)][arg4] - 1].field_256 = stor8[stor8.length - 1].field_256
                    stor9[stor8[stor9[address(arg3)][arg4] - 1].field_0][stor8[stor9[address(arg3)][arg4] - 1].field_256] = stor9[address(arg3)][arg4]
                stor8.length--
                if stor8.length > stor8.length - 1:
                    idx = 2 * stor8.length - 1
                    while 2 * stor8.length > idx:
                        stor8[idx].field_0 = 0
                        stor8[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor9[stor8[stor9[address(arg3)][arg4] - 1].field_0][stor8[stor9[address(arg3)][arg4] - 1].field_256] = 0
            deposit.length++
            deposit[deposit.length].field_0 = arg2
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg3
            deposit[deposit.length].field_768 = arg4
            stor13[address(arg3)][arg4].field_0++
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_0 = arg2
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_256 = block.number
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_512 = arg3
            stor13[address(arg3)][arg4][stor13[address(arg3)][arg4].field_0].field_768 = arg4
            if not stor17[address(arg3)][arg4]:
                stor16.length++
                stor16[stor16.length].field_0 = arg3
                stor16[stor16.length].field_256 = arg4
                stor17[address(arg3)][arg4] = stor16.length
    emit ReceiveEvent(msg.sender, arg2, address(arg3), arg4);
}

function receiveTokensTo(address arg1, string arg2, int256 arg3, address arg4, uint256 arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require calldata.size > arg6 + 35
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 160 >= 128 and ceil32(arg2.length) + ceil32(arg6.length) + 160 <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.isNonZeroPositiveInt256(int256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28]
    require ext_code.size(sub_af30b312Address)
    call sub_af30b312Address.transferController(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg4), Array(len=arg6.length, data=arg6[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReceiveSignature() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
         gas gas_remaining wei
        args msg.sender, this.address, arg3, address(arg4), arg5
    require delegate.return_code
    if arg3 < 0:
        require arg3 + depositedBalance[address(arg4)][arg5] < depositedBalance[address(arg4)][arg5]
    else:
        if arg3 + depositedBalance[address(arg4)][arg5] < depositedBalance[address(arg4)][arg5]:
            require arg3 < 0
            require arg3 + depositedBalance[address(arg4)][arg5] < depositedBalance[address(arg4)][arg5]
    depositedBalance[address(arg4)][arg5] += arg3
    stor7[address(arg4)][arg5].field_0++
    stor7[address(arg4)][arg5][stor7[address(arg4)][arg5].field_0].field_0 = arg3 + depositedBalance[address(arg4)][arg5]
    stor7[address(arg4)][arg5][stor7[address(arg4)][arg5].field_0].field_256 = block.number
    if depositedBalance[address(arg4)][arg5]:
        if stor9[address(arg4)][arg5]:
            deposit.length++
            deposit[deposit.length].field_0 = arg3
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg4
            deposit[deposit.length].field_768 = arg5
            stor13[address(arg4)][arg5].field_0++
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_0 = arg3
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_256 = block.number
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_512 = arg4
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_768 = arg5
            if not stor17[address(arg4)][arg5]:
                stor16.length++
                stor16[stor16.length].field_0 = arg4
                stor16[stor16.length].field_256 = arg5
                stor17[address(arg4)][arg5] = stor16.length
        else:
            if not stor9[address(arg4)][arg5]:
                stor8.length++
                stor8[stor8.length].field_0 = arg4
                stor8[stor8.length].field_256 = arg5
                stor9[address(arg4)][arg5] = stor8.length
            if not stor11[address(arg4)][arg5]:
                stor10.length++
                stor10[stor10.length].field_0 = arg4
                stor10[stor10.length].field_256 = arg5
                stor11[address(arg4)][arg5] = stor10.length
            deposit.length++
            deposit[deposit.length].field_0 = arg3
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg4
            deposit[deposit.length].field_768 = arg5
            stor13[address(arg4)][arg5].field_0++
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_0 = arg3
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_256 = block.number
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_512 = arg4
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_768 = arg5
            if not stor17[address(arg4)][arg5]:
                stor16.length++
                stor16[stor16.length].field_0 = arg4
                stor16[stor16.length].field_256 = arg5
                stor17[address(arg4)][arg5] = stor16.length
    else:
        if not stor9[address(arg4)][arg5]:
            if stor9[address(arg4)][arg5]:
                deposit.length++
                deposit[deposit.length].field_0 = arg3
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = arg4
                deposit[deposit.length].field_768 = arg5
                stor13[address(arg4)][arg5].field_0++
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_0 = arg3
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_256 = block.number
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_512 = arg4
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_768 = arg5
                if not stor17[address(arg4)][arg5]:
                    stor16.length++
                    stor16[stor16.length].field_0 = arg4
                    stor16[stor16.length].field_256 = arg5
                    stor17[address(arg4)][arg5] = stor16.length
            else:
                if not stor9[address(arg4)][arg5]:
                    stor8.length++
                    stor8[stor8.length].field_0 = arg4
                    stor8[stor8.length].field_256 = arg5
                    stor9[address(arg4)][arg5] = stor8.length
                if not stor11[address(arg4)][arg5]:
                    stor10.length++
                    stor10[stor10.length].field_0 = arg4
                    stor10[stor10.length].field_256 = arg5
                    stor11[address(arg4)][arg5] = stor10.length
                deposit.length++
                deposit[deposit.length].field_0 = arg3
                deposit[deposit.length].field_256 = block.number
                deposit[deposit.length].field_512 = arg4
                deposit[deposit.length].field_768 = arg5
                stor13[address(arg4)][arg5].field_0++
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_0 = arg3
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_256 = block.number
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_512 = arg4
                stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_768 = arg5
                if not stor17[address(arg4)][arg5]:
                    stor16.length++
                    stor16[stor16.length].field_0 = arg4
                    stor16[stor16.length].field_256 = arg5
                    stor17[address(arg4)][arg5] = stor16.length
        else:
            if stor9[address(arg4)][arg5] > 0:
                require stor9[address(arg4)][arg5] - 1 < stor8.length
                if stor9[address(arg4)][arg5] < stor8.length:
                    require stor8.length - 1 < stor8.length
                    require stor9[address(arg4)][arg5] - 1 < stor8.length
                    stor8[stor9[address(arg4)][arg5] - 1].field_0 = stor8[stor8.length - 1].field_0
                    stor8[stor9[address(arg4)][arg5] - 1].field_256 = stor8[stor8.length - 1].field_256
                    stor9[stor8[stor9[address(arg4)][arg5] - 1].field_0][stor8[stor9[address(arg4)][arg5] - 1].field_256] = stor9[address(arg4)][arg5]
                stor8.length--
                if stor8.length > stor8.length - 1:
                    idx = 2 * stor8.length - 1
                    while 2 * stor8.length > idx:
                        stor8[idx].field_0 = 0
                        stor8[idx].field_256 = 0
                        idx = idx + 2
                        continue 
                stor9[stor8[stor9[address(arg4)][arg5] - 1].field_0][stor8[stor9[address(arg4)][arg5] - 1].field_256] = 0
            deposit.length++
            deposit[deposit.length].field_0 = arg3
            deposit[deposit.length].field_256 = block.number
            deposit[deposit.length].field_512 = arg4
            deposit[deposit.length].field_768 = arg5
            stor13[address(arg4)][arg5].field_0++
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_0 = arg3
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_256 = block.number
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_512 = arg4
            stor13[address(arg4)][arg5][stor13[address(arg4)][arg5].field_0].field_768 = arg5
            if not stor17[address(arg4)][arg5]:
                stor16.length++
                stor16[stor16.length].field_0 = arg4
                stor16[stor16.length].field_256 = arg5
                stor17[address(arg4)][arg5] = stor16.length
    emit ReceiveEvent(address(arg1), arg3, address(arg4), arg5);
}



}
