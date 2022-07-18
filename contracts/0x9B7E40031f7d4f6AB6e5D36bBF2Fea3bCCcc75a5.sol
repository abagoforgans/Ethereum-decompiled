contract main {




// =====================  Runtime code  =====================


#
#  - feesAvailable(address arg1, bytes4 arg2)
#  - feesByPeriod(address arg1)
#  - claimFees(bytes4 arg1)
#
const SELFDESTRUCT_DELAY = (672 * 24 * 3600)

const FEE_PERIOD_LENGTH = 6

const MIN_FEE_PERIOD_DURATION = (24 * 3600)

const FEE_ADDRESS = 0xfeefeefeefeefeefeefeefeefeefeefeefeefeef

const MAX_FEE_PERIOD_DURATION = (1440 * 24 * 3600)


address owner;
address nominatedOwner;
address proxyAddress;
address stor3;
uint256 stor3;
uint256 initiationTime;
uint8 stor5;
address selfDestructBeneficiaryAddress; offset 8
uint256 stor6;
address synthetixAddress;
array of uint256 stor8;
address rewardEscrowAddress;
uint256 transferFeeRate;
uint256 exchangeFeeRate;
address feeAuthorityAddress;
address feePoolStateAddress;
array of uint256 stor14;
array of uint256 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
array of uint256 stor19;
array of uint256 stor20;
array of uint256 stor21;
array of uint256 stor22;
array of uint256 stor23;
array of uint256 stor24;
array of uint256 stor25;
array of uint256 stor26;
array of uint256 stor27;
uint256 stor45;
uint256 stor52;
uint256 stor53;
uint256 sub_67fbc450;
uint256 feePeriodDuration;
mapping of uint256 sub_8cf61204;
uint256 stor59;
uint256 stor61;

function exchangeFeeRate() {
    return exchangeFeeRate
}

function initiationTime() {
    return initiationTime
}

function feePeriodDuration() {
    return feePeriodDuration
}

function feeAuthority() {
    return feeAuthorityAddress
}

function transferFeeRate() {
    return transferFeeRate
}

function nominatedOwner() {
    return nominatedOwner
}

function sub_67fbc450(?) {
    return sub_67fbc450
}

function synthetix() {
    return synthetixAddress
}

function sub_8cf61204(?) {
    return sub_8cf61204[arg1]
}

function owner() {
    return owner
}

function rewardEscrow() {
    return rewardEscrowAddress
}

function selfDestructInitiated() {
    return bool(stor5)
}

function selfDestructBeneficiary() {
    return selfDestructBeneficiaryAddress
}

function synthetixState() {
    return address(stor8.length)
}

function feePoolState() {
    return feePoolStateAddress
}

function proxy() {
    return proxyAddress
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct has not yet been initiated'
    if initiationTime + (672 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct delay has not yet elapsed'
    emit SelfDestructed(selfDestructBeneficiaryAddress);
    selfdestruct(selfDestructBeneficiaryAddress)
}

function _fallback() payable {
    revert
}

function recentFeePeriods(uint256 arg1) {
    require arg1 < 6
    return stor14[arg1], stor15[arg1], stor16[arg1], stor17[arg1], stor18[arg1], stor19[arg1], stor20[arg1]
}

function exchangeFeeIncurred(uint256 arg1) {
    if not arg1:
        return 0
    require exchangeFeeRate * arg1 / arg1 == exchangeFeeRate
    return (exchangeFeeRate * arg1 / 10^18)
}

function transferFeeIncurred(uint256 arg1) {
    if not arg1:
        return 0
    require transferFeeRate * arg1 / arg1 == transferFeeRate
    return (transferFeeRate * arg1 / 10^18)
}

function setMessageSender(address arg1) {
    if proxyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the proxy can call this function'
    address(stor3) = arg1
}

function setProxy(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    proxyAddress = arg1
    emit ProxyUpdated(arg1);
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function terminateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = 0
    stor5 = 0
    emit SelfDestructTerminated()
}

function totalRewardsAvailable() {
    idx = 1
    s = 0
    while idx < 6:
        require stor19[idx] + s >= s
        require idx < 6
        require stor20[idx] <= stor19[idx] + s
        idx = idx + 1
        s = stor19[idx] + s - stor20[idx]
        continue 
    return (5 * stor61)
}

function exchangedAmountToReceive(uint256 arg1) {
    if not arg1:
        require arg1 >= arg1
        return arg1
    require exchangeFeeRate * arg1 / arg1 == exchangeFeeRate
    require (exchangeFeeRate * arg1 / 10^18) + arg1 >= arg1
    return ((exchangeFeeRate * arg1 / 10^18) + arg1)
}

function transferredAmountToReceive(uint256 arg1) {
    if not arg1:
        require arg1 >= arg1
        return arg1
    require transferFeeRate * arg1 / arg1 == transferFeeRate
    require (transferFeeRate * arg1 / 10^18) + arg1 >= arg1
    return ((transferFeeRate * arg1 / 10^18) + arg1)
}

function initiateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = block.timestamp
    stor5 = 1
    emit SelfDestructInitiated((672 * 24 * 3600));
}

function rewardsMinted(uint256 arg1) {
    if synthetixAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the synthetix contract can perform this action'
    require arg1 + stor19.length >= stor19.length
    stor19.length += arg1
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function sub_76d752a1(?) {
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] / 10)
}

