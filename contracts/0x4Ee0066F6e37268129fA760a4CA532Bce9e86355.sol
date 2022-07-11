contract main {




// =====================  Runtime code  =====================


const sub_b78272e0(?) = 'operational_mode', 0


uint8 stor0;
address stor0;
address deployerAddress; offset 8
array of uint256 stor1;
uint256 sub_3b7bea6c;
uint8 sub_0f4e7469;
array of struct updateDelayBlocks;
array of struct confirmationBlocks;
array of struct stor7;
array of struct stor8;
array of struct stor9;
array of struct currencyPaymentFeesCount;
array of struct tradeMakerMinimumFee;
array of struct tradeTakerMinimumFee;
array of struct paymentMinimumFee;
array of struct currencyPaymentMinimumFeesCount;
array of struct feeCurrenciesCount;
array of struct walletLockTimeout;
array of struct cancelOrderChallengeTimeout;
array of struct settlementChallengeTimeout;
array of struct fraudStakeFraction;
array of struct walletSettlementStakeFraction;
array of struct operatorSettlementStakeFraction;
array of struct operatorSettlementStake;
uint256 sub_b6bf4176;
uint8 sub_d7f0f971;

function sub_0f4e7469(?) {
    require sub_0f4e7469 < 2
    return sub_0f4e7469
}

function feeCurrenciesCount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return feeCurrenciesCount[address(arg1)][arg2].field_0
}

function paymentMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 0 < paymentMinimumFee.length
    require paymentMinimumFee.length - 1 >= 0
    require paymentMinimumFee.length - 1 < paymentMinimumFee.length
    idx = paymentMinimumFee.length - 1
    while arg1 < paymentMinimumFee[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < paymentMinimumFee.length
        mem[0] = 13
        idx = idx - 1
        continue 
    if idx < paymentMinimumFee.length:
        return paymentMinimumFee[idx].field_256
    revert
}

