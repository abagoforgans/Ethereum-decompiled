contract main {




// =====================  Runtime code  =====================


#
#  - executeSignatures(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, bytes arg4)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = Mask(32, 224, sha3(Mask(144, 0, Mask(32, 112, 'erc-to-native-core') >> 112, 0) or Mask(112, 0, 'erc-to-native-core') << 32))

const getBridgeInterfacesVersion = 2, 2, 0


mapping of uint256 totalSpentPerDay;
mapping of address erc20token;
mapping of uint8 stor4;

function erc20token() {
    return erc20token[Mask(80, 96, 'erc20token') >> 96]
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][Mask(136, 120, arg1) >> 120][mem[207 len 15]])
}

function totalSpentPerDay(uint256 arg1) {
    return totalSpentPerDay['totalSpentPerDay'][uint128(arg1)][mem[208 len 16]]
}

function isInitialized() {
    return bool(stor4[Mask(104, 48, 'isInitialized') >> 48])
}

function requiredBlockConfirmations() {
    return totalSpentPerDay[Mask(208, 0, Mask(160, 48, 'requiredBlockConfirmations') >> 48, 0) or 'requiredBlockConfirmations' % 281474976710656 << 160]
}

function executionDailyLimit() {
    return totalSpentPerDay[Mask(152, 0, Mask(48, 104, 'executionDailyLimit') >> 104, 0) or Mask(104, 0, 'executionDailyLimit') << 48]
}

function totalExecutedPerDay(uint256 arg1) {
    mem[211] = arg1 % 281474976710656, Mask(104, 152, 'totalExecutedPerDay') >> 152 or Mask(104, 152, mem[211])
    return totalSpentPerDay['totalExecutedPerDay'][Mask(104, 152, arg1) >> 152][mem[211 len 19]]
}

function dailyLimit() {
    return totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96]
}

function executionMaxPerTx() {
    return totalSpentPerDay[Mask(136, 0, Mask(16, 120, 'executionMaxPerTx') >> 120, 0) or Mask(120, 0, 'executionMaxPerTx') << 16]
}

function owner() {
    return erc20token[Mask(40, 176, 'owner') >> 176]
}

function validatorContract() {
    return erc20token[Mask(136, 0, Mask(16, 120, 'validatorContract') >> 120, 0) or Mask(120, 0, 'validatorContract') << 16]
}

function deployedAtBlock() {
    return totalSpentPerDay[Mask(120, 16, 'deployedAtBlock') >> 16]
}

function minPerTx() {
    return totalSpentPerDay[Mask(64, 128, 'minPerTx') >> 128]
}

function maxPerTx() {
    return totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128]
}

function gasPrice() {
    return totalSpentPerDay[Mask(64, 128, 'gasPrice') >> 128]
}

function _fallback() payable {
    revert
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96] = arg1
    emit DailyLimitChanged(arg1);
}

function setGasPrice(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1 > 0
    totalSpentPerDay[Mask(64, 128, 'gasPrice') >> 128] = arg1
    emit GasPriceChanged(arg1);
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1 < totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96]
    totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1
    emit OwnershipTransferred(erc20token[Mask(40, 176, 'owner') >> 176], address(arg1));
    erc20token[Mask(40, 176, 'owner') >> 176] = arg1
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104] = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1 < totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96]
    require arg1 < totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128]
    totalSpentPerDay[Mask(64, 128, 'minPerTx') >> 128] = arg1
}

function upgradeabilityAdmin() {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1 > 0
    totalSpentPerDay['requiredBlockConfirmations' % 281474976710656][Mask(160, 48, Mask(160, 48, 'requiredBlockConfirmations') >> 48, 0) >> 48] = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == erc20token[Mask(40, 176, 'owner') >> 176]
    require arg1 < totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104]
    totalSpentPerDay[Mask(120, 0, 'executionMaxPerTx')][Mask(16, 120, Mask(16, 120, 'executionMaxPerTx') >> 120, 0) >> 120] = arg1
}