function MAX_EXCHANGE_FEE_RATE() {
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] / 10)
}

function setSelfDestructBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary must not be the zero address'
    selfDestructBeneficiaryAddress = arg1
    emit SelfDestructBeneficiaryUpdated(arg1);
}

function amountReceivedFromExchange(uint256 arg1) {
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require exchangeFeeRate <= delegate.return_data[0]
    if not arg1:
        return 0
    require (delegate.return_data[0] * arg1) - (exchangeFeeRate * arg1) / arg1 == delegate.return_data[0] - exchangeFeeRate
    return ((delegate.return_data[0] * arg1) - (exchangeFeeRate * arg1) / 10^18)
}

function sub_075d2c41(?) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    feePoolStateAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('FeePoolStateUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeAuthority(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    feeAuthorityAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('FeeAuthorityUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalFeesAvailable(bytes4 arg1) {
    idx = 1
    s = 0
    while idx < 6:
        require stor17[idx] + s >= s
        require idx < 6
        require stor18[idx] <= stor17[idx] + s
        idx = idx + 1
        s = stor17[idx] + s - stor18[idx]
        continue 
    require ext_code.size(synthetixAddress)
    call synthetixAddress.effectiveValue(bytes4 arg1, uint256 arg2, bytes4 arg3) with:
         gas gas_remaining wei
        args 0x5844520000000000000000000000000000000000000000000000000000000000, 5 * stor59, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function importFeePeriod(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    if block.timestamp >= stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only perform this action during setup'
    require arg1 < 6
    stor14[arg1] = arg2
    stor15[arg1] = arg3
    stor16[arg1] = arg4
    stor17[arg1] = arg5
    stor18[arg1] = arg6
    stor19[arg1] = arg7
    stor20[arg1] = arg8
}

function setSynthetix(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    if not arg1:
        revert with 0, 'New Synthetix must be non-zero'
    synthetixAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('SynthetixUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function feePaid(bytes4 arg1, uint256 arg2) {
    if synthetixAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the synthetix contract can perform this action'
    if Mask(32, 224, arg1) == 0x5844520000000000000000000000000000000000000000000000000000000000:
        require arg2 + stor17.length >= stor17.length
        stor17.length += arg2
    else:
        require ext_code.size(synthetixAddress)
        call synthetixAddress.effectiveValue(bytes4 arg1, uint256 arg2, bytes4 arg3) with:
             gas gas_remaining wei
            args Mask(32, 224, arg1), arg2, 0x5844520000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + stor17.length >= stor17.length
        stor17.length += ext_call.return_data[0]
}

function amountReceivedFromTransfer(uint256 arg1) {
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] + transferFeeRate >= transferFeeRate
    if not arg1:
        require delegate.return_data[0] + transferFeeRate > 0
        if delegate.return_data[0] + transferFeeRate:
            return (0 / delegate.return_data[0] + transferFeeRate)
    else:
        require 10^18 * arg1 / arg1 == 10^18
        require delegate.return_data[0] + transferFeeRate > 0
        if delegate.return_data[0] + transferFeeRate:
            return (10^18 * arg1 / delegate.return_data[0] + transferFeeRate)
    ('iszero', ('add', ('delegate.return_data', 0, 32), ('stor', ('name', 'transferFeeRate', 10))))
    revert
}

function appendAccountIssuanceRecord(address arg1, uint256 arg2, uint256 arg3) {
    if synthetixAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the synthetix contract can perform this action'
    require ext_code.size(feePoolStateAddress)
    call feePoolStateAddress.appendAccountIssuanceRecord(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, stor15.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 2, sha3('IssuanceDebtRatioEntry(address, ', 'uint256, uint256, uint256)'), address(arg1), 0, 0, 96, arg2, arg3, stor15.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeePeriodDuration(uint256 arg1) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    if arg1 < 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New fee period cannot be less than minimum fee period duration'
    if arg1 > 1440 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New fee period cannot be greater than maximum fee period duration'
    feePeriodDuration = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('FeePeriodDurationUpdated(uint256', ')'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setExchangeFeeRate(uint256 arg1) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > delegate.return_data[0] / 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Exchange fee rate must be below MAX_EXCHANGE_FEE_RATE'
    exchangeFeeRate = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('ExchangeFeeUpdated(uint256)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTransferFeeRate(uint256 arg1) {
    if proxyAddress != msg.sender:
        uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
    if owner != address(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performd by the owner'
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > delegate.return_data[0] / 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Transfer fee rate must be below MAX_TRANSFER_FEE_RATE'
    transferFeeRate = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('TransferFeeUpdated(uint256)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeCurrentFeePeriod() {
    if feeAuthorityAddress != msg.sender:
        revert with 0, 'Only the fee authority can perform this action'
    if block.timestamp - feePeriodDuration < stor16.length:
        revert with 0, 'It is too early to close the current fee period'
    require stor53 <= stor52
    require stor45 >= 0
    stor45 = stor45 + stor52 - stor53
    s = 0
    idx = 4
    while idx < 6:
        require idx + 1 < 6
        stor21[idx] = stor14[idx]
        require idx < 6
        require idx + 1 < 6
        stor22[idx] = stor15[idx]
        require idx < 6
        require idx + 1 < 6
        stor23[idx] = stor16[idx]
        require idx < 6
        require idx + 1 < 6
        stor24[idx] = stor17[idx]
        require idx < 6
        require idx + 1 < 6
        stor25[idx] = stor18[idx]
        require idx < 6
        require idx + 1 < 6
        stor26[idx] = stor19[idx]
        require idx < 6
        require idx + 1 < 6
        stor27[idx] = stor20[idx]
        s = idx + 1
        idx = idx - 1
        continue 
    stor15.length = 0
    stor16.length = 0
    stor17.length = 0
    stor18.length = 0
    stor19.length = 0
    stor20.length = 0
    stor14.length = sub_67fbc450
    require ext_code.size(address(stor8.length))
    call address(stor8.length).debtLedgerLength() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor15.length = ext_call.return_data[0]
    stor16.length = block.timestamp
    require sub_67fbc450 + 1 >= sub_67fbc450
    sub_67fbc450++
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('FeePeriodClosed(uint256)'), 0, 0, 0, 32, stor21.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function effectiveDebtRatioForPeriod(address arg1, uint256 arg2) {
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Current period has not closed yet'
    if arg2 >= 6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Period exceeds the FEE_PERIOD_LENGTH'
    require arg2 - 1 < 6
    if 0 == uint256(stor8[arg2]):
        return 0
    require arg2 - 1 < 6
    require 1 <= uint256(stor8[arg2])
    require ext_code.size(feePoolStateAddress)
    call feePoolStateAddress.applicableIssuanceData(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), uint256(stor8[arg2]) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(stor8.length))
    call address(stor8.length).debtLedgerLength() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(stor8[arg2]) - 1 > ext_call.return_data[0]:
        return 0
    require ext_code.size(address(stor8.length))
    call address(stor8.length).debtLedger(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor8.length))
    call address(stor8.length).debtLedger(uint256 arg1) with:
         gas gas_remaining wei
        args (uint256(stor8[arg2]) - 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if not 0 / ext_call.return_data[0] / 10:
                return 0
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
                return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10)
            return ((ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10)
        if not (0 / ext_call.return_data[0]) + 10 / 10:
            return 0
        require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        if ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10)
        return ((ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
    require 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10000000000 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] % 10 < 5:
        if not 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            return 0
        require ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 == ext_call.return_data[0]
        if ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
            return (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10)
        return ((ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10)
    if not (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10:
        return 0
    require ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
    if ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
        return (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10)
    return ((ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10)
}

function currentPenalty(address arg1) {
    require ext_code.size(synthetixAddress)
    call synthetixAddress.collateralisationRatio(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 20 * delegate.return_data[0] / 100:
        return 0
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 20 * delegate.return_data[0] / 100:
        if ext_call.return_data[0] <= 22 * delegate.return_data[0] / 100:
            return 0
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 22 * delegate.return_data[0] / 100:
        if ext_call.return_data[0] <= 30 * delegate.return_data[0] / 100:
            require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
            delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (25 * delegate.return_data[0] / 100)
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 30 * delegate.return_data[0] / 100:
        if ext_call.return_data[0] <= 40 * delegate.return_data[0] / 100:
            require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
            delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (50 * delegate.return_data[0] / 100)
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 40 * delegate.return_data[0] / 100:
        if ext_call.return_data[0] <= 50 * delegate.return_data[0] / 100:
            require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
            delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
                 gas gas_remaining wei
                args 
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return (75 * delegate.return_data[0] / 100)
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 50 * delegate.return_data[0] / 100:
        return (100 * delegate.return_data[0] / 100)
    require ext_code.size(0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b)
    delegate 0x84d626b2bb4d0f064067e4bf80fce7055d8f3e7b.unit() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 100 * delegate.return_data[0] / 100:
        return (100 * delegate.return_data[0] / 100)
    return (90 * delegate.return_data[0] / 100)
}



}