function walletSettlementStakeFraction() {
    require 0 < walletSettlementStakeFraction.length
    require walletSettlementStakeFraction.length - 1 >= 0
    require walletSettlementStakeFraction.length - 1 < walletSettlementStakeFraction.length
    idx = walletSettlementStakeFraction.length - 1
    while block.number < walletSettlementStakeFraction[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < walletSettlementStakeFraction.length
        mem[0] = 20
        idx = idx - 1
        continue 
    if idx < walletSettlementStakeFraction.length:
        return walletSettlementStakeFraction[idx].field_256
    revert
}

function paymentMinimumFeesCount() {
    return paymentMinimumFee.length
}

function walletLockTimeout() {
    require 0 < walletLockTimeout.length
    require walletLockTimeout.length - 1 >= 0
    require walletLockTimeout.length - 1 < walletLockTimeout.length
    idx = walletLockTimeout.length - 1
    while block.number < walletLockTimeout[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < walletLockTimeout.length
        mem[0] = 16
        idx = idx - 1
        continue 
    if idx < walletLockTimeout.length:
        return walletLockTimeout[idx].field_256
    revert
}

function isRegisteredService(address arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(stor2[address(arg1)].field_0))
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

function confirmationBlocks() {
    require 0 < confirmationBlocks.length
    require confirmationBlocks.length - 1 >= 0
    require confirmationBlocks.length - 1 < confirmationBlocks.length
    idx = confirmationBlocks.length - 1
    while block.number < confirmationBlocks[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < confirmationBlocks.length
        mem[0] = 6
        idx = idx - 1
        continue 
    if idx < confirmationBlocks.length:
        return confirmationBlocks[idx].field_256
    revert
}

function currencyPaymentMinimumFeesCount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return currencyPaymentMinimumFeesCount[address(arg1)][arg2].field_0
}

function tradeMakerMinimumFeesCount() {
    return tradeMakerMinimumFee.length
}

function operator() {
    return address(stor1.length)
}

function currencyPaymentFeesCount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return currencyPaymentFeesCount[address(arg1)][arg2].field_0
}

function tradeTakerFeesCount() {
    return stor8.length
}

function updateDelayBlocksCount() {
    return updateDelayBlocks.length
}

function paymentFeesCount() {
    return stor9.length
}

function tradeTakerMinimumFeesCount() {
    return tradeTakerMinimumFee.length
}

function cancelOrderChallengeTimeout() {
    require 0 < cancelOrderChallengeTimeout.length
    require cancelOrderChallengeTimeout.length - 1 >= 0
    require cancelOrderChallengeTimeout.length - 1 < cancelOrderChallengeTimeout.length
    idx = cancelOrderChallengeTimeout.length - 1
    while block.number < cancelOrderChallengeTimeout[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < cancelOrderChallengeTimeout.length
        mem[0] = 17
        idx = idx - 1
        continue 
    if idx < cancelOrderChallengeTimeout.length:
        return cancelOrderChallengeTimeout[idx].field_256
    revert
}

function fraudStakeFraction() {
    require 0 < fraudStakeFraction.length
    require fraudStakeFraction.length - 1 >= 0
    require fraudStakeFraction.length - 1 < fraudStakeFraction.length
    idx = fraudStakeFraction.length - 1
    while block.number < fraudStakeFraction[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < fraudStakeFraction.length
        mem[0] = 19
        idx = idx - 1
        continue 
    if idx < fraudStakeFraction.length:
        return fraudStakeFraction[idx].field_256
    revert
}

function feeCurrency(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require 0 < feeCurrenciesCount[address(arg2)][arg3].field_0
    require feeCurrenciesCount[address(arg2)][arg3].field_0 - 1 >= 0
    require feeCurrenciesCount[address(arg2)][arg3].field_0 - 1 < feeCurrenciesCount[address(arg2)][arg3].field_0
    idx = feeCurrenciesCount[address(arg2)][arg3].field_0 - 1
    while arg1 < feeCurrenciesCount[address(arg2)][arg3][idx].field_0:
        require idx - 1 >= 0
        mem[32] = sha3(address(arg2), 15)
        require idx - 1 < feeCurrenciesCount[address(arg2)][arg3].field_0
        mem[0] = sha3(arg3, sha3(address(arg2), 15))
        idx = idx - 1
        continue 
    if idx < feeCurrenciesCount[address(arg2)][arg3].field_0:
        return address(feeCurrenciesCount[address(arg2)][arg3][idx].field_256), feeCurrenciesCount[address(arg2)][arg3][idx].field_512
    revert
}

function operatorSettlementStakeFraction() {
    require 0 < operatorSettlementStakeFraction.length
    require operatorSettlementStakeFraction.length - 1 >= 0
    require operatorSettlementStakeFraction.length - 1 < operatorSettlementStakeFraction.length
    idx = operatorSettlementStakeFraction.length - 1
    while block.number < operatorSettlementStakeFraction[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < operatorSettlementStakeFraction.length
        mem[0] = 21
        idx = idx - 1
        continue 
    if idx < operatorSettlementStakeFraction.length:
        return operatorSettlementStakeFraction[idx].field_256
    revert
}

function tradeMakerFeesCount() {
    return stor7.length
}

function sub_b6bf4176(?) {
    return sub_b6bf4176
}

function confirmationBlocksCount() {
    return confirmationBlocks.length
}

function updateDelayBlocks() {
    require 0 < updateDelayBlocks.length
    require updateDelayBlocks.length - 1 >= 0
    require updateDelayBlocks.length - 1 < updateDelayBlocks.length
    idx = updateDelayBlocks.length - 1
    while block.number < updateDelayBlocks[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < updateDelayBlocks.length
        mem[0] = 5
        idx = idx - 1
        continue 
    if idx < updateDelayBlocks.length:
        return updateDelayBlocks[idx].field_256
    revert
}

function operatorSettlementStake() {
    require 0 < operatorSettlementStake.length
    require operatorSettlementStake.length - 1 >= 0
    require operatorSettlementStake.length - 1 < operatorSettlementStake.length
    idx = operatorSettlementStake.length - 1
    while block.number < operatorSettlementStake[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < operatorSettlementStake.length
        mem[0] = 22
        idx = idx - 1
        continue 
    if idx < operatorSettlementStake.length:
        return operatorSettlementStake[idx].field_256, 
               address(operatorSettlementStake[idx].field_512),
               operatorSettlementStake[idx].field_768
    revert
}

function deployer() {
    return deployerAddress
}

function sub_d7f0f971(?) {
    return bool(sub_d7f0f971)
}

function tradeMakerMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 0 < tradeMakerMinimumFee.length
    require tradeMakerMinimumFee.length - 1 >= 0
    require tradeMakerMinimumFee.length - 1 < tradeMakerMinimumFee.length
    idx = tradeMakerMinimumFee.length - 1
    while arg1 < tradeMakerMinimumFee[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < tradeMakerMinimumFee.length
        mem[0] = 11
        idx = idx - 1
        continue 
    if idx < tradeMakerMinimumFee.length:
        return tradeMakerMinimumFee[idx].field_256
    revert
}

function tradeTakerMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 0 < tradeTakerMinimumFee.length
    require tradeTakerMinimumFee.length - 1 >= 0
    require tradeTakerMinimumFee.length - 1 < tradeTakerMinimumFee.length
    idx = tradeTakerMinimumFee.length - 1
    while arg1 < tradeTakerMinimumFee[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < tradeTakerMinimumFee.length
        mem[0] = 12
        idx = idx - 1
        continue 
    if idx < tradeTakerMinimumFee.length:
        return tradeTakerMinimumFee[idx].field_256
    revert
}

function settlementChallengeTimeout() {
    require 0 < settlementChallengeTimeout.length
    require settlementChallengeTimeout.length - 1 >= 0
    require settlementChallengeTimeout.length - 1 < settlementChallengeTimeout.length
    idx = settlementChallengeTimeout.length - 1
    while block.number < settlementChallengeTimeout[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < settlementChallengeTimeout.length
        mem[0] = 18
        idx = idx - 1
        continue 
    if idx < settlementChallengeTimeout.length:
        return settlementChallengeTimeout[idx].field_256
    revert
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

function isOperationalModeExit() {
    require sub_0f4e7469 <= 1
    return (1 == sub_0f4e7469)
}

function isOperationalModeNormal() {
    require sub_0f4e7469 <= 1
    return (0 == sub_0f4e7469)
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function disableEarliestSettlementBlockNumberUpdate() {
    require msg.sender == address(stor1.length)
    sub_d7f0f971 = 1
    emit DisableEarliestSettlementBlockNumberUpdateEvent()
}

function setServiceActivationTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    sub_3b7bea6c = arg1
    emit ServiceActivationTimeoutEvent(arg1);
}

function setEarliestSettlementBlockNumber(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor1.length)
    sub_b6bf4176 = arg1
    emit SetEarliestSettlementBlockNumberEvent(arg1);
}

function isRegisteredActiveService(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor2[address(arg1)].field_0):
        return bool(uint8(stor2[address(arg1)].field_0))
    return block.timestamp >= stor2[address(arg1)].field_256
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

function deregisterService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require uint8(stor2[address(arg1)].field_0)
    uint8(stor2[address(arg1)].field_0) = 0
    emit DeregisterServiceEvent(arg1);
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor1.length)
    require arg1
    require arg1 != this.address
    if address(stor1.length) != arg1:
        address(stor1.length) = arg1
        emit SetOperatorEvent(address(stor1.length), arg1);
}

function setOperationalModeExit() {
    mem[192 len 0] = None
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= stor2[address(msg.sender)].field_256
    require uint8(stor2[address(msg.sender)][2][sha3(uint128(mem[192 len 16], 0))].field_0)
    sub_0f4e7469 = 1
    emit SetOperationalModeExitEvent()
}

function registerService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor2[address(arg1)].field_0):
        uint8(stor2[address(arg1)].field_0) = 1
        stor2[address(arg1)].field_256 = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function registerServiceDeferred(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor2[address(arg1)].field_0):
        uint8(stor2[address(arg1)].field_0) = 1
        stor2[address(arg1)].field_256 = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
}

function setPaymentMinimumFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if paymentMinimumFee.length:
        require paymentMinimumFee.length - 1 < paymentMinimumFee.length
        require arg1 > paymentMinimumFee[paymentMinimumFee.length - 1].field_0
    paymentMinimumFee.length++
    paymentMinimumFee[paymentMinimumFee.length].field_0 = arg1
    paymentMinimumFee[paymentMinimumFee.length].field_256 = arg2
    emit SetPaymentMinimumFeeEvent(arg1, arg2);
}

function setWalletLockTimeout(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if walletLockTimeout.length:
        require walletLockTimeout.length - 1 < walletLockTimeout.length
        require arg1 > walletLockTimeout[walletLockTimeout.length - 1].field_0
    walletLockTimeout.length++
    walletLockTimeout[walletLockTimeout.length].field_0 = arg1
    walletLockTimeout[walletLockTimeout.length].field_256 = arg2
    emit SetWalletLockTimeoutEvent(arg1, arg2);
}

function setUpdateDelayBlocks(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
        if updateDelayBlocks.length:
            require updateDelayBlocks.length - 1 < updateDelayBlocks.length
            require arg1 > updateDelayBlocks[updateDelayBlocks.length - 1].field_0
    updateDelayBlocks.length++
    updateDelayBlocks[updateDelayBlocks.length].field_0 = arg1
    updateDelayBlocks[updateDelayBlocks.length].field_256 = arg2
    emit SetUpdateDelayBlocksEvent(arg1, arg2);
}

function setFraudStakeFraction(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if fraudStakeFraction.length:
        require fraudStakeFraction.length - 1 < fraudStakeFraction.length
        require arg1 > fraudStakeFraction[fraudStakeFraction.length - 1].field_0
    fraudStakeFraction.length++
    fraudStakeFraction[fraudStakeFraction.length].field_0 = arg1
    fraudStakeFraction[fraudStakeFraction.length].field_256 = arg2
    emit SetFraudStakeFractionEvent(arg1, arg2);
}

function setConfirmationBlocks(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if confirmationBlocks.length:
        require confirmationBlocks.length - 1 < confirmationBlocks.length
        require arg1 > confirmationBlocks[confirmationBlocks.length - 1].field_0
    confirmationBlocks.length++
    confirmationBlocks[confirmationBlocks.length].field_0 = arg1
    confirmationBlocks[confirmationBlocks.length].field_256 = arg2
    emit SetConfirmationBlocksEvent(arg1, arg2);
}

function setTradeTakerMinimumFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if tradeTakerMinimumFee.length:
        require tradeTakerMinimumFee.length - 1 < tradeTakerMinimumFee.length
        require arg1 > tradeTakerMinimumFee[tradeTakerMinimumFee.length - 1].field_0
    tradeTakerMinimumFee.length++
    tradeTakerMinimumFee[tradeTakerMinimumFee.length].field_0 = arg1
    tradeTakerMinimumFee[tradeTakerMinimumFee.length].field_256 = arg2
    emit SetTradeTakerMinimumFeeEvent(arg1, arg2);
}

function setTradeMakerMinimumFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if tradeMakerMinimumFee.length:
        require tradeMakerMinimumFee.length - 1 < tradeMakerMinimumFee.length
        require arg1 > tradeMakerMinimumFee[tradeMakerMinimumFee.length - 1].field_0
    tradeMakerMinimumFee.length++
    tradeMakerMinimumFee[tradeMakerMinimumFee.length].field_0 = arg1
    tradeMakerMinimumFee[tradeMakerMinimumFee.length].field_256 = arg2
    emit SetTradeMakerMinimumFeeEvent(arg1, arg2);
}

