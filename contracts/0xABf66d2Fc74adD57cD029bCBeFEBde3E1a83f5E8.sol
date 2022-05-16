contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
array of uint256 stor5;
array of uint256 stor6;
address stor7;
array of address stor9;
mapping of struct stor11;
uint8 stor12; offset 96
uint32 stor12;
uint32 stor12; offset 32
uint128 stor12;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '0.9' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 6
    stor6.length.field_8 = 'bancor' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    Mask(96, 0, stor12.field_0) = 0
    uint8(stor12.field_96) = 1
    require not msg.value
    stor0 = msg.sender
    require code.data[14356 len 20]
    stor2 = code.data[14356 len 20]
    stor3 = msg.sender
    require code.data[14388 len 20]
    require code.data[14436 len 4] >= 0
    require code.data[14436 len 4] <= 10^6
    stor7 = code.data[14388 len 20]
    require ext_code.size(address(code.data[14376 len 32]))
    call address(code.data[14376 len 32]).getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'ContractFeatures'
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).enableFeatures(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args 1, 1
        require ext_call.success
    uint32(stor12.field_32) = uint32(code.data[14408 len 32])
    if address(code.data[14440 len 32]):
        require stor0 == msg.sender
        require ext_code.size(stor2)
        call stor2.0x8da5cb5b with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[12 len 20] != this.address
        require address(code.data[14440 len 32])
        require address(code.data[14440 len 32]) != this.address
        require uint32(code.data[14472 len 32]) > 0
        require uint32(code.data[14472 len 32]) <= 10^6
        require stor2 != address(code.data[14440 len 32])
        require not stor11[address(code.data[14440 len 32])].field_304
        require uint32(code.data[14472 len 32] + uint32(stor12.field_0)) <= 10^6
        stor11[address(code.data[14440 len 32])].field_0 = 0
        stor11[address(code.data[14440 len 32])].field_256 = uint32(code.data[14472 len 32])
        stor11[address(code.data[14440 len 32])].field_288 = 0
        stor11[address(code.data[14440 len 32])].field_296 = 1
        stor11[address(code.data[14440 len 32])].field_304 = 1
        stor11[address(code.data[14440 len 32])].field_312 = 0
        stor11[address(code.data[14440 len 32])].field_512 = 0
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = address(code.data[14440 len 32])
        uint32(stor12.field_0) = uint32(uint32(stor12.field_0) + code.data[14472 len 32])
    return code.data[1624 len 12720]
}



// =====================  Runtime code  =====================


#
#  - change(address arg1, address arg2, uint256 arg3, uint256 arg4)
#
const BANCOR_CONVERTER_UPGRADER = 'BancorConverterUpgrader'

const BNT_TOKEN = 'BNTToken'

const BANCOR_CONVERTER_FACTORY = 'BancorConverterFactory'

const BANCOR_FORMULA = 'BancorFormula'

const CONTRACT_FEATURES = 'ContractFeatures'

const BANCOR_NETWORK = 'BancorNetwork'

const BANCOR_GAS_PRICE_LIMIT = 'BancorGasPriceLimit'

const CONVERTER_CONVERSION_WHITELIST = 1


address owner;
address newOwner;
address tokenAddress;
address managerAddress;
address newManagerAddress;
array of uint256 version;
array of uint256 converterType;
address registryAddress;
address conversionWhitelistAddress;
array of address connectorTokens;
array of struct quickBuyPath;
mapping of struct connectors;
uint8 stor12; offset 96
uint32 stor12;
uint32 maxConversionFee; offset 32
uint32 conversionFee; offset 64
address stor12; offset 96
array of struct stor13;

function connectors(address arg1) {
    return connectors[arg1].field_0, 
           connectors[arg1].field_256,
           bool(connectors[arg1].field_288),
           bool(connectors[arg1].field_296),
           bool(connectors[arg1].field_304)
}

function connectorTokens(uint256 arg1) {
    require arg1 < connectorTokens.length
    return address(connectorTokens[arg1])
}

function converterType() {
    return converterType[0 len converterType.length]
}

function newManager() {
    return newManagerAddress
}

function manager() {
    return managerAddress
}

function version() {
    return version[0 len version.length]
}

function conversionFee() {
    return conversionFee
}

function connectorTokenCount() {
    return uint16(connectorTokens.length)
}

function registry() {
    return registryAddress
}

function owner() {
    return owner
}

function getQuickBuyPathLength() {
    return quickBuyPath.length
}

