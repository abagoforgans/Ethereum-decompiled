contract main {




// =====================  Runtime code  =====================


#
#  - executeSignatures(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, bytes arg4)
#  - totalExecutedPerDay(uint256 arg1)
#  - withinExecutionLimit(uint256 arg1)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = Mask(32, 224, sha3(Mask(120, 16, 'erc-to-erc-core') >> 16))

const getBridgeInterfacesVersion = 2, 2, 0


mapping of uint256 totalSpentPerDay;
mapping of address erc20token;
mapping of uint8 stor4;

function erc20token() {
    return erc20token[Mask(80, 0, 'erc20token', 0)]
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][arg1])
}

function totalSpentPerDay(uint256 arg1) {
    return totalSpentPerDay['totalSpentPerDay'][uint128(arg1)][uint128(arg1)]
}

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function requiredBlockConfirmations() {
    return totalSpentPerDay[Mask(208, 0, 'requiredBlockConfirmations', 0)]
}

function executionDailyLimit() {
    return totalSpentPerDay['executionDailyLimit']
}

function dailyLimit() {
    return totalSpentPerDay['dailyLimit']
}

function executionMaxPerTx() {
    return totalSpentPerDay['executionMaxPerTx']
}

function owner() {
    return erc20token['owner']
}

function validatorContract() {
    return erc20token['validatorContract']
}

function deployedAtBlock() {
    return totalSpentPerDay['deployedAtBlock']
}

function minPerTx() {
    return totalSpentPerDay['minPerTx']
}

function maxPerTx() {
    return totalSpentPerDay['maxPerTx']
}

function gasPrice() {
    return totalSpentPerDay['gasPrice']
}

function _fallback() payable {
    revert
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == erc20token['owner']
    require arg1 < totalSpentPerDay['dailyLimit']
    totalSpentPerDay['maxPerTx'] = arg1
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == erc20token['owner']
    totalSpentPerDay[Mask(80, 0, 'dailyLimit', 0)] = arg1
    emit DailyLimitChanged(arg1);
}

function setGasPrice(uint256 arg1) {
    require msg.sender == erc20token['owner']
    require arg1 > 0
    totalSpentPerDay[uint64('gasPrice', 0)] = arg1
    emit GasPriceChanged(arg1);
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == erc20token['owner']
    require arg1 < totalSpentPerDay['executionDailyLimit']
    totalSpentPerDay['executionMaxPerTx'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == erc20token['owner']
    require arg1
    emit OwnershipTransferred(erc20token['owner'], address(arg1));
    erc20token['owner'] = arg1
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == erc20token['owner']
    totalSpentPerDay[Mask(152, 0, 'executionDailyLimit', 0)] = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == erc20token['owner']
    require arg1 < totalSpentPerDay['dailyLimit']
    require arg1 < totalSpentPerDay['maxPerTx']
    totalSpentPerDay[uint64('minPerTx', 0)] = arg1
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == erc20token['owner']
    require arg1 > 0
    totalSpentPerDay[Mask(208, 0, 'requiredBlockConfirmations', 0)] = arg1
    emit RequiredBlockConfirmationChanged(arg1);
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

function requiredSignatures() {
    require ext_code.size(erc20token['validatorContract'])
    call erc20token['validatorContract'].0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withinLimit(uint256 arg1) {
    require arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if totalSpentPerDay['dailyLimit'] < arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        return totalSpentPerDay['dailyLimit'] >= arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if arg1 > totalSpentPerDay['maxPerTx']:
        return arg1 <= totalSpentPerDay['maxPerTx']
    return arg1 >= totalSpentPerDay['minPerTx']
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8) {
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require arg1
    require ext_code.size(arg1) > 0
    require arg3
    require arg4 > 0
    require arg7 < arg6
    require arg8
    erc20token[Mask(136, 0, 'validatorContract', 0)] = arg1
    require arg2
    require ext_code.size(arg2) > 0
    erc20token[Mask(80, 0, 'erc20token', 0)] = arg2
    totalSpentPerDay[Mask(120, 0, 'deployedAtBlock', 0)] = block.number
    totalSpentPerDay[Mask(208, 0, 'requiredBlockConfirmations', 0)] = arg3
    totalSpentPerDay[uint64('gasPrice', 0)] = arg4
    totalSpentPerDay[uint64('maxPerTx', 0)] = arg5
    totalSpentPerDay[Mask(152, 0, 'executionDailyLimit', 0)] = arg6
    totalSpentPerDay[Mask(136, 0, 'executionMaxPerTx', 0)] = arg7
    emit OwnershipTransferred(erc20token['owner'], arg8);
    erc20token['owner'] = arg8
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require erc20token[Mask(80, 0, 'erc20token', 0)] != arg1
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
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