function setSettlementChallengeTimeout(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if settlementChallengeTimeout.length:
        require settlementChallengeTimeout.length - 1 < settlementChallengeTimeout.length
        require arg1 > settlementChallengeTimeout[settlementChallengeTimeout.length - 1].field_0
    settlementChallengeTimeout.length++
    settlementChallengeTimeout[settlementChallengeTimeout.length].field_0 = arg1
    settlementChallengeTimeout[settlementChallengeTimeout.length].field_256 = arg2
    emit SetSettlementChallengeTimeoutEvent(arg1, arg2);
}

function setCancelOrderChallengeTimeout(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if cancelOrderChallengeTimeout.length:
        require cancelOrderChallengeTimeout.length - 1 < cancelOrderChallengeTimeout.length
        require arg1 > cancelOrderChallengeTimeout[cancelOrderChallengeTimeout.length - 1].field_0
    cancelOrderChallengeTimeout.length++
    cancelOrderChallengeTimeout[cancelOrderChallengeTimeout.length].field_0 = arg1
    cancelOrderChallengeTimeout[cancelOrderChallengeTimeout.length].field_256 = arg2
    emit SetCancelOrderChallengeTimeoutEvent(arg1, arg2);
}

function setWalletSettlementStakeFraction(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if walletSettlementStakeFraction.length:
        require walletSettlementStakeFraction.length - 1 < walletSettlementStakeFraction.length
        require arg1 > walletSettlementStakeFraction[walletSettlementStakeFraction.length - 1].field_0
    walletSettlementStakeFraction.length++
    walletSettlementStakeFraction[walletSettlementStakeFraction.length].field_0 = arg1
    walletSettlementStakeFraction[walletSettlementStakeFraction.length].field_256 = arg2
    emit SetWalletSettlementStakeFractionEvent(arg1, arg2);
}

function setOperatorSettlementStakeFraction(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if operatorSettlementStakeFraction.length:
        require operatorSettlementStakeFraction.length - 1 < operatorSettlementStakeFraction.length
        require arg1 > operatorSettlementStakeFraction[operatorSettlementStakeFraction.length - 1].field_0
    operatorSettlementStakeFraction.length++
    operatorSettlementStakeFraction[operatorSettlementStakeFraction.length].field_0 = arg1
    operatorSettlementStakeFraction[operatorSettlementStakeFraction.length].field_256 = arg2
    emit SetOperatorSettlementStakeFractionEvent(arg1, arg2);
}

function setOperatorSettlementStake(uint256 arg1, int256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if operatorSettlementStake.length:
        require operatorSettlementStake.length - 1 < operatorSettlementStake.length
        require arg1 > operatorSettlementStake[operatorSettlementStake.length - 1].field_0
    operatorSettlementStake.length++
    operatorSettlementStake[operatorSettlementStake.length].field_0 = arg1
    operatorSettlementStake[operatorSettlementStake.length].field_256 = arg2
    address(operatorSettlementStake[operatorSettlementStake.length].field_512) = uint64(arg3) << 96
    operatorSettlementStake[operatorSettlementStake.length].field_768 = arg4
    emit SetOperatorSettlementStakeEvent(arg1, arg2, address(arg3), arg4);
}