function maxConversionFee() {
    return maxConversionFee
}

function conversionsEnabled() {
    return bool(uint8(stor12.field_96))
}

function conversionWhitelist() {
    return conversionWhitelistAddress
}

function newOwner() {
    return newOwner
}

function quickBuyPath(uint256 arg1) {
    require arg1 < quickBuyPath.length
    return quickBuyPath[arg1].field_0
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setRegistry(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    registryAddress = arg1
}

function setConversionWhitelist(address arg1) {
    require owner == msg.sender
    require arg1 != this.address
    conversionWhitelistAddress = arg1
}

function disableConversions(bool arg1) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    address(stor12.field_96) = address(not arg1)
}

function transferManagement(address arg1) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require managerAddress != arg1
    newManagerAddress = arg1
}

function acceptManagement() {
    require newManagerAddress == msg.sender
    emit ManagerUpdate(managerAddress, newManagerAddress);
    managerAddress = newManagerAddress
    newManagerAddress = 0
}

function acceptTokenOwnership() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining wei
    require ext_call.success
}

function disableConnectorPurchases(address arg1, bool arg2) {
    require owner == msg.sender
    require connectors[address(arg1)].field_304
    connectors[address(arg1)].field_296 = Mask(216, 0, not arg2)
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
}

function disableTokenTransfers(bool arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.disableTransfers(bool arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
}

function setConversionFee(uint32 arg1) {
    if owner != msg.sender:
        require managerAddress == msg.sender
    require arg1 >= 0
    require arg1 <= maxConversionFee
    emit ConversionFeeUpdate(uint32(stor12.field_0), arg1);
    conversionFee = arg1
}

function clearQuickBuyPath() {
    require owner == msg.sender
    quickBuyPath.length = 0
    if not quickBuyPath.length <= 0:
        idx = 0
        while quickBuyPath.length > idx:
            quickBuyPath[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function withdrawFromToken(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5e35359e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function getConnectorBalance(address arg1) {
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        return connectors[address(arg1)].field_0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function getFinalAmount(uint256 arg1, uint8 arg2) {
    if not arg1:
        if uint64(10^6^arg2):
            return (uint64((-conversionFee + 10^6)^arg2) * arg1 / uint64(10^6^arg2))
    else:
        if arg1:
            if uint64((-conversionFee + 10^6)^arg2) * arg1 / arg1 == uint64((-conversionFee + 10^6)^arg2):
                if uint64(10^6^arg2):
                    return (uint64((-conversionFee + 10^6)^arg2) * arg1 / uint64(10^6^arg2))
    revert
}

function updateConnector(address arg1, uint32 arg2, bool arg3, uint256 arg4) {
    require owner == msg.sender
    require connectors[address(arg1)].field_304
    require arg2 > 0
    require arg2 <= 10^6
    require uint32(arg2 + uint32(stor12.field_0) - connectors[address(arg1)].field_256) <= 10^6
    uint32(stor12.field_0) = uint32(arg2 + uint32(stor12.field_0) - connectors[address(arg1)].field_256)
    connectors[address(arg1)].field_256 = arg2
    connectors[address(arg1)].field_288 = Mask(224, 0, arg3)
    connectors[address(arg1)].field_0 = arg4
}

function setQuickBuyPath(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    quickBuyPath.length = arg1.length
    if not arg1.length:
        idx = 0
        while quickBuyPath.length > idx:
            quickBuyPath[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            quickBuyPath[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while quickBuyPath.length > idx:
            quickBuyPath[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function addConnector(address arg1, uint32 arg2, bool arg3) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[12 len 20] != this.address
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require arg2 <= 10^6
    require tokenAddress != arg1
    require not connectors[address(arg1)].field_304
    require uint32(arg2 + uint32(stor12.field_0)) <= 10^6
    connectors[address(arg1)].field_0 = 0
    connectors[address(arg1)].field_256 = arg2
    connectors[address(arg1)].field_288 = uint8(arg3)
    connectors[address(arg1)].field_296 = 1
    connectors[address(arg1)].field_304 = 1
    connectors[address(arg1)].field_312 = Mask(200, 24, arg3) >> 24
    connectors[address(arg1)].field_512 = 0
    connectorTokens.length++
    if not connectorTokens.length <= connectorTokens.length + 1:
        idx = connectorTokens.length + 1
        while connectorTokens.length > idx:
            uint256(connectorTokens[idx]) = 0
            idx = idx + 1
            continue 
    address(connectorTokens[connectorTokens.length]) = arg1
    uint32(stor12.field_0) = uint32(uint32(stor12.field_0) + arg2)
}

function quickConvert(address[] arg1, uint256 arg2, uint256 arg3) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    require ext_code.size(registryAddress)
    call registryAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorNetwork'
    require ext_call.success
    if not msg.value:
        if tokenAddress != mem[140 len 20]:
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), arg2
            require ext_call.success
            require ext_call.return_data[0]
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.destroy(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2
            require ext_call.success
    mem[(32 * arg1.length) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
       value msg.value wei
         gas gas_remaining wei
        args 256, arg2, arg3, msg.sender, 0, 0, 0, 0, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 420 len (32 * arg1.length) - floor32(arg1.length)]
    require ext_call.success
    return ext_call.return_data[0]
}

function quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length > 2
    require arg1.length <= 21
    require 1 == bool(arg1.length)
    require 0 < arg1.length
    require ext_code.size(registryAddress)
    call registryAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorNetwork'
    require ext_call.success
    if not msg.value:
        if tokenAddress != mem[140 len 20]:
            require ext_code.size(mem[140 len 20])
            call mem[140 len 20].0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(ext_call.return_data[0]), arg2
            require ext_call.success
            require ext_call.return_data[0]
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.destroy(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg2
            require ext_call.success
    mem[(32 * arg1.length) + 420 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 420 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3, msg.sender, arg4, arg5 << 248, arg6, arg7
    require ext_call.success
    return ext_call.return_data[0]
}

function getSaleReturn(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require connectors[address(arg1)].field_304
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorFormula'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg2
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorFormula'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg1)].field_256, arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
    require ext_call.return_data[0]
    require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1)
    return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
}

function getPurchaseReturn(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require connectors[address(arg1)].field_304
    require connectors[address(arg1)].field_296
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorFormula'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg2
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorFormula'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg1)].field_256, arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
    require ext_call.return_data[0]
    require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1)
    return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
}

function getCrossConnectorReturn(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require connectors[address(arg1)].field_304
    require connectors[address(arg2)].field_304
    require connectors[arg2].field_296
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12)
    require ext_call.return_data[0]
    require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^2)
    return (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12)
}

function _fallback() payable {
    if not quickBuyPath.length:
        require quickBuyPath.length > 2
        require quickBuyPath.length <= 21
        require 1 == bool(quickBuyPath.length)
        require quickBuyPath.length > 2
        require quickBuyPath.length <= 21
        require 1 == bool(quickBuyPath.length)
        require 0 < quickBuyPath.length
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorNetwork'
        require ext_call.success
        if not msg.value:
            if tokenAddress != mem[140 len 20]:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), msg.value
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.destroy(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value
                require ext_call.success
        mem[(32 * quickBuyPath.length) + 420 len floor32(quickBuyPath.length)] = mem[128 len floor32(quickBuyPath.length)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
           value msg.value wei
             gas gas_remaining wei
            args 256, msg.value, 1, msg.sender, 0, 0, 0, 0, quickBuyPath.length, mem[128 len floor32(quickBuyPath.length)], mem[(32 * quickBuyPath.length) + floor32(quickBuyPath.length) + 420 len (32 * quickBuyPath.length) - floor32(quickBuyPath.length)]
    else:
        mem[128] = address(quickBuyPath.field_0)
        idx = 128
        s = 0
        while (32 * quickBuyPath.length) + 96 > idx:
            mem[idx + 32] = quickBuyPath[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require quickBuyPath.length > 2
        require quickBuyPath.length <= 21
        require 1 == bool(quickBuyPath.length)
        require quickBuyPath.length > 2
        require quickBuyPath.length <= 21
        require 1 == bool(quickBuyPath.length)
        require 0 < quickBuyPath.length
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorNetwork'
        require ext_call.success
        if msg.value:
            mem[(32 * quickBuyPath.length) + 420 len floor32(quickBuyPath.length)] = mem[128 len floor32(quickBuyPath.length)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, uint32('BancorNetwork'), msg.value, 1, msg.sender, 0, 0, 0, 0, quickBuyPath.length, mem[128 len floor32(quickBuyPath.length)], mem[(32 * quickBuyPath.length) + floor32(quickBuyPath.length) + 420 len (32 * quickBuyPath.length) - floor32(quickBuyPath.length)]
        else:
            if tokenAddress != mem[140 len 20]:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), msg.value
                require ext_call.success
                require ext_call.return_data[0]
                mem[(32 * quickBuyPath.length) + 420 len floor32(quickBuyPath.length)] = mem[128 len floor32(quickBuyPath.length)]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), msg.value, 1, msg.sender, 0, 0, 0, 0, quickBuyPath.length, mem[128 len floor32(quickBuyPath.length)], mem[(32 * quickBuyPath.length) + floor32(quickBuyPath.length) + 420 len (32 * quickBuyPath.length) - floor32(quickBuyPath.length)]
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.destroy(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, msg.value
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.value
                require ext_call.success
                mem[(32 * quickBuyPath.length) + 420 len floor32(quickBuyPath.length)] = mem[128 len floor32(quickBuyPath.length)]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 0, msg.value, 1, msg.sender, 0, 0, 0, 0, quickBuyPath.length, mem[128 len floor32(quickBuyPath.length)], mem[(32 * quickBuyPath.length) + floor32(quickBuyPath.length) + 420 len (32 * quickBuyPath.length) - floor32(quickBuyPath.length)]
    require ext_call.success
}

function convert(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    mem[96] = arg1
    mem[128] = tokenAddress
    mem[160] = arg2
    stor13.length = 3
    s = 0
    idx = 96
    while 192 > idx:
        stor13[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor13.length > idx:
        stor13[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not stor13.length:
        require stor13.length > 2
        require stor13.length <= 21
        require 1 == bool(stor13.length)
        require stor13.length > 2
        require stor13.length <= 21
        require 1 == bool(stor13.length)
        require 0 < stor13.length
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorNetwork'
        require ext_call.success
        if not msg.value:
            if tokenAddress != mem[236 len 20]:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg3
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.destroy(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg3
                require ext_call.success
        mem[(32 * stor13.length) + 516 len floor32(stor13.length)] = mem[224 len floor32(stor13.length)]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
           value msg.value wei
             gas gas_remaining wei
            args 256, arg3, arg4, msg.sender, 0, 0, 0, 0, stor13.length, mem[224 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 516 len (32 * stor13.length) - floor32(stor13.length)]
    else:
        mem[224] = address(stor13.field_0)
        idx = 224
        s = 0
        while (32 * stor13.length) + 192 > idx:
            mem[idx + 32] = stor13[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require stor13.length > 2
        require stor13.length <= 21
        require 1 == bool(stor13.length)
        require stor13.length > 2
        require stor13.length <= 21
        require 1 == bool(stor13.length)
        require 0 < stor13.length
        require ext_code.size(registryAddress)
        call registryAddress.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args 'BancorNetwork'
        require ext_call.success
        if msg.value:
            mem[(32 * stor13.length) + 516 len floor32(stor13.length)] = mem[224 len floor32(stor13.length)]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
               value msg.value wei
                 gas gas_remaining wei
                args 0, uint32('BancorNetwork'), arg3, arg4, msg.sender, 0, 0, 0, 0, stor13.length, mem[224 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 516 len (32 * stor13.length) - floor32(stor13.length)]
        else:
            if tokenAddress != mem[236 len 20]:
                require ext_code.size(mem[236 len 20])
                call mem[236 len 20].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg3
                require ext_call.success
                require ext_call.return_data[0]
                mem[(32 * stor13.length) + 516 len floor32(stor13.length)] = mem[224 len floor32(stor13.length)]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg3, arg4, msg.sender, 0, 0, 0, 0, stor13.length, mem[224 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 516 len (32 * stor13.length) - floor32(stor13.length)]
            else:
                require ext_code.size(tokenAddress)
                call tokenAddress.destroy(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg3
                require ext_call.success
                mem[(32 * stor13.length) + 516 len floor32(stor13.length)] = mem[224 len floor32(stor13.length)]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).convertForPrioritized2(address[] arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args 0, 0, arg3, arg4, msg.sender, 0, 0, 0, 0, stor13.length, mem[224 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 516 len (32 * stor13.length) - floor32(stor13.length)]
    require ext_call.success
    return ext_call.return_data[0]
}

function getReturn(address arg1, address arg2, uint256 arg3) {
    require arg2 != arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    if tokenAddress == arg2:
        if ext_call.return_data[12 len 20] == this.address:
            require connectors[address(arg1)].field_304
            require connectors[address(arg1)].field_296
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            require ext_call.success
            require connectors[address(arg1)].field_304
            if connectors[address(arg1)].field_288:
                require ext_code.size(registryAddress)
                call registryAddress.getAddress(bytes32 arg1) with:
                     gas gas_remaining wei
                    args 'BancorFormula'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg3
            else:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                require ext_call.success
                require ext_code.size(registryAddress)
                call registryAddress.getAddress(bytes32 arg1) with:
                     gas gas_remaining wei
                    args 'BancorFormula'
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg1)].field_256, arg3
            require ext_call.success
            if not ext_call.return_data[0]:
                return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
            if ext_call.return_data[0]:
                if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1):
                    return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
    else:
        if tokenAddress == arg1:
            if ext_call.return_data[12 len 20] == this.address:
                require connectors[address(arg2)].field_304
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining wei
                require ext_call.success
                require connectors[address(arg2)].field_304
                if connectors[address(arg2)].field_288:
                    require ext_code.size(registryAddress)
                    call registryAddress.getAddress(bytes32 arg1) with:
                         gas gas_remaining wei
                        args 'BancorFormula'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], connectors[address(arg2)].field_0, connectors[address(arg2)].field_256, arg3
                else:
                    require ext_code.size(arg2)
                    call arg2.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    require ext_call.success
                    require ext_code.size(registryAddress)
                    call registryAddress.getAddress(bytes32 arg1) with:
                         gas gas_remaining wei
                        args 'BancorFormula'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg2)].field_256, arg3
                require ext_call.success
                if not ext_call.return_data[0]:
                    return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
                if ext_call.return_data[0]:
                    if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1):
                        return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
        else:
            if ext_call.return_data[12 len 20] == this.address:
                require connectors[address(arg1)].field_304
                require connectors[address(arg2)].field_304
                require connectors[arg2].field_296
                require connectors[address(arg1)].field_304
                if connectors[address(arg1)].field_288:
                    require connectors[address(arg2)].field_304
                    if connectors[address(arg2)].field_288:
                        require ext_code.size(registryAddress)
                        call registryAddress.getAddress(bytes32 arg1) with:
                             gas gas_remaining wei
                            args 'BancorFormula'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
                    else:
                        require ext_code.size(arg2)
                        call arg2.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(registryAddress)
                        call registryAddress.getAddress(bytes32 arg1) with:
                             gas gas_remaining wei
                            args 'BancorFormula'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
                else:
                    require ext_code.size(arg1)
                    call arg1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    require ext_call.success
                    require connectors[address(arg2)].field_304
                    if connectors[address(arg2)].field_288:
                        require ext_code.size(registryAddress)
                        call registryAddress.getAddress(bytes32 arg1) with:
                             gas gas_remaining wei
                            args 'BancorFormula'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
                    else:
                        require ext_code.size(arg2)
                        call arg2.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(registryAddress)
                        call registryAddress.getAddress(bytes32 arg1) with:
                             gas gas_remaining wei
                            args 'BancorFormula'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
                require ext_call.success
                if not ext_call.return_data[0]:
                    return (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12)
                if ext_call.return_data[0]:
                    if uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^2):
                        return (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12)
    revert
}

function convertInternal(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require ext_code.size(registryAddress)
    call registryAddress.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args 'BancorNetwork'
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require uint8(stor12.field_96)
    require arg4 > 0
    require arg2 != arg1
    require ext_code.size(tokenAddress)
    if tokenAddress == arg2:
        call tokenAddress.0x8da5cb5b with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require connectors[address(arg1)].field_304
        require connectors[address(arg1)].field_296
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        require ext_call.success
        require connectors[address(arg1)].field_304
        if connectors[address(arg1)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg3
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg1)].field_256, arg3
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1)
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= arg4
        if connectors[address(arg1)].field_288:
            require arg3 + connectors[address(arg1)].field_0 >= connectors[address(arg1)].field_0
            connectors[address(arg1)].field_0 += arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.issue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
        require ext_call.success
        if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6:
            require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
            require uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 == uint64((-conversionFee + 10^6)^1)
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6
        require (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6) - (uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6) <= 0x8000000000000000000000000000000000000000000000000000000000000000
        emit Conversion(arg3, uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6, (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6) - (uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6), arg1, tokenAddress, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        require ext_call.success
        require connectors[address(arg1)].field_304
        if connectors[address(arg1)].field_288:
            emit PriceDataUpdate(ext_call.return_data[0], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg1);
        else:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            emit PriceDataUpdate(ext_call.return_data[0], ext_call.return_data[0], connectors[address(arg1)].field_256, arg1);
        return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
    if tokenAddress == arg1:
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x8da5cb5b with:
             gas gas_remaining wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require connectors[address(arg2)].field_304
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        require ext_call.success
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg2)].field_0, connectors[address(arg2)].field_256, arg3
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateSaleReturn(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], connectors[address(arg2)].field_256, arg3
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^1)
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= arg4
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        require ext_call.success
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= connectors[address(arg2)].field_0:
                require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 == connectors[address(arg2)].field_0
                require arg3 == ext_call.return_data[0]
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= ext_call.return_data[0]:
                require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 == ext_call.return_data[0]
                require arg3 == ext_call.return_data[0]
        if connectors[address(arg2)].field_288:
            require connectors[address(arg2)].field_0 >= uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
            connectors[address(arg2)].field_0 -= uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
        require ext_code.size(tokenAddress)
        call tokenAddress.destroy(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg3
        require ext_call.success
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
        require ext_call.success
        require ext_call.return_data[0]
        if uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6:
            require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6
            require uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 == uint64((-conversionFee + 10^6)^1)
        require uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 >= uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6
        require (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6) - (uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6) <= 0x8000000000000000000000000000000000000000000000000000000000000000
        emit Conversion(arg3, uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6, (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6) - (uint64((-conversionFee + 10^6)^1) * uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6 / 10^6), tokenAddress, arg2, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        require ext_call.success
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            emit PriceDataUpdate(ext_call.return_data[0], connectors[address(arg2)].field_0, connectors[address(arg2)].field_256, arg2);
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            emit PriceDataUpdate(ext_call.return_data[0], ext_call.return_data[0], connectors[address(arg2)].field_256, arg2);
        return (uint64((-conversionFee + 10^6)^1) * ext_call.return_data[0] / 10^6)
    call tokenAddress.0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require connectors[address(arg1)].field_304
    require connectors[address(arg2)].field_304
    require connectors[arg2].field_296
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require connectors[address(arg2)].field_304
        if connectors[address(arg2)].field_288:
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, connectors[address(arg2)].field_0, connectors[arg2].field_256, arg3
        else:
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require ext_code.size(registryAddress)
            call registryAddress.getAddress(bytes32 arg1) with:
                 gas gas_remaining wei
                args 'BancorFormula'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).calculateCrossConnectorReturn(uint256 arg1, uint32 arg2, uint256 arg3, uint32 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[28 len 4], connectors[address(arg1)].field_256, ext_call.return_data[0], connectors[arg2].field_256, arg3
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / ext_call.return_data[0] == uint64((-conversionFee + 10^6)^2)
    require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12
    require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 >= arg4
    if connectors[address(arg1)].field_288:
        require arg3 + connectors[address(arg1)].field_0 >= connectors[address(arg1)].field_0
        connectors[address(arg1)].field_0 += arg3
    if connectors[address(arg2)].field_288:
        require connectors[address(arg2)].field_0 >= uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12
        connectors[address(arg2)].field_0 -= uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12
    require connectors[address(arg2)].field_304
    if connectors[address(arg2)].field_288:
        require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 < connectors[address(arg2)].field_0
    else:
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 < ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12
    require ext_call.success
    require ext_call.return_data[0]
    if uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12:
        require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12
        require uint64((-conversionFee + 10^6)^2) * uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 / uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 == uint64((-conversionFee + 10^6)^2)
    require uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 >= uint64((-conversionFee + 10^6)^2) * uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 / 10^12
    require (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12) - (uint64((-conversionFee + 10^6)^2) * uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 / 10^12) <= 0x8000000000000000000000000000000000000000000000000000000000000000
    emit Conversion(arg3, uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12, (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12) - (uint64((-conversionFee + 10^6)^2) * uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12 / 10^12), arg1, arg2, msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require connectors[address(arg1)].field_304
    if connectors[address(arg1)].field_288:
        emit PriceDataUpdate(ext_call.return_data[0], connectors[address(arg1)].field_0, connectors[address(arg1)].field_256, arg1);
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        emit PriceDataUpdate(ext_call.return_data[0], ext_call.return_data[0], connectors[address(arg1)].field_256, arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require connectors[address(arg2)].field_304
    if connectors[address(arg2)].field_288:
        emit PriceDataUpdate(ext_call.return_data[0], connectors[address(arg2)].field_0, connectors[address(arg2)].field_256, arg2);
    else:
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        emit PriceDataUpdate(ext_call.return_data[0], ext_call.return_data[0], connectors[address(arg2)].field_256, arg2);
    return (uint64((-conversionFee + 10^6)^2) * ext_call.return_data[0] / 10^12)
}



}