function requiredSignatures() {
    require ext_code.size(erc20token[Mask(136, 0, Mask(16, 120, 'validatorContract') >> 120, 0) or Mask(120, 0, 'validatorContract') << 16])
    call erc20token[Mask(136, 0, Mask(16, 120, 'validatorContract') >> 120, 0) or Mask(120, 0, 'validatorContract') << 16].0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withinLimit(uint256 arg1) {
    require totalSpentPerDay['totalSpentPerDay'][Mask(128, 128, block.timestamp / 24 * 3600) >> 128][mem[208 len 16]] + arg1 >= totalSpentPerDay['totalSpentPerDay'][Mask(128, 128, block.timestamp / 24 * 3600) >> 128][mem[208 len 16]]
    if totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96] < totalSpentPerDay['totalSpentPerDay'][Mask(128, 128, block.timestamp / 24 * 3600) >> 128][mem[208 len 16]] + arg1:
        return totalSpentPerDay[Mask(80, 96, 'dailyLimit') >> 96] >= totalSpentPerDay['totalSpentPerDay'][Mask(128, 128, block.timestamp / 24 * 3600) >> 128][mem[208 len 16]] + arg1
    if arg1 > totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128]:
        return arg1 <= totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128]
    return arg1 >= totalSpentPerDay[Mask(64, 128, 'minPerTx') >> 128]
}

function sub_44fa8bc1(?) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require not stor4[uint128('isUpgradedToV220')]
    emit OwnershipTransferred(erc20token[Mask(40, 176, 'owner') >> 176], address(arg1));
    erc20token[Mask(40, 176, 'owner') >> 176] = arg1
    totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128] = 100000 * 10^18
    totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104] = 1000000 * 10^18
    emit ExecutionDailyLimitChanged(1000000 * 10^18);
    totalSpentPerDay[Mask(120, 0, 'executionMaxPerTx')][Mask(16, 120, Mask(16, 120, 'executionMaxPerTx') >> 120, 0) >> 120] = 100000 * 10^18
    stor4['isUpgradedToV220'] = 1
}

function withinExecutionLimit(uint256 arg1) {
    mem[211] = block.timestamp / 24 * 3600 % 281474976710656, Mask(104, 152, 'totalExecutedPerDay') >> 152 or Mask(104, 152, mem[211])
    require totalSpentPerDay['totalExecutedPerDay'][Mask(104, 152, block.timestamp / 24 * 3600) >> 152][mem[211 len 19]] + arg1 >= totalSpentPerDay['totalExecutedPerDay'][Mask(104, 152, block.timestamp / 24 * 3600) >> 152][mem[211 len 19]]
    if totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104] < totalSpentPerDay['totalExecutedPerDay'][Mask(104, 152, block.timestamp / 24 * 3600) >> 152][mem[211 len 19]] + arg1:
        return totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104] >= totalSpentPerDay['totalExecutedPerDay'][Mask(104, 152, block.timestamp / 24 * 3600) >> 152][mem[211 len 19]] + arg1
    return arg1 <= totalSpentPerDay[Mask(120, 0, 'executionMaxPerTx')][Mask(16, 120, Mask(16, 120, 'executionMaxPerTx') >> 120, 0) >> 120]
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8) {
    require not stor4[Mask(104, 48, 'isInitialized') >> 48]
    require arg1
    require ext_code.size(arg1) > 0
    require arg3
    require arg4 > 0
    require arg7 < arg6
    require arg8
    erc20token[Mask(120, 0, 'validatorContract')][Mask(16, 120, Mask(16, 120, 'validatorContract') >> 120, 0) >> 120] = arg1
    require arg2
    require ext_code.size(arg2) > 0
    erc20token[Mask(80, 96, 'erc20token') >> 96] = arg2
    totalSpentPerDay[Mask(120, 16, 'deployedAtBlock') >> 16] = block.number
    totalSpentPerDay['requiredBlockConfirmations' % 281474976710656][Mask(160, 48, Mask(160, 48, 'requiredBlockConfirmations') >> 48, 0) >> 48] = arg3
    totalSpentPerDay[Mask(64, 128, 'gasPrice') >> 128] = arg4
    totalSpentPerDay[Mask(64, 128, 'maxPerTx') >> 128] = arg5
    totalSpentPerDay[Mask(104, 0, 'executionDailyLimit')][Mask(48, 104, Mask(48, 104, 'executionDailyLimit') >> 104, 0) >> 104] = arg6
    totalSpentPerDay[Mask(120, 0, 'executionMaxPerTx')][Mask(16, 120, Mask(16, 120, 'executionMaxPerTx') >> 120, 0) >> 120] = arg7
    emit OwnershipTransferred(erc20token[Mask(40, 176, 'owner') >> 176], address(arg8));
    erc20token[Mask(40, 176, 'owner') >> 176] = arg8
    stor4[Mask(104, 48, 'isInitialized') >> 48] = 1
    return bool(stor4[Mask(104, 48, 'isInitialized') >> 48])
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 != erc20token[Mask(80, 96, 'erc20token') >> 96]
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == address(ext_call.return_data[0])
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}



}