function setCurrencyPaymentMinimumFee(uint256 arg1, address arg2, uint256 arg3, int256 arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0:
        require currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0
        require arg1 > currencyPaymentMinimumFeesCount[address(arg2)][arg3][currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0 - 1].field_0
    currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0++
    currencyPaymentMinimumFeesCount[address(arg2)][arg3][currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
    currencyPaymentMinimumFeesCount[address(arg2)][arg3][currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0].field_256 = arg4
    emit SetCurrencyPaymentMinimumFeeEvent(arg1, address(arg2), arg3, arg4);
}

function setFeeCurrency(uint256 arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require msg.sender == address(stor1.length)
    if updateDelayBlocks.length:
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
    if feeCurrenciesCount[address(arg2)][arg3].field_0:
        require feeCurrenciesCount[address(arg2)][arg3].field_0 - 1 < feeCurrenciesCount[address(arg2)][arg3].field_0
        require arg1 > feeCurrenciesCount[address(arg2)][arg3][feeCurrenciesCount[address(arg2)][arg3].field_0].field_0
    feeCurrenciesCount[address(arg2)][arg3].field_0++
    feeCurrenciesCount[address(arg2)][arg3][feeCurrenciesCount[address(arg2)][arg3].field_0].field_0 = arg1
    address(feeCurrenciesCount[address(arg2)][arg3][feeCurrenciesCount[address(arg2)][arg3].field_0].field_256) = uint64(arg4) << 96
    feeCurrenciesCount[address(arg2)][arg3][feeCurrenciesCount[address(arg2)][arg3].field_0].field_512 = arg5
    emit SetFeeCurrencyEvent(arg1, address(arg2), arg3, address(arg4), arg5);
}

function currencyPaymentMinimumFee(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if 0 >= currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0:
        require 0 < paymentMinimumFee.length
        require paymentMinimumFee.length - 1 >= 0
        require paymentMinimumFee.length - 1 < paymentMinimumFee.length
        idx = paymentMinimumFee.length - 1
        while arg1 < paymentMinimumFee[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < paymentMinimumFee.length
            mem[0] = 13
            idx = idx - 1
            continue 
        if idx < paymentMinimumFee.length:
            return paymentMinimumFee[idx].field_256
    else:
        require 0 < currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0
        require currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0 - 1 >= 0
        require currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0
        idx = currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0 - 1
        while arg1 < currencyPaymentMinimumFeesCount[address(arg2)][arg3][idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0
            mem[0] = sha3(arg3, sha3(address(arg2), 14))
            idx = idx - 1
            continue 
        if idx < currencyPaymentMinimumFeesCount[address(arg2)][arg3].field_0:
            return currencyPaymentMinimumFeesCount[address(arg2)][arg3][idx].field_256
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
    require uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0)
    uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0) = 0
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
    if not uint8(stor2[address(arg1)].field_0):
        return bool(uint8(stor2[address(arg1)].field_0))
    if block.timestamp < stor2[address(arg1)].field_256:
        return block.timestamp >= stor2[address(arg1)].field_256
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _29])].field_0))
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
    require uint8(stor2[address(arg1)].field_0)
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _30 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require not uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0)
    uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0) = 1
    stor2[address(arg1)].field_768++
    stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + stor2[address(arg1)].field_768].field_0 = sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function paymentFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    require 0 < stor9.length
    require stor9.length - 1 >= 0
    require stor9.length - 1 < stor9.length
    idx = stor9.length - 1
    while arg1 < stor9[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < stor9.length
        mem[0] = 9
        idx = idx - 1
        continue 
    require idx < stor9.length
    mem[0] = 9
    mem[288] = stor9[idx].field_0
    mem[320] = stor9[idx].field_256
    mem[64] = (32 * stor9[idx].field_512) + 416
    mem[384] = stor9[idx].field_512
    s = 416
    t = 0
    while t < stor9[idx].field_512:
        mem[0] = (3 * idx) + sha3(9) + 2
        _272 = mem[64]
        mem[64] = mem[64] + 64
        mem[_272] = stor[sha3((3 * idx) + ('name', 'stor9', 9) + 2) + (2 * t)].field_0
        mem[_272 + 32] = stor[sha3((3 * idx) + ('name', 'stor9', 9) + 2) + (2 * t)].field_256
        mem[s] = _272
        s = s + 32
        t = t + 1
        continue 
    mem[352] = 384
    if 0 < mem[384]:
        require 0 < mem[384]
        idx = mem[384]
        while idx > 0:
            require idx - 1 < mem[384]
            if arg2 < mem[mem[(32 * idx - 1) + 416]]:
                idx = idx - 1
                continue 
            if 0 >= idx:
                mem[mem[64]] = mem[320]
            else:
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_409]
                require idx - 1 < mem[384]
                _417 = mem[mem[(32 * idx - 1) + 416] + 32]
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _417 < 0:
                    require mem[_420] - _417 > mem[_420]
                else:
                    if mem[_420] - _417 > mem[_420]:
                        require _417 < 0
                        require mem[_420] - _417 > mem[_420]
                if -1 == mem[320]:
                    require mem[_420] - _417 != 0x8000000000000000000000000000000000000000000000000000000000000000
                if -1 == mem[_420] - _417:
                    require mem[320] != 0x8000000000000000000000000000000000000000000000000000000000000000
                if mem[_420] - _417:
                    require mem[_420] - _417
                    require (mem[_420] * mem[320]) - (_417 * mem[320]) / mem[_420] - _417 == mem[320]
                if (mem[_420] * mem[320]) - (_417 * mem[320]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require _411 != -1
                require _411
                mem[mem[64]] = (mem[_420] * mem[320]) - (_417 * mem[320]) / _411
            return memory
              from mem[64]
               len 32
    mem[mem[64]] = mem[320]
    return memory
      from mem[64]
       len 32
}

function tradeMakerFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    require 0 < stor7.length
    require stor7.length - 1 >= 0
    require stor7.length - 1 < stor7.length
    idx = stor7.length - 1
    while arg1 < stor7[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < stor7.length
        mem[0] = 7
        idx = idx - 1
        continue 
    require idx < stor7.length
    mem[0] = 7
    mem[288] = stor7[idx].field_0
    mem[320] = stor7[idx].field_256
    mem[64] = (32 * stor7[idx].field_512) + 416
    mem[384] = stor7[idx].field_512
    s = 416
    t = 0
    while t < stor7[idx].field_512:
        mem[0] = (3 * idx) + sha3(7) + 2
        _272 = mem[64]
        mem[64] = mem[64] + 64
        mem[_272] = stor[sha3((3 * idx) + ('name', 'stor7', 7) + 2) + (2 * t)].field_0
        mem[_272 + 32] = stor[sha3((3 * idx) + ('name', 'stor7', 7) + 2) + (2 * t)].field_256
        mem[s] = _272
        s = s + 32
        t = t + 1
        continue 
    mem[352] = 384
    if 0 < mem[384]:
        require 0 < mem[384]
        idx = mem[384]
        while idx > 0:
            require idx - 1 < mem[384]
            if arg2 < mem[mem[(32 * idx - 1) + 416]]:
                idx = idx - 1
                continue 
            if 0 >= idx:
                mem[mem[64]] = mem[320]
            else:
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_409]
                require idx - 1 < mem[384]
                _417 = mem[mem[(32 * idx - 1) + 416] + 32]
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _417 < 0:
                    require mem[_420] - _417 > mem[_420]
                else:
                    if mem[_420] - _417 > mem[_420]:
                        require _417 < 0
                        require mem[_420] - _417 > mem[_420]
                if -1 == mem[320]:
                    require mem[_420] - _417 != 0x8000000000000000000000000000000000000000000000000000000000000000
                if -1 == mem[_420] - _417:
                    require mem[320] != 0x8000000000000000000000000000000000000000000000000000000000000000
                if mem[_420] - _417:
                    require mem[_420] - _417
                    require (mem[_420] * mem[320]) - (_417 * mem[320]) / mem[_420] - _417 == mem[320]
                if (mem[_420] * mem[320]) - (_417 * mem[320]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require _411 != -1
                require _411
                mem[mem[64]] = (mem[_420] * mem[320]) - (_417 * mem[320]) / _411
            return memory
              from mem[64]
               len 32
    mem[mem[64]] = mem[320]
    return memory
      from mem[64]
       len 32
}

function tradeTakerFee(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    require 0 < stor8.length
    require stor8.length - 1 >= 0
    require stor8.length - 1 < stor8.length
    idx = stor8.length - 1
    while arg1 < stor8[idx].field_0:
        require idx - 1 >= 0
        require idx - 1 < stor8.length
        mem[0] = 8
        idx = idx - 1
        continue 
    require idx < stor8.length
    mem[0] = 8
    mem[288] = stor8[idx].field_0
    mem[320] = stor8[idx].field_256
    mem[64] = (32 * stor8[idx].field_512) + 416
    mem[384] = stor8[idx].field_512
    s = 416
    t = 0
    while t < stor8[idx].field_512:
        mem[0] = (3 * idx) + sha3(8) + 2
        _272 = mem[64]
        mem[64] = mem[64] + 64
        mem[_272] = stor[sha3((3 * idx) + ('name', 'stor8', 8) + 2) + (2 * t)].field_0
        mem[_272 + 32] = stor[sha3((3 * idx) + ('name', 'stor8', 8) + 2) + (2 * t)].field_256
        mem[s] = _272
        s = s + 32
        t = t + 1
        continue 
    mem[352] = 384
    if 0 < mem[384]:
        require 0 < mem[384]
        idx = mem[384]
        while idx > 0:
            require idx - 1 < mem[384]
            if arg2 < mem[mem[(32 * idx - 1) + 416]]:
                idx = idx - 1
                continue 
            if 0 >= idx:
                mem[mem[64]] = mem[320]
            else:
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _411 = mem[_409]
                require idx - 1 < mem[384]
                _417 = mem[mem[(32 * idx - 1) + 416] + 32]
                require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                     gas gas_remaining wei
                    args 
                mem[mem[64]] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if _417 < 0:
                    require mem[_420] - _417 > mem[_420]
                else:
                    if mem[_420] - _417 > mem[_420]:
                        require _417 < 0
                        require mem[_420] - _417 > mem[_420]
                if -1 == mem[320]:
                    require mem[_420] - _417 != 0x8000000000000000000000000000000000000000000000000000000000000000
                if -1 == mem[_420] - _417:
                    require mem[320] != 0x8000000000000000000000000000000000000000000000000000000000000000
                if mem[_420] - _417:
                    require mem[_420] - _417
                    require (mem[_420] * mem[320]) - (_417 * mem[320]) / mem[_420] - _417 == mem[320]
                if (mem[_420] * mem[320]) - (_417 * mem[320]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require _411 != -1
                require _411
                mem[mem[64]] = (mem[_420] * mem[320]) - (_417 * mem[320]) / _411
            return memory
              from mem[64]
               len 32
    mem[mem[64]] = mem[320]
    return memory
      from mem[64]
       len 32
}

function currencyPaymentFee(uint256 arg1, address arg2, uint256 arg3, int256 arg4) {
    require calldata.size - 4 >= 128
    mem[32] = sha3(address(arg2), 10)
    if 0 >= currencyPaymentFeesCount[address(arg2)][arg3].field_0:
        mem[96] = 0
        mem[128] = 0
        mem[160] = 96
        mem[192] = 0
        mem[224] = 0
        mem[256] = 96
        require 0 < stor9.length
        require stor9.length - 1 >= 0
        require stor9.length - 1 < stor9.length
        idx = stor9.length - 1
        while arg1 < stor9[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < stor9.length
            mem[0] = 9
            idx = idx - 1
            continue 
        require idx < stor9.length
        mem[0] = 9
        mem[288] = stor9[idx].field_0
        mem[320] = stor9[idx].field_256
        mem[64] = (32 * stor9[idx].field_512) + 416
        mem[384] = stor9[idx].field_512
        s = 416
        t = 0
        while t < stor9[idx].field_512:
            mem[0] = (3 * idx) + sha3(9) + 2
            _546 = mem[64]
            mem[64] = mem[64] + 64
            mem[_546] = stor[sha3((3 * idx) + ('name', 'stor9', 9) + 2) + (2 * t)].field_0
            mem[_546 + 32] = stor[sha3((3 * idx) + ('name', 'stor9', 9) + 2) + (2 * t)].field_256
            mem[s] = _546
            s = s + 32
            t = t + 1
            continue 
        mem[352] = 384
        if 0 < mem[384]:
            require 0 < mem[384]
            idx = mem[384]
            while idx > 0:
                require idx - 1 < mem[384]
                if arg4 < mem[mem[(32 * idx - 1) + 416]]:
                    idx = idx - 1
                    continue 
                if 0 >= idx:
                    mem[mem[64]] = mem[320]
                else:
                    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                         gas gas_remaining wei
                        args 
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _824 = mem[_820]
                    require idx - 1 < mem[384]
                    _836 = mem[mem[(32 * idx - 1) + 416] + 32]
                    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                         gas gas_remaining wei
                        args 
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _836 < 0:
                        require mem[_843] - _836 > mem[_843]
                    else:
                        if mem[_843] - _836 > mem[_843]:
                            require _836 < 0
                            require mem[_843] - _836 > mem[_843]
                    if -1 == mem[320]:
                        require mem[_843] - _836 != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if -1 == mem[_843] - _836:
                        require mem[320] != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if mem[_843] - _836:
                        require mem[_843] - _836
                        require (mem[_843] * mem[320]) - (_836 * mem[320]) / mem[_843] - _836 == mem[320]
                    if (mem[_843] * mem[320]) - (_836 * mem[320]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require _824 != -1
                    require _824
                    mem[mem[64]] = (mem[_843] * mem[320]) - (_836 * mem[320]) / _824
                return memory
                  from mem[64]
                   len 32
    else:
        mem[32] = sha3(address(arg2), 10)
        mem[96] = 0
        mem[128] = 0
        mem[160] = 96
        mem[192] = 0
        mem[224] = 0
        mem[256] = 96
        require 0 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
        require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 >= 0
        require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
        idx = currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1
        while arg1 < currencyPaymentFeesCount[address(arg2)][arg3][idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
            mem[0] = sha3(arg3, sha3(address(arg2), 10))
            idx = idx - 1
            continue 
        require idx < currencyPaymentFeesCount[address(arg2)][arg3].field_0
        mem[0] = sha3(arg3, sha3(address(arg2), 10))
        mem[288] = currencyPaymentFeesCount[address(arg2)][arg3][idx].field_0
        mem[320] = currencyPaymentFeesCount[address(arg2)][arg3][idx].field_256
        mem[64] = (32 * currencyPaymentFeesCount[address(arg2)][arg3][idx].field_512) + 416
        mem[384] = currencyPaymentFeesCount[address(arg2)][arg3][idx].field_512
        s = 416
        t = 0
        while t < currencyPaymentFeesCount[address(arg2)][arg3][idx].field_512:
            mem[0] = (3 * idx) + sha3(sha3(arg3, sha3(address(arg2), 10))) + 2
            _548 = mem[64]
            mem[64] = mem[64] + 64
            mem[_548] = stor[sha3((3 * idx) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) + 2) + (2 * t)].field_0
            mem[_548 + 32] = stor[sha3((3 * idx) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) + 2) + (2 * t)].field_256
            mem[s] = _548
            s = s + 32
            t = t + 1
            continue 
        mem[352] = 384
        if 0 < mem[384]:
            require 0 < mem[384]
            idx = mem[384]
            while idx > 0:
                require idx - 1 < mem[384]
                if arg4 < mem[mem[(32 * idx - 1) + 416]]:
                    idx = idx - 1
                    continue 
                if 0 >= idx:
                    mem[mem[64]] = mem[320]
                else:
                    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                         gas gas_remaining wei
                        args 
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _821 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _825 = mem[_821]
                    require idx - 1 < mem[384]
                    _840 = mem[mem[(32 * idx - 1) + 416] + 32]
                    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
                    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
                         gas gas_remaining wei
                        args 
                    mem[mem[64]] = delegate.return_data[0]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _840 < 0:
                        require mem[_844] - _840 > mem[_844]
                    else:
                        if mem[_844] - _840 > mem[_844]:
                            require _840 < 0
                            require mem[_844] - _840 > mem[_844]
                    if -1 == mem[320]:
                        require mem[_844] - _840 != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if -1 == mem[_844] - _840:
                        require mem[320] != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if mem[_844] - _840:
                        require mem[_844] - _840
                        require (mem[_844] * mem[320]) - (_840 * mem[320]) / mem[_844] - _840 == mem[320]
                    if (mem[_844] * mem[320]) - (_840 * mem[320]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require _825 != -1
                    require _825
                    mem[mem[64]] = (mem[_844] * mem[320]) - (_840 * mem[320]) / _825
                return memory
                  from mem[64]
                   len 32
    mem[mem[64]] = mem[320]
    return memory
      from mem[64]
       len 32
}

function setPaymentFee(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == address(stor1.length)
    if not updateDelayBlocks.length:
        require arg3.length == arg4.length
        if not stor9.length:
            stor9.length++
            if stor9.length <= stor9.length + 1:
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_471] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_471 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_471]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_471 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _521 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _658 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 192 len 32 * _658] = mem[(32 * arg3.length) + 160 len 32 * _658]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _521) + (32 * _658) + 96]);
            else:
                mem[0] = 9
                idx = (3 * stor9.length) + 3
                while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _619 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_619] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_619 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_619]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_619 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _688 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _746 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 192 len 32 * _746] = mem[(32 * arg3.length) + 160 len 32 * _746]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _688) + (32 * _746) + 96]);
        else:
            require stor9.length - 1 < stor9.length
            require arg1 > stor9[stor9.length].field_0
            stor9.length++
            if stor9.length <= stor9.length + 1:
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _473 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_473] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_473 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_473]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_473 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _522 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _659 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 192 len 32 * _659] = mem[(32 * arg3.length) + 160 len 32 * _659]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _522) + (32 * _659) + 96]);
            else:
                mem[0] = 9
                idx = (3 * stor9.length) + 3
                while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _622 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_622] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_622 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_622]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_622 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _689 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _747 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 192 len 32 * _747] = mem[(32 * arg3.length) + 160 len 32 * _747]
                emit SetPaymentFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                        arg1,
                                        arg2,
                                        128,
                                        (32 * mem[96]) + 160,
                                        mem[mem[64] + 128 len (32 * _689) + (32 * _747) + 64],
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 0
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        mem[64] = (32 * arg3.length) + (32 * arg4.length) + 288
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = updateDelayBlocks[idx].field_0
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = updateDelayBlocks[idx].field_256
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
        require arg3.length == arg4.length
        if not stor9.length:
            stor9.length++
            if stor9.length <= stor9.length + 1:
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _624 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_624] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_624 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_624]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_624 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _690 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _748 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 192 len 32 * _748] = mem[(32 * arg3.length) + 160 len 32 * _748]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _690) + (32 * _748) + 96]);
            else:
                mem[0] = 9
                idx = (3 * stor9.length) + 3
                while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _725 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_725] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_725 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_725]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_725 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _758 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _778 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 192 len 32 * _778] = mem[(32 * arg3.length) + 160 len 32 * _778]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _758) + (32 * _778) + 96]);
        else:
            require stor9.length - 1 < stor9.length
            require arg1 > stor9[stor9.length].field_0
            stor9.length++
            if stor9.length <= stor9.length + 1:
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _626 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_626] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_626 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_626]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_626 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _691 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _749 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 192 len 32 * _749] = mem[(32 * arg3.length) + 160 len 32 * _749]
                emit SetPaymentFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                        arg1,
                                        arg2,
                                        128,
                                        (32 * mem[96]) + 160,
                                        mem[mem[64] + 128 len (32 * _691) + (32 * _749) + 64],
            else:
                mem[0] = 9
                idx = (3 * stor9.length) + 3
                while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor9.length - 1 < stor9.length
                stor9[stor9.length].field_0 = arg1
                stor9[stor9.length].field_0 = arg2
                mem[0] = 9
                idx = 0
                while idx < arg3.length:
                    _728 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_728] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_728 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor9[stor9.length].field_0++
                    mem[0] = (3 * stor9.length) + sha3(9) - 1
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_0 = mem[_728]
                    stor[(2 * stor9[stor9.length].field_0) + sha3((3 * stor9.length) + ('name', 'stor9', 9) - 1)].field_256 = mem[_728 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _759 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _779 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 192 len 32 * _779] = mem[(32 * arg3.length) + 160 len 32 * _779]
                emit SetPaymentFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _759) + (32 * _779) + 96]);
}

function setTradeMakerFee(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == address(stor1.length)
    if not updateDelayBlocks.length:
        require arg3.length == arg4.length
        if not stor7.length:
            stor7.length++
            if stor7.length <= stor7.length + 1:
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_471] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_471 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_471]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_471 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _521 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _658 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 192 len 32 * _658] = mem[(32 * arg3.length) + 160 len 32 * _658]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _521) + (32 * _658) + 96]);
            else:
                mem[0] = 7
                idx = (3 * stor7.length) + 3
                while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _619 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_619] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_619 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_619]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_619 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _688 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _746 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 192 len 32 * _746] = mem[(32 * arg3.length) + 160 len 32 * _746]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _688) + (32 * _746) + 96]);
        else:
            require stor7.length - 1 < stor7.length
            require arg1 > stor7[stor7.length].field_0
            stor7.length++
            if stor7.length <= stor7.length + 1:
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _473 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_473] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_473 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_473]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_473 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _522 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _659 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 192 len 32 * _659] = mem[(32 * arg3.length) + 160 len 32 * _659]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _522) + (32 * _659) + 96]);
            else:
                mem[0] = 7
                idx = (3 * stor7.length) + 3
                while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _622 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_622] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_622 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_622]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_622 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _689 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _747 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 192 len 32 * _747] = mem[(32 * arg3.length) + 160 len 32 * _747]
                emit SetTradeMakerFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                           arg1,
                                           arg2,
                                           128,
                                           (32 * mem[96]) + 160,
                                           mem[mem[64] + 128 len (32 * _689) + (32 * _747) + 64],
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 0
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        mem[64] = (32 * arg3.length) + (32 * arg4.length) + 288
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = updateDelayBlocks[idx].field_0
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = updateDelayBlocks[idx].field_256
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
        require arg3.length == arg4.length
        if not stor7.length:
            stor7.length++
            if stor7.length <= stor7.length + 1:
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _624 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_624] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_624 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_624]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_624 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _690 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _748 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 192 len 32 * _748] = mem[(32 * arg3.length) + 160 len 32 * _748]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _690) + (32 * _748) + 96]);
            else:
                mem[0] = 7
                idx = (3 * stor7.length) + 3
                while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _725 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_725] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_725 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_725]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_725 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _758 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _778 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 192 len 32 * _778] = mem[(32 * arg3.length) + 160 len 32 * _778]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _758) + (32 * _778) + 96]);
        else:
            require stor7.length - 1 < stor7.length
            require arg1 > stor7[stor7.length].field_0
            stor7.length++
            if stor7.length <= stor7.length + 1:
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _626 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_626] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_626 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_626]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_626 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _691 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _749 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 192 len 32 * _749] = mem[(32 * arg3.length) + 160 len 32 * _749]
                emit SetTradeMakerFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                           arg1,
                                           arg2,
                                           128,
                                           (32 * mem[96]) + 160,
                                           mem[mem[64] + 128 len (32 * _691) + (32 * _749) + 64],
            else:
                mem[0] = 7
                idx = (3 * stor7.length) + 3
                while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor7.length - 1 < stor7.length
                stor7[stor7.length].field_0 = arg1
                stor7[stor7.length].field_0 = arg2
                mem[0] = 7
                idx = 0
                while idx < arg3.length:
                    _728 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_728] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_728 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor7[stor7.length].field_0++
                    mem[0] = (3 * stor7.length) + sha3(7) - 1
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0 = mem[_728]
                    stor[(2 * stor7[stor7.length].field_0) + sha3((3 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256 = mem[_728 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _759 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _779 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 192 len 32 * _779] = mem[(32 * arg3.length) + 160 len 32 * _779]
                emit SetTradeMakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _759) + (32 * _779) + 96]);
}

function setTradeTakerFee(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4) {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == address(stor1.length)
    if not updateDelayBlocks.length:
        require arg3.length == arg4.length
        if not stor8.length:
            stor8.length++
            if stor8.length <= stor8.length + 1:
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_471] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_471 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_471]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_471 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _521 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _658 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _521) + 192 len 32 * _658] = mem[(32 * arg3.length) + 160 len 32 * _658]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _521) + (32 * _658) + 96]);
            else:
                mem[0] = 8
                idx = (3 * stor8.length) + 3
                while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _619 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_619] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_619 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_619]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_619 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _688 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _746 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _688) + 192 len 32 * _746] = mem[(32 * arg3.length) + 160 len 32 * _746]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _688) + (32 * _746) + 96]);
        else:
            require stor8.length - 1 < stor8.length
            require arg1 > stor8[stor8.length].field_0
            stor8.length++
            if stor8.length <= stor8.length + 1:
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _473 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_473] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_473 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_473]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_473 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _522 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _659 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _522) + 192 len 32 * _659] = mem[(32 * arg3.length) + 160 len 32 * _659]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _522) + (32 * _659) + 96]);
            else:
                mem[0] = 8
                idx = (3 * stor8.length) + 3
                while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _622 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_622] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_622 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_622]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_622 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _689 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _747 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _689) + 192 len 32 * _747] = mem[(32 * arg3.length) + 160 len 32 * _747]
                emit SetTradeTakerFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                           arg1,
                                           arg2,
                                           128,
                                           (32 * mem[96]) + 160,
                                           mem[mem[64] + 128 len (32 * _689) + (32 * _747) + 64],
    else:
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = 0
        mem[(32 * arg3.length) + (32 * arg4.length) + 192] = 0
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        mem[64] = (32 * arg3.length) + (32 * arg4.length) + 288
        mem[(32 * arg3.length) + (32 * arg4.length) + 224] = updateDelayBlocks[idx].field_0
        mem[(32 * arg3.length) + (32 * arg4.length) + 256] = updateDelayBlocks[idx].field_256
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
        require arg3.length == arg4.length
        if not stor8.length:
            stor8.length++
            if stor8.length <= stor8.length + 1:
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _624 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_624] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_624 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_624]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_624 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _690 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _748 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _690) + 192 len 32 * _748] = mem[(32 * arg3.length) + 160 len 32 * _748]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _690) + (32 * _748) + 96]);
            else:
                mem[0] = 8
                idx = (3 * stor8.length) + 3
                while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _725 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_725] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_725 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_725]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_725 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _758 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _778 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _758) + 192 len 32 * _778] = mem[(32 * arg3.length) + 160 len 32 * _778]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _758) + (32 * _778) + 96]);
        else:
            require stor8.length - 1 < stor8.length
            require arg1 > stor8[stor8.length].field_0
            stor8.length++
            if stor8.length <= stor8.length + 1:
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _626 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_626] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_626 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_626]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_626 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _691 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _749 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _691) + 192 len 32 * _749] = mem[(32 * arg3.length) + 160 len 32 * _749]
                emit SetTradeTakerFeeEvent(uint256 arg1, int256 arg2, int256[] arg3, int256[] arg4):
                                           arg1,
                                           arg2,
                                           128,
                                           (32 * mem[96]) + 160,
                                           mem[mem[64] + 128 len (32 * _691) + (32 * _749) + 64],
            else:
                mem[0] = 8
                idx = (3 * stor8.length) + 3
                while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require stor8.length - 1 < stor8.length
                stor8[stor8.length].field_0 = arg1
                stor8[stor8.length].field_0 = arg2
                mem[0] = 8
                idx = 0
                while idx < arg3.length:
                    _728 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_728] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg3.length) + 128]
                    mem[_728 + 32] = mem[(32 * arg3.length) + (32 * idx) + 160]
                    stor8[stor8.length].field_0++
                    mem[0] = (3 * stor8.length) + sha3(8) - 1
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_0 = mem[_728]
                    stor[(2 * stor8[stor8.length].field_0) + sha3((3 * stor8.length) + ('name', 'stor8', 8) - 1)].field_256 = mem[_728 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = 128
                _759 = mem[96]
                mem[mem[64] + 128] = mem[96]
                mem[mem[64] + 160 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 96] = (32 * mem[96]) + 160
                _779 = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 160] = mem[(32 * arg3.length) + 128]
                mem[mem[64] + (32 * _759) + 192 len 32 * _779] = mem[(32 * arg3.length) + 160 len 32 * _779]
                emit SetTradeTakerFeeEvent(arg1, arg2, 128, mem[mem[64] + 96 len (32 * _759) + (32 * _779) + 96]);
}

function setCurrencyPaymentFee(uint256 arg1, address arg2, uint256 arg3, int256 arg4, int256[] arg5, int256[] arg6) {
    require calldata.size - 4 >= 192
    require arg5 <= test266151307()
    require calldata.size > arg5 + 35
    require arg5.length <= test266151307()
    require (32 * arg5.length) + 128 >= 96 and (32 * arg5.length) + 128 <= test266151307()
    mem[96] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg6 <= test266151307()
    require calldata.size > arg6 + 35
    require arg6.length <= test266151307()
    require (32 * arg6.length) + 160 >= 128 and (32 * arg5.length) + (32 * arg6.length) + 160 <= test266151307()
    mem[64] = (32 * arg5.length) + (32 * arg6.length) + 160
    mem[(32 * arg5.length) + 128] = arg6.length
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    idx = 0
    s = arg6 + 36
    t = (32 * arg5.length) + 160
    while idx < arg6.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == address(stor1.length)
    if not updateDelayBlocks.length:
        mem[32] = sha3(address(arg2), 10)
        require arg5.length == arg6.length
        if not currencyPaymentFeesCount[address(arg2)][arg3].field_0:
            currencyPaymentFeesCount[address(arg2)][arg3].field_0++
            if currencyPaymentFeesCount[address(arg2)][arg3].field_0 <= currencyPaymentFeesCount[address(arg2)][arg3].field_0 + 1:
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _483 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_483] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_483 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_483]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_483 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _672 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _672] = mem[(32 * arg5.length) + 160 len 32 * _672]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _672) + 32]), (32 * mem[96]) + 224);
            else:
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + 3
                while sha3(sha3(arg3, sha3(address(arg2), 10))) + (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _633 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_633] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_633 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_633]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_633 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _760 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _760] = mem[(32 * arg5.length) + 160 len 32 * _760]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _760) + 32]), (32 * mem[96]) + 224);
        else:
            require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
            require arg1 > currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0
            currencyPaymentFeesCount[address(arg2)][arg3].field_0++
            if currencyPaymentFeesCount[address(arg2)][arg3].field_0 <= currencyPaymentFeesCount[address(arg2)][arg3].field_0 + 1:
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _485 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_485] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_485 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_485]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_485 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _673 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _673] = mem[(32 * arg5.length) + 160 len 32 * _673]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _673) + 32]), (32 * mem[96]) + 224);
            else:
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + 3
                while sha3(sha3(arg3, sha3(address(arg2), 10))) + (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_636] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_636 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_636]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_636 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _761 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _761] = mem[(32 * arg5.length) + 160 len 32 * _761]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _761) + 32]), (32 * mem[96]) + 224);
    else:
        mem[(32 * arg5.length) + (32 * arg6.length) + 160] = 0
        mem[(32 * arg5.length) + (32 * arg6.length) + 192] = 0
        require 0 < updateDelayBlocks.length
        require updateDelayBlocks.length - 1 >= 0
        require updateDelayBlocks.length - 1 < updateDelayBlocks.length
        idx = updateDelayBlocks.length - 1
        while block.number < updateDelayBlocks[idx].field_0:
            require idx - 1 >= 0
            require idx - 1 < updateDelayBlocks.length
            mem[0] = 5
            idx = idx - 1
            continue 
        require idx < updateDelayBlocks.length
        mem[64] = (32 * arg5.length) + (32 * arg6.length) + 288
        mem[(32 * arg5.length) + (32 * arg6.length) + 224] = updateDelayBlocks[idx].field_0
        mem[(32 * arg5.length) + (32 * arg6.length) + 256] = updateDelayBlocks[idx].field_256
        require arg1 >= block.number + updateDelayBlocks[idx].field_256
        mem[32] = sha3(address(arg2), 10)
        require arg5.length == arg6.length
        if not currencyPaymentFeesCount[address(arg2)][arg3].field_0:
            currencyPaymentFeesCount[address(arg2)][arg3].field_0++
            if currencyPaymentFeesCount[address(arg2)][arg3].field_0 <= currencyPaymentFeesCount[address(arg2)][arg3].field_0 + 1:
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _638 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_638] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_638 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_638]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_638 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _762 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _762] = mem[(32 * arg5.length) + 160 len 32 * _762]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _762) + 32]), (32 * mem[96]) + 224);
            else:
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + 3
                while sha3(sha3(arg3, sha3(address(arg2), 10))) + (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _739 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_739] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_739 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_739]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_739 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _792 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _792] = mem[(32 * arg5.length) + 160 len 32 * _792]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _792) + 32]), (32 * mem[96]) + 224);
        else:
            require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
            require arg1 > currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0
            currencyPaymentFeesCount[address(arg2)][arg3].field_0++
            if currencyPaymentFeesCount[address(arg2)][arg3].field_0 <= currencyPaymentFeesCount[address(arg2)][arg3].field_0 + 1:
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _640 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_640] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_640 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_640]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_640 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _763 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _763] = mem[(32 * arg5.length) + 160 len 32 * _763]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _763) + 32]), (32 * mem[96]) + 224);
            else:
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + 3
                while sha3(sha3(arg3, sha3(address(arg2), 10))) + (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    stor[idx + sha3(mem[0]) + 2] = 0
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (2 * stor[idx + sha3(mem[0]) + 2]) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                    idx = idx + 3
                    continue 
                require currencyPaymentFeesCount[address(arg2)][arg3].field_0 - 1 < currencyPaymentFeesCount[address(arg2)][arg3].field_0
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg1
                currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0 = arg4
                mem[0] = sha3(arg3, sha3(address(arg2), 10))
                idx = 0
                while idx < arg5.length:
                    _742 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[96]
                    mem[_742] = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    mem[_742 + 32] = mem[(32 * arg5.length) + (32 * idx) + 160]
                    currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0++
                    mem[0] = (3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + sha3(sha3(arg3, sha3(address(arg2), 10))) - 1
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_0 = mem[_742]
                    stor[(2 * currencyPaymentFeesCount[address(arg2)][arg3][currencyPaymentFeesCount[address(arg2)][arg3].field_0].field_0) + sha3((3 * currencyPaymentFeesCount[address(arg2)][arg3].field_0) + ('map', ('param', 'arg3'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'currencyPaymentFeesCount', 10))) - 1)].field_256 = mem[_742 + 32]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg3
                mem[mem[64] + 96] = arg4
                mem[mem[64] + 128] = 192
                mem[mem[64] + 192] = mem[96]
                mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 160] = (32 * mem[96]) + 224
                _793 = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * arg5.length) + 128]
                mem[mem[64] + (32 * mem[96]) + 256 len 32 * _793] = mem[(32 * arg5.length) + 160 len 32 * _793]
                emit SetCurrencyPaymentFeeEvent(arg1, address(arg2), arg3, arg4, Array(len=mem[96], data=mem[mem[64] + 224 len (32 * mem[96]) + (32 * _793) + 32]), (32 * mem[96]) + 224);
}



}
